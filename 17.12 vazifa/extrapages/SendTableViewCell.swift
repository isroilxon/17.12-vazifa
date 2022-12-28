//
//  SendTableViewCell.swift
//  17.12 vazifa
//
//  Created by mac on 25/12/22.
//

import UIKit

class SendTableViewCell: UITableViewCell {
    let img = UIImageView()
    let label = UILabel()
    let imgCirc = UIImageView()
    let arr = ["Isroil", "James", "Bahtiyor", "anvar_001"]


    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(img)
        img.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        img.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        img.image = UIImage(named: "instagram")
        img.heightAnchor.constraint(equalToConstant: 30).isActive = true
        img.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: img.rightAnchor, constant: 10).isActive = true
        
        imgCirc.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(imgCirc)
        imgCirc.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        imgCirc.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        imgCirc.image = UIImage(systemName: "circle")
        imgCirc.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imgCirc.widthAnchor.constraint(equalToConstant: 30).isActive = true
        

    }

}
