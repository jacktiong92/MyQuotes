//
//  Extensions.swift
//  MyQuotes
//
//  Created by Techninier on 11/05/2019.
//  Copyright © 2019 byProgrammers. All rights reserved.
//

import Foundation

extension Array {
    func randomItem() -> Element? {
        if isEmpty { return nil }
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}
