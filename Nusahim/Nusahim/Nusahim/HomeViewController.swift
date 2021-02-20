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
    @IBAction func helpBtn(_ sender: Any) {
        self.navigationController?.navigationBar.barTintColor = UIColor (red: 247/255, green: 247/255, blue: 250/255, alpha: 1.0)
        self.navigationController?.navigationBar.backItem?.leftItemsSupplementBackButton = false; self.navigationController!.pushViewController(sendRequest!, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        sendRequest = SendRequestViewController()
        // Do any additional setup after loading the view.
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
