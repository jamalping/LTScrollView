//
//  UIView+Extension.swift
//  LTScrollView_Example
//
//  Created by Apple on 2019/4/22.
//  Copyright © 2019年 CocoaPods. All rights reserved.
//

import UIKit

extension UIView {
    /// 添加从左到右的渐变色
    ///
    /// - Parameters:
    ///   - startColor: 最左边的颜色
    ///   - endColor: 最右边的颜色
    ///   - radius: 圆角
    /// - Returns: 返回layer用来移除 可不接收返回值
    @discardableResult
    public func addGradientLayer(startColor:CGColor, endColor:CGColor, radius:CGFloat = 0) -> CAGradientLayer {
        
        let gradient:CAGradientLayer = CAGradientLayer.init()
        gradient.colors = [startColor, endColor]
        gradient.startPoint = CGPoint.init(x: 0, y: 0)
        gradient.endPoint = CGPoint.init(x: 1, y: 0)
        gradient.frame = self.bounds
        gradient.cornerRadius = radius
        self.layer.insertSublayer(gradient, at: 0)
        return gradient
    }
}
