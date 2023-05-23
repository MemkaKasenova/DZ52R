//
//  CustomTableView.swift
//  DZ52R
//
//  Created by merim kasenova on 23/5/23.
//

import UIKit
import SnapKit
import Kingfisher

class CustomTableViewCell: UITableViewCell {
    
    static let reusedId = String(describing: CustomTableViewCell.self)
    private let bgView = UIView()
    
    private let title: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .systemCyan
        label.numberOfLines = 0
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 11)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    private let productImageView = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(bgView)
        bgView.addSubview(title)
        bgView.addSubview(descriptionLabel)
        bgView.addSubview(productImageView)
        
        bgView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalTo(100)
            make.height.equalTo(100)
            
        }
        productImageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview().inset(40)
            make.width.equalTo(300)
            make.height.equalTo(200)
        }
        title.snp.makeConstraints { make in
            make.top.equalTo(productImageView.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(50)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(title.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(5)
            make.width.equalTo(170)
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func diplay(item:Product) {
        title.text = item.title
        descriptionLabel.text = item.description
        productImageView.kf.setImage(with: URL(string: item.thumbnail ))
    }
}

        
                    
         



