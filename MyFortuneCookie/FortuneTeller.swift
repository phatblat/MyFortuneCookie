//
//  FortuneTeller.swift
//  MyFortuneCookie
//
//  Created by Ben Chatelain on 7/27/17.
//  Copyright © 2017 Jack Chatelain. All rights reserved.
//

import Foundation

class FortuneTeller {
    private let fileName: NSString = "Fortunes.plist"
    private let fortuneList: [String]

    init() {
        let url = Bundle.main.url(forResource: fileName.deletingPathExtension, withExtension: fileName.pathExtension)!
        fortuneList = NSArray(contentsOf: url) as! [String]
        print(fortuneList)
    }

    func randomFortune() -> String {
        return fortuneList.first!
    }
}
