//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Mina on 11/04/2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}
