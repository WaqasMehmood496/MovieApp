//
//  Ex-ViewController.swift
//  BrainFit
//
//  Created by Mapple.pk on 04/02/2022.
//

import Foundation
import UIKit

extension UIViewController: UIWindowSceneDelegate {
    
    // NAVIGATION
    @IBAction func backAction() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func dismissVCAction() {
        self.dismiss(animated: true) {
        }
    }
    
    func pushViewController(controller:UIViewController,animation:Bool) {
        self.navigationController!.isNavigationBarHidden = true
        self.navigationController!.pushViewController(controller, animated: animation)
    }
    
    func changeRootViewController(controller:UIViewController) {
        let onBoardingNev = UINavigationController(rootViewController: controller)
        kApplicationWindow = Utility.getAppDelegate()!.window
        kApplicationWindow?.rootViewController = onBoardingNev
        kApplicationWindow?.makeKeyAndVisible()
    }
    
    func registerCollectionNib(collectionView:UICollectionView, nibName:String) {
        let pakageCell = UINib(nibName: nibName, bundle: nil)
        collectionView.register(pakageCell, forCellWithReuseIdentifier: nibName)
        collectionView.reloadData()
        
    }
    
    func registerTableViewNib(tableView:UITableView, nibName:String) {
        let tableNib = UINib(nibName: nibName, bundle: nil)
        tableView.register(tableNib, forCellReuseIdentifier: nibName)
    }
    
    func topMostViewController() -> UIViewController {
        
        if let navigation = self as? UINavigationController {
            return navigation.visibleViewController!.topMostViewController()
        }
        
        if let tab = self as? UITabBarController {
            if let selectedTab = tab.selectedViewController {
                return selectedTab.topMostViewController()
            }
            return tab.topMostViewController()
        }
        
        if self.presentedViewController == nil {
            return self
        }
        
        if let navigation = self.presentedViewController as? UINavigationController {
            return navigation.visibleViewController!.topMostViewController()
        }
        
        if let tab = self.presentedViewController as? UITabBarController {
            if let selectedTab = tab.selectedViewController {
                return selectedTab.topMostViewController()
            }
            return tab.topMostViewController()
        }
        return self.presentedViewController!.topMostViewController()
    }
    
    
}
