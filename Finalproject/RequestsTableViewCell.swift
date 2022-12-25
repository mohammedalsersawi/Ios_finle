//
//  RequestsTableViewCell.swift
//  Finalproject
//
//  Created by Ismail on 16/12/2022.
//

import UIKit

class RequestsTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var adrees: UILabel!
    @IBOutlet weak var imageR: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        imageR.layer.cornerRadius = 20
      contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))

        // Initialization code
    }
    
    func setupCell(namet:String,pricet:String,addreest:String,image:UIImage){
        name.text = namet
        price.text = pricet
        adrees.text = addreest
        imageR.image = image
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
