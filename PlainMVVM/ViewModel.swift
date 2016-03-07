//
//  ViewModel.swift
//  PlainMVVM
//
//  Created by Diogo Tridapalli on 2/29/16.
//  Copyright © 2016 Diogo Tridapalli. All rights reserved.
//

import UIKit

public struct ViewModel {

    public let attributedLabel: NSAttributedString
    public let attributedButtonText: NSAttributedString
    public let backgroundColor: UIColor
    public let onTap: ((viewModel: ViewModel) -> Void)?

    public init(
        attributedLabel: NSAttributedString = NSAttributedString(string: "Label"),
        attributedButtonText: NSAttributedString = NSAttributedString(string: "Button"),
        backgroundColor: UIColor = .grayColor(),
        onTap: ((viewModel: ViewModel) -> Void)? = nil)
    {
        self.attributedLabel = attributedLabel
        self.attributedButtonText = attributedButtonText
        self.backgroundColor = backgroundColor
        self.onTap = onTap
    }
}
