//
//  StarView.swift
//  AMCUI
//
//  Created by Joao Marcus Dionisio Araujo on 03/06/24.
//

import Foundation
import Lottie
import UIKit

public protocol StarViewDelegate: AnyObject {
    func didTapped(index: Int)
}

public class StarView: CodedView {

    weak var delegate: StarViewDelegate?

    private var isSelected: Bool = false
    private var index: Int = 0

    lazy var star: LottieAnimationView = {
        let view = LottieAnimationView(name: "star", bundle: Bundle(for: StarRatingView.self))
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapped))
        view.addGestureRecognizer(gesture)
        return view
    }()

    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = 5
        return stackView
    }()

    @objc
    func toggle(_ isSelected: Bool) {
        if self.isSelected == isSelected {
            return
        }
        self.isSelected = isSelected
        DispatchQueue.main.asyncAfter(deadline: .now() + (Double(index) / 25.0)) { [weak self] in
            guard let self else { return }
            if isSelected {
                star.animationSpeed = 2
                star.play(fromFrame: 35, toFrame: star.animation?.endFrame ?? 0)
                return
            }
        }
        star.play(fromFrame: .zero, toFrame: .zero)
    }

    @objc
    func didTapped() {
        delegate?.didTapped(index: index)
    }

    func setIndex(to index: Int) {
        self.index = index
    }

    func getIndex() -> Int {
        return index
    }

    func setSize(size: CGSize) {
        NSLayoutConstraint.activate([
            star.heightAnchor.constraint(equalToConstant: size.height),
            star.widthAnchor.constraint(equalToConstant: size.width)
        ])
    }

    override public func didMoveToWindow() {
        addSubviews([star])
    }

    public override func layoutSubviews() {
        NSLayoutConstraint.activate([
            star.topAnchor.constraint(equalTo: topAnchor),
            star.leadingAnchor.constraint(equalTo: leadingAnchor),
            star.bottomAnchor.constraint(equalTo: bottomAnchor),
            star.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
