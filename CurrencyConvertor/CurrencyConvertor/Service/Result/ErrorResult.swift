//
//  ErrorResult.swift
//  CurrencyConvertor
//
//  Created by user209479 on 1/20/22.
//

import Foundation

enum ErrorResult: Error {
    case network(string: String)
    case parser(string: String)
    case custom(string: String)
}
