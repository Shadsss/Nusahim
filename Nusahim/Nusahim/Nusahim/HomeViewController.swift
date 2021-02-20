//
//  HomeViewController.swift
//  Nusahim
//
//  Created by mashael marzoog on 19/02/2021.
//  Copyright © 2021 SHAHD HAKEEM. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var navController : UINavigationController?
    var sendRequest : SendRequestViewController?
    var loginScreen : LoginViewController?
    @IBAction func helpBtn(_ sender: Any) {
          self.navigationController!.pushViewController(sendRequest!, animated: true)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sendRequest = SendRequestViewController()
        loginScreen = LoginViewController()
         self.navigationController?.navigationBar.barTintColor = UIColor (red: 247/255, green: 247/255, blue: 250/255, alpha: 1.0)
        //----Logout Button
        let button: UIButton = UIButton(type: UIButtonType.custom) as UIButton
        button.setImage(UIImage(named: "icons-menu.png")!, for: UIControlState.normal)
        //button.addTarget(self, action: #selector(HomeViewController.Logout), for: UIControlEvents.touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        let barButton = UIBarButtonItem(customView: button)
        
        let buttonLogout: UIButton = UIButton(type: UIButtonType.custom) as UIButton
        buttonLogout.setImage(UIImage(named: "icons8-exit-100.png")!, for: UIControlState.normal)
        buttonLogout.frame = CGRect(x: 0, y: 0, width: 15, height: 15)
        buttonLogout.widthAnchor.constraint(equalToConstant: 32.0).isActive = true
        buttonLogout.heightAnchor.constraint(equalToConstant: 32.0).isActive = true
        buttonLogout.addTarget(self, action: #selector(HomeViewController.logoutBtn(_:)), for: UIControlEvents.touchUpInside)
        let barButton2 = UIBarButtonItem(customView: buttonLogout)
      
        
        navigationItem.rightBarButtonItem = barButton2
        button.widthAnchor.constraint(equalToConstant: 32.0).isActive = true
        button.heightAnchor.constraint(equalToConstant: 32.0).isActive = true
        self.navigationItem.leftBarButtonItem = barButton
    }


    @IBAction func logoutBtn(_ sender: Any) {
        self.navigationController!.pushViewController(loginScreen!, animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
