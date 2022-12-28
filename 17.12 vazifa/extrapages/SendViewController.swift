//
//  SendViewController.swift
//  17.12 vazifa
//
//  Created by mac on 25/12/22.
//

import UIKit

class SendViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let searchImg = UIImageView()
    let label = UILabel()
    let personImg = UIImageView()
    let tabbleView = UITableView()
    let arr = ["Isroil", "James", "Bahtiyor", "anvar_001"]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SendTableViewCell
        
        cell.label.text = arr[indexPath.row % 4]

        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Friends"
        view.backgroundColor = .white
        
        searchImg.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(searchImg)
        searchImg.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        searchImg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        searchImg.heightAnchor.constraint(equalToConstant: 20).isActive = true
        searchImg.widthAnchor.constraint(equalToConstant: 20).isActive = true
        searchImg.image = UIImage(systemName: "magnifyingglass")
        
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        label.leftAnchor.constraint(equalTo: searchImg.rightAnchor, constant: 20).isActive = true
        label.font = .systemFont(ofSize: 15)
        label.text = "search"
        label.textColor = .gray
        
        personImg.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(personImg)
        personImg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        personImg.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        personImg.image = UIImage(systemName: "person.2")
        personImg.widthAnchor.constraint(equalToConstant: 20).isActive = true
        personImg.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        tabbleView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tabbleView)
        tabbleView.register(SendTableViewCell.self, forCellReuseIdentifier: "cell")
        tabbleView.dataSource = self
        tabbleView.delegate = self
        tabbleView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        tabbleView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tabbleView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tabbleView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

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
