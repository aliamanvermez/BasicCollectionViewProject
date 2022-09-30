//
//  CustomCollectionViewCell.swift
//  CollectionViewProject
//
//  Created by NeonApps on 30.09.2022.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    var imageView = UIImageView()
    var titleLabel = UILabel()
    static  let identifier = "CustomCollectionViewCell"
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemPink
        createImageView()
        createTitleLabel()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createImageView() {
        imageView.image = UIImage(systemName: "house")
        imageView.contentMode = .scaleAspectFit
        contentView.clipsToBounds = true
        contentView.addSubview(imageView)

        
    }
    func createTitleLabel() {
        titleLabel.text = "Custom"
        titleLabel.textAlignment = .center
        contentView.clipsToBounds = true
        contentView.addSubview(titleLabel)
        
    }
    //    imageview ve titlelabel framelerini verdigimiz fonksiyon
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel.frame = CGRect(x: 5,
                                  y: contentView.frame.size.height - 50,
                                  width: contentView.frame.size.width - 10,
                                  height: 50)
        imageView.frame = CGRect(x: 5,
                                 y: 0,
                                 width: contentView.frame.size.width - 10,
                                 height: contentView.frame.size.height - 50)
        
    }
     
//    Celleri sirayla numaralandirmak icin
    func configure(label : String) {
        titleLabel.text = label
    }
//    celli her dondugunde resetler 
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = nil
    }
}
