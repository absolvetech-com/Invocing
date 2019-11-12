//
//  TaxesCell.swift
//  Invoicing
//
//  Created by MAC on 08/08/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class TaxesCell: UITableViewCell {

    @IBOutlet weak var Taxes_Title: UILabel!
    @IBOutlet weak var Taxes_txt: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        Taxes_Title.font = .TitleFont()
        Taxes_txt.font = .SubTitleFont()
        
        Taxes_Title.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).BlueColor(Alpha: 1)

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
