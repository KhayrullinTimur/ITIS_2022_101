//
//  ImageCell.swift
//  HW7
//
//  Created by Тимур Хайруллин on 05.11.2022.
//

import UIKit

class ImageCell: UICollectionViewCell {
    func set(image: UIImage) {
        imageView.image = image
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setup()
    }

    private let imageView: UIImageView = .init()

    private func setup() {
        contentView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
    }
}
