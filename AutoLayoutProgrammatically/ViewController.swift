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
        textView.text = "Join us today in our fun games!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    let topImageViewContainer:UIView = {
        let viewContainer = UIView()
        //viewContainer.backgroundColor = .gray
        viewContainer.translatesAutoresizingMaskIntoConstraints = false
        return viewContainer
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // view.backgroundColor
       
        //view.addSubview(bearImageView)
        view.addSubview(introTextView)
        view.addSubview(topImageViewContainer)
        
        setupUILayout()
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
        bearImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        bearImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        introTextView.topAnchor.constraint(equalTo: bearImageView.bottomAnchor, constant: 150).isActive = true
        //introTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        introTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        introTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        introTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        //introTextView
    }

}

