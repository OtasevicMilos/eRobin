//
//  Gradients.swift
//  eRobin
//
//  Created by Milos Otasevic on 26/10/2020.
//  Copyright © 2020 Milos Otasevic. All rights reserved.
//

import UIKit

extension UIView{
    
func setFlourishGradien(_ withOutRadius: Bool = false, withColors colors: [CGColor] = [ #colorLiteral(red: 0.5568627451, green: 0.9137254902, blue: 1, alpha: 1).cgColor, #colorLiteral(red: 0.7764705882, green: 0.4352941176, blue: 0.8941176471, alpha: 1).cgColor, #colorLiteral(red: 0.9607843137, green: 0.3098039216, blue: 0.3529411765, alpha: 1).cgColor],start startPoint: CGPoint = CGPoint(x: 0.0, y: 0.5),end endPoint: CGPoint = CGPoint(x: 1.0, y: 0.5)){
     let gradient = CAGradientLayer()
     gradient.colors = colors
     gradient.startPoint = startPoint
     gradient.endPoint = endPoint
     gradient.frame = self.bounds
     if !withOutRadius{
     gradient.cornerRadius = self.layer.cornerRadius
     }
     self.layer.insertSublayer(gradient, at: 0)
 }
    
    func setBackgroundGradient(){
        let gradient = CAGradientLayer()
        let startColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        let endColor = #colorLiteral(red: 0.8823529412, green: 0.8862745098, blue: 0.9098039216, alpha: 1).cgColor
        let gradientColors = [startColor, endColor]
        let startPoint = CGPoint(x: 0, y: 0)
        let endPoint = CGPoint(x: 1, y: 1)
        let gradientFrame = self.bounds
        
        gradient.colors = gradientColors
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        gradient.frame = gradientFrame
        
        self.layer.insertSublayer(gradient, at: 0)
    }

}
