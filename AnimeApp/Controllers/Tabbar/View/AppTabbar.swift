//
//  AppTabbar.swift
//  AnimeApp
//
//  Created by Mapple.pk on 08/01/2023.
//

import UIKit

class AppTabbar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addControllers()
    }
    
}


//MARK: -----------------    HELPING METHOD'S -------------------
extension AppTabbar {
    
    func addControllers() {
        
        let anime = AddTabbarItem(controller: AnimeVC(), title: "Anime", image: "AnimeUnSelectedTab", selectedImage: "AnimeUnSelectedTab")
        anime.navigationController?.navigationBar.isHidden = true
        let animeNav = UINavigationController(rootViewController: anime)
        
        let platform = AddTabbarItem(controller: PlatformVC(), title: "Platform", image: "PlateformUnselectedTab", selectedImage: "PlateformUnselectedTab")
        platform.navigationController?.navigationBar.isHidden = true
        let platformNav = UINavigationController(rootViewController: platform)
        
        let search = AddTabbarItem(controller: SearchVC(), title: "Search", image: "SearchUnSelectedTab", selectedImage: "SearchUnSelectedTab")
        search.navigationController?.navigationBar.isHidden = true
        let searchNav = UINavigationController(rootViewController: search)
        
        let library = AddTabbarItem(controller: LibraryVC(), title: "Library", image: "LibraryUnSelectedTab", selectedImage: "LibraryUnSelectedTab")
        library.navigationController?.navigationBar.isHidden = true
        let libraryNav = UINavigationController(rootViewController: library)
        
        let setting = AddTabbarItem(controller: SettingsVC(), title: "Setting", image: "SettingUnSelectedTab", selectedImage: "SettingUnSelectedTab")
        setting.navigationController?.navigationBar.isHidden = true
        let settingNav = UINavigationController(rootViewController: setting)
        
        self.viewControllers = [animeNav,platformNav,searchNav,libraryNav,settingNav]
        
    }
    
    func AddTabbarItem(controller:UIViewController,title:String,image:String,selectedImage:String) -> UIViewController {
        let item1 = UITabBarItem(title: title, image: UIImage(named: image), tag: 0)
        item1.selectedImage = UIImage(named: selectedImage)
        controller.tabBarItem = item1
//        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(named: "TextFieldTextGray")!], for: .normal)
//        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(named: "BackgroundTheam")!], for: .selected)
        return controller
    }
    
}
