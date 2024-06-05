//
//  CustomSlider.swift
//  AMCUI
//
//  Created by Joao Marcus Dionisio Araujo on 03/06/24.
//

import Foundation
class CustomSlider: UISlider {
    var trackHeight: CGFloat = 16

    override func trackRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(origin: bounds.origin, size: CGSize(width: bounds.width, height: trackHeight))
    }
}
