//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Mina on 10/04/2023.
//

import UIKit

/// Controller to house tabs and root controllers
final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setUpTaps()
    }
    
   private func setUpTaps(){
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingVC = RMSettingViewController()
       
       characterVC.navigationItem.largeTitleDisplayMode = .automatic //el title fy el tabBar ezhr wala la2a
       locationVC.navigationItem.largeTitleDisplayMode = .automatic
       episodeVC.navigationItem.largeTitleDisplayMode = .automatic
       settingVC.navigationItem.largeTitleDisplayMode = .automatic
       
       let nav1 = UINavigationController(rootViewController: characterVC)
       let nav2 = UINavigationController(rootViewController: locationVC)
       let nav3 = UINavigationController(rootViewController: episodeVC)
       let nav4 = UINavigationController(rootViewController: settingVC)
       
       nav1.tabBarItem = UITabBarItem(title: "Characters",
                                      image: UIImage(systemName: "person"),
                                      tag: 1)
       nav2.tabBarItem = UITabBarItem(title: "Locations",
                                      image: UIImage(systemName: "globe"),
                                      tag: 2)
       nav3.tabBarItem = UITabBarItem(title: "Episodes",
                                      image: UIImage(systemName: "tv"),
                                      tag: 3)
       nav4.tabBarItem = UITabBarItem(title: "Settings",
                                      image: UIImage(systemName: "gear"),
                                      tag: 4)
       
       for nav in [nav1, nav4, nav2, nav3] {
           nav.navigationBar.prefersLargeTitles = true // el title mn fo2
           
       }
       
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }

}

