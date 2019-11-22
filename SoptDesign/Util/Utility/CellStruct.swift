//
//  CellStruct.swift
//  SoptDesign
//
//  Created by 조예은 on 21/11/2019.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import Foundation
import UIKit

struct Favorite {
    var favoriteImg: UIImage?
    var favoriteLb: String?
    
    init(favoriteName: String){
        self.favoriteImg = UIImage(named: favoriteName)
        self.favoriteLb = "Name"
    }
}
