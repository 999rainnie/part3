//
//  disconnect_popup.swift
//  part3
//
//  Created by 크선멘 개발 on 2021/02/19.
//

import UIKit

class disconnect_popoup: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var yes_btn: UIButton!
    @IBOutlet weak var no_btn: UIButton!
    @IBOutlet weak var popup_view: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.layer.cornerRadius = 15
        label1.layer.masksToBounds = true
        
        //set constraint
        //let margins = view.layoutMarginsGuide
        
        popup_view.widthAnchor.constraint(equalToConstant: 388.adjusted).isActive = true
        
        label1.font = UIFont(name:"AppleSDGothicNeo-Bold", size:16.5.adjusted)
        label1.widthAnchor.constraint(equalToConstant: 368.adjusted).isActive = true
        label1.leadingAnchor.constraint(equalTo: popup_view.leadingAnchor, constant: 10.adjusted).isActive = true
        label1.topAnchor.constraint(equalTo: popup_view.topAnchor, constant: 8.adjusted).isActive = true
        
        background.widthAnchor.constraint(equalToConstant: 388.adjusted).isActive = true
        background.leadingAnchor.constraint(equalTo: popup_view.leadingAnchor, constant: 0.adjusted).isActive = true
        background.topAnchor.constraint(equalTo: popup_view.topAnchor, constant: -3.adjusted).isActive = true
        
        yes_btn.widthAnchor.constraint(equalToConstant: 93.adjusted).isActive = true
        yes_btn.leadingAnchor.constraint(equalTo: popup_view.leadingAnchor, constant: 88.adjusted).isActive = true
        yes_btn.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 36.adjusted).isActive = true
        
        no_btn.widthAnchor.constraint(equalToConstant: 93.adjusted).isActive = true
        no_btn.leadingAnchor.constraint(equalTo: yes_btn.trailingAnchor, constant: 28.adjusted).isActive = true
        no_btn.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 36.adjusted).isActive = true
    }
    @IBAction func yes(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: false, completion: nil)
        /*
        self.view.window?.rootViewController?.dismiss(animated: false, completion: {
            let homeVC = men_info()
            homeVC.modalPresentationStyle = .fullScreen
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.window.rootViewController?.present(homeVC, animated: true, completion: nil)
        })
        */
        //self.dismiss(animated: true, completion: nil)
    }
    @IBAction func no(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: false, completion: nil)
    }
}
