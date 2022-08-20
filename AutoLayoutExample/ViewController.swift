//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by Mert Gaygusuz on 20.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let redView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    let blueView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
    }()
    
    let greenView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(redView)
        view.addSubview(blueView)
        view.addSubview(greenView)
        
        redViewConstraint()
        blueViewConstraint()
        greenViewConstraint()
        
    }
    
    func redViewConstraint(){
        redView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        redView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 110).isActive = true
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func blueViewConstraint(){
        blueView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        blueView.widthAnchor.constraint(equalTo: redView.widthAnchor).isActive = true
        blueView.heightAnchor.constraint(equalTo: redView.heightAnchor).isActive = true
        blueView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
   
    func greenViewConstraint(){
        greenView.trailingAnchor.constraint(equalTo: blueView.trailingAnchor).isActive = true
        greenView.leadingAnchor.constraint(equalTo: redView.leadingAnchor).isActive = true
        greenView.bottomAnchor.constraint(equalTo: redView.topAnchor, constant: -20).isActive = true
        greenView.heightAnchor.constraint(equalTo: redView.heightAnchor, multiplier: 1.3).isActive = true
        greenView.topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor, constant: 30).isActive = true
    }
    
}

