//
//  ViewModel+Model.swift
//  PlainMVVM
//
//  Created by Diogo Tridapalli on 2/29/16.
//  Copyright © 2016 Diogo Tridapalli. All rights reserved.
//

import UIKit

public extension ViewModel {

    public init(fromModel model: Model, onTap: (viewModel: ViewModel)->Void) {

        let name: NSAttributedString =
        NSAttributedString(string: model.name,
            attributes: [NSForegroundColorAttributeName: UIColor.redColor()])

        let text: String = model.emoji.rawValue

        self.init(
            attributedLabel: NSAttributedString(string: text),
            attributedButtonText: name,
            onTap: onTap)
    }

}
