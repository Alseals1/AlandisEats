//
//  StringExtensions.swift
//  Yummie
//
//  Created by Alandis Seals on 2/2/22.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
