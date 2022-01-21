//
//  CurrencyCell.swift
//  CurrencyConvertor
//
//  Created by user209479 on 1/20/22.
//

import UIKit

class CurrencyCell: UITableViewCell {
    
 
    @IBOutlet weak var currencyLabel: UILabel!
    
    @IBOutlet weak var rateLabel: UILabel!
    
    var currencyRate : CurrencyRate? {
            didSet {
                
                guard let currencyRate = currencyRate else {
                    return
                }
                
                rateLabel?.text = "\(currencyRate.rate)"
                currencyLabel?.text = currencyRate.currencyIso
            }
        }
        
        override func awakeFromNib() {
            super.awakeFromNib()
            
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

            
        }

    }
