//
//  OVLiveTabbarViewController.swift
//  OVLive
//
//  Created by chris on 2019/10/25.
//  Copyright © 2019 chris. All rights reserved.
//

import UIKit


class OVLiveTabbarViewController: UITabBarController {
    
    lazy var titilesArray       = NSMutableArray.init()
    lazy var imagesArray        = NSMutableArray.init()
    lazy var selectImagesArray  = NSMutableArray.init()
    lazy var tabBarView: OVLiveTabbarView = {
        let tabBarView = OVLiveTabbarView.init()
        return tabBarView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup UI
        self.setupUI()
        
        // handle custom data
        self.handleCustomData()
        
        // handle custom tabber
        self.setUpCustomTabbar()
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        
        self.view.backgroundColor = UIColor.white;
    }
    
    
    func setupUI() -> Void {
        let liveHomeVC    = OVLiveHomeViewController.init();
        let followPageVC  = OVLivewFollowViewController.init();
        let messagePageVC = OVLiveMessageViewController.init();
        let userInfoVC    = OVUserInfoViewController.init();
        liveHomeVC.tabBarItem.title            = "Live";
        liveHomeVC.tabBarItem.selectedImage    = UIImage.init(named: "");
        liveHomeVC.tabBarItem.image            = UIImage.init(named: "");
        followPageVC.tabBarItem.title          = "Follow";
        followPageVC.tabBarItem.selectedImage  = UIImage.init(named: "");
        followPageVC.tabBarItem.image          = UIImage.init(named: "");
        messagePageVC.tabBarItem.title         = "Message";
        messagePageVC.tabBarItem.selectedImage = UIImage.init(named: "");
        messagePageVC.tabBarItem.image         = UIImage.init(named: "");
        userInfoVC.tabBarItem.title            = "User";
        userInfoVC.tabBarItem.selectedImage    = UIImage.init(named: "");
        userInfoVC.tabBarItem.image            = UIImage.init(named: "");
        self.viewControllers = [liveHomeVC,followPageVC,messagePageVC,userInfoVC];
    }

 
    
    
    func handleCustomData() -> Void {
        for tabBarItem:UITabBarItem in self.tabBar.items! {
            if tabBarItem.title!.count > 0 {
                self.titilesArray.add(tabBarItem.title!)
            }else{
                self.titilesArray.add("Unkown")
            }
            
            if tabBarItem.image != nil {
                self.imagesArray.add(tabBarItem.image!)
            }else{
                self.imagesArray.add(UIImage.init())
            }
            
            if tabBarItem.selectedImage != nil {
                self.selectImagesArray.add(tabBarItem.selectedImage!)
            }else{
                self.selectImagesArray.add(UIImage.init())
            }
        }
    }
    
    
    func setUpCustomTabbar() -> Void {
        
    }
    

}
