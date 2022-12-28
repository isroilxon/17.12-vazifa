//
//  FirstViewController.swift
//  17.12 vazifa
//
//  Created by mac on 17/12/22.
//like: "heart", write: "message", send: "location", save: "bookmark",

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let img = UIImageView()
    let saveImg = UIImageView()
    var model = [
        Instagram(locate: "Kobe, Japan", post: "post1",  likes: "Liked: 83567", comment: "Do you ever see your closest friend, or the love of your life, post a stunning, jaw-dropping photo that makes your heart skip a beat, but you’re stumped about what to comment on those pictures?", like: false, save: false),
        Instagram(locate: "Lagos, Nigeria", post: "post2", likes: "Liked: 78986", comment: "Here are some good comments for Instagram pictures you can use the next time you see something nice on the platform.", like: true, save: false),
        Instagram(locate: "Sindhudurga", post: "post3", likes: "Liked: 87879", comment: "You will find some of the best comments for Instagram posts in the below list.", like: false, save: false)]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FirstTableViewCell
        cell.selectionStyle = .none
        cell.like.tag = indexPath.row
        cell.save.tag = indexPath.row
        cell.like.addTarget(self, action: #selector(likeButton(_:)), for: .touchUpInside)
        cell.save.addTarget(self, action: #selector(saveButton(_:)), for: .touchUpInside)
        cell.write.addTarget(self, action: #selector(messageButton), for: .touchUpInside)
        cell.send.addTarget(self, action: #selector(sendButton), for: .touchUpInside)
        
        cell.locate.text = model[indexPath.row].locate
        cell.post.image = UIImage(named: model[indexPath.row].post)
        cell.likes.text = model[indexPath.row].likes
        cell.comment.text = model[indexPath.row].comment
        cell.like.setImage(UIImage(systemName: model[indexPath.row].like ? "heart.fill" : "heart"), for: .normal)
        cell.save.setImage(UIImage(systemName: model[indexPath.row].save ? "bookmark.fill" : "bookmark"), for: .normal)
        
        
        return cell
    }
    let tablView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Instagram"
        view.backgroundColor = .white
        
        tablView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tablView)
        tablView.register(FirstTableViewCell.self, forCellReuseIdentifier: "cell")
        tablView.dataSource = self
        tablView.delegate = self
        tablView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tablView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tablView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tablView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        img.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(img)
        img.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        img.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        img.heightAnchor.constraint(equalToConstant: 100).isActive = true
        img.widthAnchor.constraint(equalToConstant: 100).isActive = true
        img.image = UIImage(systemName: "heart.fill")
        img.isHidden = true
        
        saveImg.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(saveImg)
        saveImg.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        saveImg.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        saveImg.heightAnchor.constraint(equalToConstant: 100).isActive = true
        saveImg.widthAnchor.constraint(equalToConstant: 100).isActive = true
        saveImg.image = UIImage(systemName: "bookmark.fill")
        saveImg.isHidden = true


        // Do any additional setup after loading the view.
    }
    
    @objc func likeButton(_ button:UIButton){
        img.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5){
            self.img.isHidden = true
        }
        model[button.tag].like.toggle()
        let cell = tablView.cellForRow(at: IndexPath(row: button.tag, section: 0)) as! FirstTableViewCell
        
        cell.like.setImage(UIImage(systemName: model[button.tag].like ? "heart.fill" : "heart"), for: .normal)
    }
    
    @objc func saveButton(_ button: UIButton){
        saveImg.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5){
            self.saveImg.isHidden = true
        }
        model[button.tag].save.toggle()
        let cell = tablView.cellForRow(at: IndexPath(row: button.tag, section: 0)) as! FirstTableViewCell
        cell.save.setImage(UIImage(systemName: model[button.tag].save ? "bookmark.fill" : "bookmark"), for: .normal)

    }
    
    @objc func messageButton(){
        let vc = MessageViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func sendButton(){
        let vc = SendViewController()
        present(vc, animated: true)    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
