//
//  SliderView.swift
//  AMCUI
//
//  Created by Joao Marcus Dionisio Araujo on 03/06/24.
//

import Foundation
import UIKit

public class SliderView: CodedView {

    private lazy var slider: CustomSlider = {
        let slider = CustomSlider()
        slider.tintColor = .primaryColor
        slider.layer.borderColor = UIColor.black.cgColor
        slider.setThumbImage(UIImage(), for: .normal)
        slider.setMaximumTrackImage(UIImage(), for: .normal)
        slider.backgroundColor = .primaryColor.lighter(by: 35)
        slider.layer.cornerRadius = 8
        return slider
    }()

    override public func didMoveToSuperview() {
        addSubviews([slider])

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.slider.subviews.first?.subviews[1].layer.cornerRadius = 8
            self.slider.subviews.first?.subviews[1].layer.borderWidth = 1
        }
    }

    public override func layoutSubviews() {
        NSLayoutConstraint.activate([
            slider.topAnchor.constraint(equalTo: topAnchor),
            slider.bottomAnchor.constraint(equalTo: bottomAnchor),
            slider.leadingAnchor.constraint(equalTo: leadingAnchor),
            slider.trailingAnchor.constraint(equalTo: trailingAnchor),
            slider.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
}
