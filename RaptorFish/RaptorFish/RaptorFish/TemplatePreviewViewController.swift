//
//  TemplatePreviewViewController.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/25/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class TemplatePreviewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressNotForMe(sender: AnyObject) {
        
        dismissViewControllerAnimated(true) { () -> Void in
        }
        
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
