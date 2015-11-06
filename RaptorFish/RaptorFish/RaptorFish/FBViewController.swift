//
//  FBViewController.swift
//  RaptorFish
//
//  Created by Lin Wang on 11/4/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class FBViewController: UIViewController {

    @IBOutlet weak var okButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressOk(sender: AnyObject) {
        
        Utilities.delay(1.0) {
            self.performSegueWithIdentifier("home", sender: nil)
        }
        
    }
   
    
    
    
//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated)
//        
//        UIView.animateWithDuration(0.5, delay: 2.2, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
//            self.performSegueWithIdentifier("home", sender: nil)
//            }, completion: nil)
//    }
//

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
