//
//  Extensions.swift
//  Netflix
//
//  Created by Aurelio Le Clarke on 14.03.2022.
//

import Foundation

extension String {
    
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
