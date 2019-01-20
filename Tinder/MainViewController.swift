//
//  MainViewController.swift
//  Tinder
//
//  Created by Chung Han Hsin on 2019/1/19.
//  Copyright © 2019 Chung Han Hsin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    let upperView: UpperView
    let redView = UIView()
    let yellowView = UIView()
    let stackView: CustomStackView
    
    init() {
       let upperSubViews = [UIColor.gray, UIColor.darkGray, UIColor.black].map { (color) -> UIView in
            let view = UIView()
            view.backgroundColor = color
            return view
        }
        upperView = UpperView.init(subVies: upperSubViews)
        stackView = CustomStackView.init(subViews: [upperView, redView, yellowView], axis: .vertical, distribution: nil, spacing: 0)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
    }
    
    fileprivate func setupViews(){
        redView.backgroundColor = .red
        yellowView.backgroundColor = .yellow
        view.addSubview(stackView)
        stackView.fullAnchor(superView: view)
        upperView.translatesAutoresizingMaskIntoConstraints = false
        upperView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        yellowView.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
}
