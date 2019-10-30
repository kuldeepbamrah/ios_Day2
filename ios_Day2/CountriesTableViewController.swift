//
//  CountriesTableViewController.swift
//  ios_Day2
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CountriesTableViewController: UIViewController, UITableViewDataSource,UITableViewDelegate
{
    
    
    @IBOutlet weak var countriesTable: UITableView!
    let countries = ["India","USA","Canada"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.countriesTable.dataSource = self
        self.countriesTable.delegate = self

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func tab
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
