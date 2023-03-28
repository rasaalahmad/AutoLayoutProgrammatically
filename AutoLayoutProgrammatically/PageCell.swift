//
//  PageCell.swift
//  AutoLayoutProgrammatically
//
//  Created by Rasaal Ahmad on 28/03/2023.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    var page: Page? {
        didSet {
//            print(page?.imageName)
            
            guard let unwrappedPage = page else { return }
            
            bearImageView.image = UIImage(named: unwrappedPage.imageName)
            
            let attributedText = NSMutableAttributedString(string: unwrappedPage.headerText, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
            
            attributedText.append(NSAttributedString(string: "\n\n\n\(unwrappedPage.bodyText)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.gray]))
            
            introTextView.attributedText = attributedText
            introTextView.textAlignment = .center
        }
    }
    
    private let bearImageView:UIImageView = {
        // imageview
        let imageView = UIImageView(image: UIImage(imageLiteralResourceName: "bear_first"))
        
        // enable auto layout
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let introTextView:UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Join us today in our fun games!",
                                                       attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)])
        attributedText.append(NSAttributedString(string: "\n\nAre you ready for loads of loads of fun? Don't wait any longer! we hope to see you in our store soon.", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize:13),NSAttributedString.Key.foregroundColor : UIColor.gray]))
        //textView.text = "Join us today in our fun games!"
        //textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    private let topImageViewContainer:UIView = {
        let viewContainer = UIView()
        //viewContainer.backgroundColor = .gray
        viewContainer.translatesAutoresizingMaskIntoConstraints = false
        return viewContainer
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUILayout()
        print("I am here from cell")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUILayout(){
        topImageViewContainer.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        topImageViewContainer.topAnchor.constraint(equalTo: topAnchor).isActive = true
        //topImageViewContainer.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        //topImageViewContainer.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topImageViewContainer.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        topImageViewContainer.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        topImageViewContainer.addSubview(bearImageView)
        
        //bearImageView.topAnchor.constraint(equalTo: topImageViewContainer.topAnchor, constant: 100).isActive = true
        bearImageView.centerXAnchor.constraint(equalTo: topImageViewContainer.centerXAnchor).isActive = true
        bearImageView.centerYAnchor.constraint(equalTo: topImageViewContainer.centerYAnchor).isActive = true
        bearImageView.heightAnchor.constraint(equalTo: topImageViewContainer.heightAnchor, multiplier: 0.5).isActive = true
        //bearImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        introTextView.topAnchor.constraint(equalTo: topImageViewContainer.bottomAnchor).isActive = true
        //introTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        introTextView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        introTextView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        introTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        //introTextView
    }
}
