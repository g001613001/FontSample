//
//  ExtensionUILable.swift
//  FontSample
//
//  Created by 丁偉哲 on 2020/5/6.
//  Copyright © 2020 丁偉哲. All rights reserved.
//

import Foundation
import UIKit

extension UILabel{
    func setFontA(size: CGFloat){
        self.font = UIFont(name: .fontCopperplateBold, size: size)
    }
    
    func setFontB(size: CGFloat){
        self.font = UIFont(name: .fontAppleSDGothicNeoMedium, size: size)
    }
    
    func setFontC(size: CGFloat){
        self.font = UIFont(name: .fontGillSansLight, size: size)
    }
}
