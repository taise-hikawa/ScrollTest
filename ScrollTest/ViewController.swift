//
//  ViewController.swift
//  ScrollTest
//
//  Created by Sakurako Shimbori on 2020/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        contentView.translatesAutoresizingMaskIntoConstraints = false
//        contentView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
//        contentView.heightAnchor.constraint(equalTo: self.view.heightAnchor,multiplier: 2).isActive = true
//        contentView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        contentView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    override func viewDidLayoutSubviews() {

//      scrollView.contentSize = contentView.frame.size
      scrollView.flashScrollIndicators()

    }


}

