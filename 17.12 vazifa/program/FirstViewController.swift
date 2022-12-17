//
//  FirstViewController.swift
//  17.12 vazifa
//
//  Created by mac on 17/12/22.
//like: "heart", write: "message", send: "location", save: "bookmark",

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let model = [
        Instagram(locate: "Kobe, Japan", post: "post1",  likes: "Liked: 83567", comment: "Do you ever see your closest friend, or the love of your life, post a stunning, jaw-dropping photo that makes your heart skip a beat, but you’re stumped about what to comment on those pictures?"),
        Instagram(locate: "Lagos, Nigeria", post: "post2", likes: "Liked: 78986", comment: "Here are some good comments for Instagram pictures you can use the next time you see something nice on the platform."),
        Instagram(locate: "Sindhudurga", post: "post3", likes: "Liked: 87879", comment: "You will find some of the best comments for Instagram posts in the below list.")]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FirstTableViewCell
        cell.locate.text = model[indexPath.row].locate
        cell.post.image = UIImage(named: model[indexPath.row].post)
        cell.likes.text = model[indexPath.row].likes
        cell.comment.text = model[indexPath.row].comment
        
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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
