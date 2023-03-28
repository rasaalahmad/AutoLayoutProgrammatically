//
//  ViewController.swift
//  AutoLayoutProgrammatically
//
//  Created by Rasaal Ahmad on 22/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    let bearImageView:UIImageView = {
        // imageview
        let imageView = UIImageView(image: UIImage(imageLiteralResourceName: "bear_first"))
        
        // enable auto layout
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let introTextView:UITextView = {
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
    
    private let previousButton:UIButton={
        let button = UIButton(type: .system)
        //button.setTitle("Prev", for: .normal)
        button.backgroundColor = .white
        let attributedTitle = NSAttributedString(string: "Prev", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black])
        button.setAttributedTitle(attributedTitle, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let nextButton:UIButton={
        let button = UIButton(type: .system)
        //button.setTitle("Prev", for: .normal)
        button.backgroundColor = .white
        let attributedTitle = NSAttributedString(string: "Next", attributes: [NSAttributedString.Key.foregroundColor : UIColor.systemPink])
        button.setAttributedTitle(attributedTitle, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let topImageViewContainer:UIView = {
        let viewContainer = UIView()
        //viewContainer.backgroundColor = .gray
        viewContainer.translatesAutoresizingMaskIntoConstraints = false
        return viewContainer
    }()
    
    let pageControl:UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = 4
        pc.pageIndicatorTintColor = .gray
        pc.currentPageIndicatorTintColor = .systemPink
        return pc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // view.backgroundColor
       
        //view.addSubview(bearImageView)
        view.addSubview(introTextView)
        view.addSubview(topImageViewContainer)
        
        setUpBottomControls()
        
        setupUILayout()
        print("I am here from main")
    }

    fileprivate func setUpBottomControls()
    {
        let bottomStackView = UIStackView(arrangedSubviews: [previousButton,pageControl,nextButton])
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.distribution = .fillEqually
        view.addSubview(bottomStackView)
        
        
       //view.addSubview(previousButton)
        //previousButton.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        NSLayoutConstraint.activate([
            //previousButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bottomStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomStackView.heightAnchor.constraint(equalToConstant: 50),
            bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    private func setupUILayout(){
        topImageViewContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        topImageViewContainer.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        //topImageViewContainer.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        //topImageViewContainer.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topImageViewContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageViewContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        topImageViewContainer.addSubview(bearImageView)
        
        //bearImageView.topAnchor.constraint(equalTo: topImageViewContainer.topAnchor, constant: 100).isActive = true
        bearImageView.centerXAnchor.constraint(equalTo: topImageViewContainer.centerXAnchor).isActive = true
        bearImageView.centerYAnchor.constraint(equalTo: topImageViewContainer.centerYAnchor).isActive = true
        bearImageView.heightAnchor.constraint(equalTo: topImageViewContainer.heightAnchor, multiplier: 0.5).isActive = true
        //bearImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        introTextView.topAnchor.constraint(equalTo: topImageViewContainer.bottomAnchor).isActive = true
        //introTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        introTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        introTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        introTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        //introTextView
    }

}

