//
//  TableViewCell.swift
//  BT_Pas
//
//  Created by Macbook on 08/01/2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    

   @IBOutlet weak var lblSTT: UILabel!
    
    @IBOutlet weak var lableNames: UILabel!
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configCell(image: UIImage, name: String, stt: String) {
        lableNames.text = name
        logoImageView.image = image
        lblSTT.text = stt
    }
    
}
