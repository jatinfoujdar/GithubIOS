//
//  SearchVC.swift
//  GithubIOS
//
//  Created by jatin foujdar on 13/11/26.
//

import UIKit

class SearchVC : UIViewController {
    
    let usernameTextField = GFTextField()
    let callToActionButton = GFButton(backgroundColor: .systemRed, title: "Get Followers")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTextField()
        configureCallToActionButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
        
    }
    
    func configureTextField(){
        view.addSubview(usernameTextField)
        
        NSLayoutConstraint.activate([
        usernameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 90),
        usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 90),
        usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -90),
        usernameTextField.heightAnchor.constraint(equalToConstant: 90)
        ])
    }
    
    func configureCallToActionButton(){
        view.addSubview(callToActionButton)
        
        NSLayoutConstraint.activate([
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
