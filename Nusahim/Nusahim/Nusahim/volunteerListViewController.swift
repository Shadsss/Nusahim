//
//  volunteerListViewController.swift
//  Nusahim
//
//  Created by SHAHD HAKEEM on 20/02/2021.
//  Copyright © 2021 SHAHD HAKEEM. All rights reserved.
//

import UIKit

class volunteerListViewController: UIViewController, UITableViewDataSource , UITableViewDelegate{
   
    
    var navController : UINavigationController?
    var acceptOrder : AcceptOrderViewController?


    override func viewDidLoad() {
        super.viewDidLoad()
        acceptOrder = AcceptOrderViewController()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        prepareTable()
    }
    
    
    
    @IBOutlet weak var volunteersTable: UITableView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func prepareTable() {
        
        volunteersTable.register(UINib(nibName: "firstTableViewCell", bundle: nil), forCellReuseIdentifier: "firstTableViewCell")
        
        volunteersTable.delegate = self
        volunteersTable.dataSource = self
        volunteersTable.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        goNext()
    }
    
    func goNext()
    {
        self.navigationController?.navigationBar.barTintColor = UIColor (red: 247/255, green: 247/255, blue: 250/255, alpha: 1.0)
        self.navigationController?.navigationBar.backItem?.leftItemsSupplementBackButton = false;
        self.navigationController!.pushViewController(acceptOrder!, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstTableViewCell", for: indexPath) as! firstTableViewCell
        cell.backgroundColor = UIColor.white
        cell.selectionStyle = UITableViewCellSelectionStyle.none
//        cell.btnClickCells(goNext())
        return cell
    }
    

}
