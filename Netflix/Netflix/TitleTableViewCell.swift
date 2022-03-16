//
//  TitleTableViewCell.swift
//  Netflix
//
//  Created by Aurelio Le Clarke on 16.03.2022.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    
    static let identifier = "TitleTableViewCell"
    
    private let playTitleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let titlePosterImageView: UIImageView = {
        
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let titleLabel: UILabel = {
      let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier )
        contentView.addSubview(titleLabel)
        contentView.addSubview(titlePosterImageView)
        contentView.addSubview(playTitleButton)
        
           applyConstraints()
    }
    
  private func applyConstraints() {
        let titlePosterImageViewConstraints = [
            titlePosterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titlePosterImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            titlePosterImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant:  -15),
            titlePosterImageView.widthAnchor.constraint(equalToConstant: 100)
        ]
    let titleLabelConstraints = [
        titleLabel.leadingAnchor.constraint(equalTo: titlePosterImageView.trailingAnchor, constant:  20),
        titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
    ]
      
      NSLayoutConstraint.activate(titlePosterImageViewConstraints)
      NSLayoutConstraint.activate(titleLabelConstraints)
  }
    
    public func configure(with model: TitleViewModel) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model.posterURL)") else {return}
        titlePosterImageView.sd_setImage(with: url, completed: nil)
        titleLabel.text = model.titleName
       
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
