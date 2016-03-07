//
//  ViewController.swift
//  PlainMVVM
//
//  Created by Diogo Tridapalli on 2/29/16.
//  Copyright © 2016 Diogo Tridapalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let aView: View = View()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .whiteColor()
        view.addSubview(aView)
        aView.frame = CGRectMake(20, 40, 200, 60)

        let model = Model(name: "Jonh Appleseed", emoji: .👍)
        let viewModel = ViewModel(fromModel: model) { viewModel in
            print("tap")
        }

        aView.viewModel = viewModel
    }

}

