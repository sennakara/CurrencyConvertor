//
//  Result.swift
//  CurrencyConvertor
//
//  Created by user209479 on 1/20/22.
//

import Foundation

enum Result<T, E: Error> {
    case success(T)
    case failure(E)
}
