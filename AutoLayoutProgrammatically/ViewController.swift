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
        return imageView
    }()
    
    let introTextView:UITextView = {
        let textView = UITextView()
        textView.text = "Join us today in our fun games"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // view.backgroundColor
        view.addSubview(bearImageView)
        view.addSubview(introTextView)
        setupUILayout()
    }

    private func setupUILayout(){
        bearImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        bearImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        introTextView.topAnchor.constraint(equalTo: bearImageView.bottomAnchor, constant: 100).isActive = true
        //introTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        introTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        introTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        introTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        //introTextView
    }

}

