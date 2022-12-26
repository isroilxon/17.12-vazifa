//
//  SendTableViewCell.swift
//  17.12 vazifa
//
//  Created by mac on 25/12/22.
//

import UIKit

class SendTableViewCell: UITableViewCell {
    let searchImg = UIImageView()
    let label = UILabel()
    let personImg = UIImageView()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        searchImg.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(searchImg)
        searchImg.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        searchImg.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        searchImg.heightAnchor.constraint(equalToConstant: 20).isActive = true
        searchImg.widthAnchor.constraint(equalToConstant: 20).isActive = true
        searchImg.image = UIImage(systemName: "magnifyingglass")
        
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: searchImg.rightAnchor, constant: 20).isActive = true
        label.font = .systemFont(ofSize: 15)
        label.text = "search"
        label.textColor = .gray
        
        personImg.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(personImg)
        personImg.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        personImg.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        personImg.image = UIImage(systemName: "person.2")
        personImg.widthAnchor.constraint(equalToConstant: 20).isActive = true
        personImg.heightAnchor.constraint(equalToConstant: 20).isActive = true
        

    }

}
