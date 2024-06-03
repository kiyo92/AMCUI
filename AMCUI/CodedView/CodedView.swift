//
//  CodedView.swift
//  AMCUI
//
//  Created by Joao Marcus Dionisio Araujo on 02/06/24.
//

import Foundation
import UIKit

public class CodedView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        didLoad()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        didLoad()
    }

    convenience init() {
        self.init(frame: CGRect.zero)
    }

    func didLoad() {
        //Place your initialization code here

        //I actually create & place constraints in here, instead of in
        //updateConstraints
    }

    public override func layoutSubviews() {
        super.layoutSubviews()

        //Custom manually positioning layout goes here (auto-layout pass has already run first pass)
    }
}

public extension UIView {
    func addSubviews(_ views: [UIView]) {
        for view in views {
            view.translatesAutoresizingMaskIntoConstraints = false
            addSubview(view)
        }
    }
}
