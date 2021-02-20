//
//  LoadingViewController.swift
//  Nusahim
//
//  Created by SHAHD HAKEEM on 20/02/2021.
//  Copyright © 2021 SHAHD HAKEEM. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {

    var navController : UINavigationController?
    var volunteerList : volunteerListViewController?
    override func viewDidLoad() {
        super.viewDidLoad()

         volunteerList = volunteerListViewController()
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func goNext(_ sender: Any) {
        self.navigationController?.navigationBar.barTintColor = UIColor (red: 247/255, green: 247/255, blue: 250/255, alpha: 1.0)
        self.navigationController?.navigationBar.backItem?.leftItemsSupplementBackButton = false;
        self.navigationController!.pushViewController(volunteerList!, animated: true)
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
