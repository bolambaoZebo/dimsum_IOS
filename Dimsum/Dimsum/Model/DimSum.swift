//
//  DimSum.swift
//  Dimsum
//
//  Created by 96group on 7/19/21.
//

import Foundation
import UIKit

struct DimSum {
    let name: String
    let detail: UIImage
    let image: UIImage
    let headerImage: UIImage
}

let dimSums : [DimSum] = [
    DimSum(name: "Chicken Feet",detail: #imageLiteral(resourceName: "5"), image: #imageLiteral(resourceName: "chickfeet"),headerImage: #imageLiteral(resourceName: "check feet")),
    DimSum(name: "Lumpia",detail: #imageLiteral(resourceName: "7"), image: #imageLiteral(resourceName: "lupmpia"), headerImage: #imageLiteral(resourceName: "porkspring rolls")),
    DimSum(name: "Pork Siomai",detail: #imageLiteral(resourceName: "1"), image: #imageLiteral(resourceName: "siomoy"), headerImage: #imageLiteral(resourceName: "siomaie")),
    DimSum(name: "Pork Bun",detail: #imageLiteral(resourceName: "3"), image: #imageLiteral(resourceName: "porkbu"), headerImage: #imageLiteral(resourceName: "pork buns")),
    DimSum(name: "Egg Tart",detail: #imageLiteral(resourceName: "8"), image: #imageLiteral(resourceName: "eggstarts"), headerImage: #imageLiteral(resourceName: "egg atrt")),
    DimSum(name: "Soup Dumpling",detail: #imageLiteral(resourceName: "4"), image: #imageLiteral(resourceName: "soup du"), headerImage: #imageLiteral(resourceName: "soup dump")),
    DimSum(name: "Rice Noodles Roll",detail: #imageLiteral(resourceName: "6"), image: #imageLiteral(resourceName: "rice noddle rols"), headerImage: #imageLiteral(resourceName: "rice rolls")),
    DimSum(name: "Shrimp Dumping",detail: #imageLiteral(resourceName: "2"), image: #imageLiteral(resourceName: "shimp dum"), headerImage: #imageLiteral(resourceName: "shrimp"))
]
