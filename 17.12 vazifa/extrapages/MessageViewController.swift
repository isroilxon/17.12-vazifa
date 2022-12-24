//
//  MessageViewController.swift
//  17.12 vazifa
//
//  Created by mac on 24/12/22.
//

import UIKit

class MessageViewController: UIViewController {
    let img = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "comments"
        
        img.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(img)
        img.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        img.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        img.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        img.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        img.image = UIImage(named: "comment")

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
