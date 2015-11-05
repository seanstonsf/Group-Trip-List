//
//  DetailListViewController.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/25/15.
//  Copyright © 2015 Sean Smith. All rights reserved.

//.transforlm = cgaffineIdentity
//

import UIKit

class DetailListViewController: UIViewController {
    
    @IBOutlet weak var subLabel: UILabel!
    @IBOutlet weak var userImageOne: UIImageView!
    @IBOutlet weak var userImageTwo: UIImageView!
    @IBOutlet weak var userImageThree: UIImageView!
    @IBOutlet weak var userImageFour: UIImageView!
    @IBOutlet weak var tabBgImage: UIView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var tabButtons: [UIButton]!
    @IBOutlet weak var titleLabel: UILabel!
    
    var taskViewController: UIViewController!
    var activityViewController: UIViewController!
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    var list: NSDictionary! {
        get {
            let selectedItem = AppDelegate.shareAppDelegate().selectedListItem
            let list = AppDelegate.shareAppDelegate().lists[selectedItem!]
            return list
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userImageOne.layer.cornerRadius = userImageOne.frame.size.width / 2
        userImageTwo.layer.cornerRadius = userImageTwo.frame.size.width / 2
        userImageThree.layer.cornerRadius = userImageThree.frame.size.width / 2
        userImageFour.layer.cornerRadius = userImageFour.frame.size.width / 2
        
        tabBgImage.alpha = 0.5
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        taskViewController = storyboard.instantiateViewControllerWithIdentifier("TaskListViewController")
        activityViewController = storyboard.instantiateViewControllerWithIdentifier("ActivityListViewController")
        
        viewControllers = [taskViewController, activityViewController]
        
        tabButtons[selectedIndex].selected = true
        didPressTab(tabButtons[selectedIndex])

        //detailScrollview.contentSize.height = detailScrollImageView.frame.height
        
//        detailScrollImageView.frame.origin = detailScrollImageView.frame.offsetBy(dx: 0, dy: -60)
        // Do any additional setup after loading the view.
        
        titleLabel.text = list["title"] as? String
        
        subLabel.text = list["sub"] as? String
        
        let urlString = list.valueForKeyPath("profileImage") as! String
        let url = NSURL(string: urlString)!
        userImageOne.setImageWithURL(url)
        
        let urlString2 = list.valueForKeyPath("profileImage2") as! String
        let url2 = NSURL(string: urlString2)!
        userImageTwo.setImageWithURL(url2)
        
        let urlString3 = list.valueForKeyPath("profileImage3") as! String
        let url3 = NSURL(string: urlString3)!
        userImageThree.setImageWithURL(url3)
        
        let urlString4 = list.valueForKeyPath("profileImage3") as! String
        let url4 = NSURL(string: urlString4)!
        userImageThree.setImageWithURL(url4)
        
        
        
//                titleLabel.text = self.titleLabel.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBAction func didPressTab(sender: UIButton) {
        
        //tabStateView.transform = CGAffineTransformMakeTranslation(100, 100)
        
        let previousIndex = selectedIndex
        
        selectedIndex = sender.tag
        
        tabButtons[previousIndex].selected = false
        
        //print(viewControllers[previousIndex])
        
        let previousVC = viewControllers[previousIndex]
        
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        
        let vc = viewControllers[selectedIndex]
        
        addChildViewController(vc)
        
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        vc.didMoveToParentViewController(self)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func saveTemplateButtonPress(sender: AnyObject) {
        print("Save Template")
    }

    @IBAction func detailBackButton(sender: AnyObject) {
        print("Back Button Press")
//        navigationController?.popViewControllerAnimated(true)
        navigationController?.popToRootViewControllerAnimated(true)

    }
    
}
