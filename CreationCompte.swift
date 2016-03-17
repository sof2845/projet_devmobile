//
//  CreationCompte.swift
//  projet_devmobile
//
//  Created by tp on 16/03/2016.
//  Copyright © 2016 tp. All rights reserved.
//

import UIKit
import CoreData

class CreationCompte: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var nom: UITextField!
    
    @IBOutlet weak var prenom: UITextField!
    @IBAction func CreerCompte(sender: AnyObject) {
        if(password.text == confirmPassword.text){
            let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            let managedContext = appDelegate.managedObjectContext
            let entity = NSEntityDescription.entityForName("Utilisateur", inManagedObjectContext:managedContext)
            let utilisateur = NSManagedObject(entity:entity!, insertIntoManagedObjectContext: managedContext)
            utilisateur.setValue(username.text, forKey: "username")
            utilisateur.setValue(password.text, forKey: "password")
        
            do{
                try managedContext.save()
            }catch{
                print("erreur")
            }
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
