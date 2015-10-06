//
//  TabBarController.swift
//  nbdpc
//
//  Created by chenyufeng on 15/8/26.
//  Copyright (c) 2015年 nbdpc. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController ,UITabBarControllerDelegate{
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configTabBar()
    self.delegate=self
    // Do any additional setup after loading the view.
  }
  
  func configTabBar(){
    
    //set the color of tabbar buttons when selected
    self.tabBar.tintColor=UIColor.redColor()
    //设置more view 的tintcolor
    self.moreNavigationController.view.tintColor=UIColor.redColor()
    //把navbar的tintcolor改回默认颜色
    self.moreNavigationController.navigationBar.tintColor=UIColor(red: 0, green: 0.5, blue: 1.0, alpha: 1)
    //去掉导航栏的文字
    self.moreNavigationController.navigationBar.topItem?.title=""
    //设置导航栏背景
    self.moreNavigationController.navigationBar.setBackgroundImage(UIImage(named: "navBar"),forBarMetrics: UIBarMetrics.Default)
    
  }
  
  func tabBarController(tabBarController: UITabBarController, willBeginCustomizingViewControllers viewControllers: [UIViewController]) {
    
    
    
  }
  func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
    if(self.selectedIndex>4){
      self.moreNavigationController.navigationBarHidden=true
      self.moreNavigationController.navigationBarHidden=false
      
      
      
    }
  }
  
}
