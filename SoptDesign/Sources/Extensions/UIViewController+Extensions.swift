//
//  UIViewController+Extensions.swift
//  SoptDesign
//
//  Created by Junhyeon on 2019/11/17.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func setViewBorder(_ color: UIColor, _ width: CGFloat, _ radius: CGFloat){
                
        self.layer.borderWidth = CGFloat(width)
        self.layer.borderColor = color.cgColor
        self.layer.cornerRadius = radius

    }
    
}
