//
//  CalculatorViewModel.swift
//  CoffeeRatio
//
//  Created by JĒVONCHY on 12/16/22.
//

import Foundation

typealias Grams = Double

class CalculatorViewModel {
    static func calculateGramsOfWaterTimes(waterRatio: Grams, coffee: Grams) -> Grams {
      return waterRatio * coffee
    }
}
