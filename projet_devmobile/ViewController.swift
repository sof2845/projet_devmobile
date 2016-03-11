//
//  ViewController.swift
//  projet_devmobile
//
//  Created by tp on 11/03/2016.
//  Copyright © 2016 tp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tache = ["titi", "toto", "tata", "tutu", "test2"]

    @IBOutlet weak var maTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Hello sof")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tache.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cellule")
        
        cell!.textLabel!.text = tache[indexPath.row]
        
        return cell!
    }


}

