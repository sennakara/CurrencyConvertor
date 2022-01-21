//
//  Currency.swift
//  CurrencyConvertor
//
//  Created by user209479 on 1/20/22.
//

import Foundation

enum Currency : String {
    case EUR
    case GBP
    case USD
}

enum CurrencyLocale : String {
    case EUR = "fr_FR"
    case GBP = "en_UK"
}

struct CurrencyRate {
    
    let currencyIso : String
    let rate : Double
}
