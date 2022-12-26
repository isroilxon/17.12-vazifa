//
//  SendViewController.swift
//  17.12 vazifa
//
//  Created by mac on 25/12/22.
//

import UIKit

class SendViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    let tabbleView = UITableView()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SendTableViewCell
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Friends"
        view.backgroundColor = .white
        
        tabbleView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tabbleView)
        tabbleView.register(SendTableViewCell.self, forCellReuseIdentifier: "cell")
        tabbleView.dataSource = self
        tabbleView.delegate = self
        tabbleView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        tabbleView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tabbleView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tabbleView.heightAnchor.constraint(equalToConstant: 50).isActive = true

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
