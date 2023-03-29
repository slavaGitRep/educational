//
//  GFBodyLabel.swift
//  GHFollowers
//
//  Created by viacheslav on 29.03.2023.
//

import UIKit

class GFBodyLabel: UILabel {
    override init(frame:CGRect) {
        super.init(frame:frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textAlingment: NSTextAlignment) {
        super.init(frame: .zero)
        self.textAlignment = textAlingment
        configure()
    }
    
    private func configure() {
        textColor = .secondaryLabel
        font = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.75
        lineBreakMode = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }
}
