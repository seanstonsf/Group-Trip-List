//
//  ActivityViewController.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/22/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController {

    @IBOutlet weak var activityScrollView: UIScrollView!
    @IBOutlet weak var activityImageView: UIImageView!
    @IBOutlet weak var actvityCloseButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        activityScrollView.contentSize.height = activityImageView.frame.height + 10
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

    @IBAction func ActivityCloseButtonPress(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
