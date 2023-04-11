//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Mina on 10/04/2023.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
       title = "Characters"
        
        let request = RMRequest(endPoint: .character ,queryParameters: [ URLQueryItem(name: "name", value: "rick") ,URLQueryItem(name: "status", value: "alive")])
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
           
        }
       
    }
    
    

  

}
