//
//  SendRequestViewController.swift
//  Nusahim
//
//  Created by SHAHD HAKEEM on 20/02/2021.
//  Copyright © 2021 SHAHD HAKEEM. All rights reserved.
//

import UIKit

class SendRequestViewController: UIViewController {
    
    var navController : UINavigationController?
    var LoadingVC : LoadingViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
         LoadingVC = LoadingViewController()

        
        // Do any additional setup after loading the view.
    }

    @IBAction func sendBtn(_ sender: Any) {
        self.navigationController?.navigationBar.barTintColor = UIColor (red: 247/255, green: 247/255, blue: 250/255, alpha: 1.0)
        self.navigationController?.navigationBar.backItem?.leftItemsSupplementBackButton = false; self.navigationController!.pushViewController(LoadingVC!, animated: true)
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
