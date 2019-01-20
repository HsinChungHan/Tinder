//
//  UpperView.swift
//  Tinder
//
//  Created by Chung Han Hsin on 2019/1/19.
//  Copyright © 2019 Chung Han Hsin. All rights reserved.
//

import UIKit

class UpperView: UIView {
    let stackView: CustomStackView
    
    init(subVies: [UIView]) {
        stackView = CustomStackView.init(subViews: subVies, axis: .horizontal, distribution: .fillEqually, spacing: 0)
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupViews(){
        addSubview(stackView)
        stackView.fullAnchor(superView: self)
    }
}
