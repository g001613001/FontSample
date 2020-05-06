//
//  ViewController.swift
//  FontSample
//
//  Created by 丁偉哲 on 2020/5/6.
//  Copyright © 2020 丁偉哲. All rights reserved.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    var labelA: UILabel!
    var labelB: UILabel!
    var labelC: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        findFontName()
        setLableUI()
    }

    private func findFontName(){
        for family: String in UIFont.familyNames {
            print("\(family)")
            for names: String in UIFont.fontNames(forFamilyName: family) {
                print("可以用的字體名稱 == \(names)")
            }
        }
    }
    
    private func setLableUI(){
        let labelA = UILabel()
        labelA.text = "AAAAAAAAAAAAA"
        labelA.setFontA(size: 40)
        view.addSubview(labelA)
        labelA.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
        self.labelA = labelA
        
        let labelB = UILabel()
        labelB.text = "AAAAAAAAAAAAA"
        labelB.setFontB(size: 40)
        view.addSubview(labelB)
        labelB.snp.makeConstraints { (make) in
            make.centerX.equalTo(labelA)
            make.top.equalTo(labelA).offset(30)
        }
        self.labelB = labelB
        
        let labelC = UILabel()
        labelC.text = "AAAAAAAAAAAAA"
        labelC.setFontC(size: 40)
        view.addSubview(labelC)
        labelC.snp.makeConstraints { (make) in
            make.centerX.equalTo(labelA)
            make.top.equalTo(labelB).offset(30)
        }
        self.labelC = labelC
    }
    
    
}

