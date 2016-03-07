//
//  Model.swift
//  PlainMVVM
//
//  Created by Diogo Tridapalli on 2/29/16.
//  Copyright © 2016 Diogo Tridapalli. All rights reserved.
//

import Foundation

public struct Model {

    public enum Emoji {
        case 👍, 👎, 👊
    }

    public let name: String
    public let emoji: Emoji

}
