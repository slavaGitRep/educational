//
//  GFItemInfoView.swift
//  GHFollowers
//
//  Created by viacheslav on 06.06.2023.
//

import UIKit

enum ItemInfoType {
    case repos, gists, followers, following
}

class GFItemInfoView: UIView {
    let symbolImageVIew = UIImageView()
    let titleLabel = GFTitleLabel(textAlingment: .left, fontSize: 14)
    let countLabel = GFTitleLabel(textAlingment: .center, fontSize: 14)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        addSubview(symbolImageVIew)
        addSubview(titleLabel)
        addSubview(countLabel)
        
        symbolImageVIew.translatesAutoresizingMaskIntoConstraints = false
        symbolImageVIew.contentMode = .scaleAspectFill
        symbolImageVIew.tintColor = .label
        
        NSLayoutConstraint.activate([
            symbolImageVIew.topAnchor.constraint(equalTo: self.topAnchor),
            symbolImageVIew.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            symbolImageVIew.widthAnchor.constraint(equalToConstant: 20),
            symbolImageVIew.heightAnchor.constraint(equalToConstant: 20),
            
            titleLabel.centerYAnchor.constraint(equalTo: symbolImageVIew.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: symbolImageVIew.trailingAnchor, constant: 12),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 18),
            
            countLabel.topAnchor.constraint(equalTo: symbolImageVIew.bottomAnchor, constant: 4),
            countLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            countLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            countLabel.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
    
    func set(itemInfoType: ItemInfoType, withCount count: Int) {
        switch itemInfoType {
            
        case.repos:
            symbolImageVIew.image = UIImage(systemName: SFSymbols.repos)
            titleLabel.text = "Public Repos"
            
        case.gists:
            symbolImageVIew.image = UIImage(systemName: SFSymbols.gists)
            titleLabel.text = "Public Gists"
            
        case .followers:
            symbolImageVIew.image = UIImage(systemName: SFSymbols.followers)
            titleLabel.text = "Followers"
            
        case .following:
            symbolImageVIew.image = UIImage(systemName: SFSymbols.following)
            titleLabel.text = "Following"
        }
        countLabel.text = String(count)
    }
    
}

