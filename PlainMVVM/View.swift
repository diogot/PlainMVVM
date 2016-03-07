//
//  View.swift
//  PlainMVVM
//
//  Created by Diogo Tridapalli on 2/29/16.
//  Copyright © 2016 Diogo Tridapalli. All rights reserved.
//

import UIKit

public class View: UIView {

    public var viewModel: ViewModel = ViewModel() {
        didSet {
            updateView()
        }
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        updateView()
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let label: UILabel = UILabel()
    let button: UIButton = UIButton(type: .System)


    func setUp() {
        let contentView = self
        let label = self.label
        let button = self.button

        contentView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false


        label.leadingAnchor.constraintEqualToAnchor(contentView.leadingAnchor).active = true
        label.topAnchor.constraintEqualToAnchor(contentView.topAnchor).active = true
        label.trailingAnchor.constraintEqualToAnchor(contentView.trailingAnchor).active = true
        label.bottomAnchor.constraintEqualToAnchor(button.topAnchor).active = true

        button.leadingAnchor.constraintEqualToAnchor(contentView.leadingAnchor).active = true
        button.trailingAnchor.constraintEqualToAnchor(contentView.trailingAnchor).active = true
        button.bottomAnchor.constraintEqualToAnchor(contentView.bottomAnchor).active = true

        button.addTarget(self, action: "onTap", forControlEvents: .TouchUpInside)
    }


    func updateView() {
        label.attributedText = viewModel.attributedLabel
        button.setAttributedTitle(viewModel.attributedButtonText, forState: .Normal)
        backgroundColor = viewModel.backgroundColor
    }

    func onTap() {
        if let block = viewModel.onTap {
            block(viewModel: viewModel)
        }
    }
}
