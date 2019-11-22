//
//  ViewController.swift
//  SoptDesign
//
//  Created by Junhyeon on 2019/11/16.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchView: UIView!
    @IBOutlet var favoriteCV: UICollectionView!
    @IBOutlet var beautyCV: UICollectionView!
    @IBOutlet var couponCV: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchView.setViewBorder(.red, 1, 1)
        
        favoriteCV.delegate = self;favoriteCV.dataSource = self
        beautyCV.delegate = self;beautyCV.dataSource = self
        couponCV.delegate = self;couponCV.dataSource = self
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == favoriteCV{
            if section == 1{ return 1 }
            else{ return 4 }
        }else{ return 4 }
//        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let favoriteImgList: [UIImage] = [#imageLiteral(resourceName: "icHotDeal"), #imageLiteral(resourceName: "icGooddeal"), #imageLiteral(resourceName: "icAppliances"), #imageLiteral(resourceName: "calendar")]
        let favoriteLbList: [String] = ["반짝딜", "특가혜택", "가전제품", "출석체크"]
        let beautyImgList: [UIImage] = [#imageLiteral(resourceName: "imgPrereview"), #imageLiteral(resourceName: "imgPrereview2"), #imageLiteral(resourceName: "imgPrereview"), #imageLiteral(resourceName: "imgPrereview2")]
        let companyLbList: [String] = ["핑크스타", "씨샵언더룸", "힐슈빌", "힐슈빌"]
        let nameLbList: [String] = ["극세사 퍼 히터 팬츠", "도톰 에브리데이 니트", "털 단화", "털 단화"]
        
        switch collectionView {
        case self.favoriteCV:
            let favoriteCell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavoriteCVCell", for: indexPath) as! FavoriteCVCell
            favoriteCell.favoriteIMG.image = favoriteImgList[indexPath.row]
            favoriteCell.favoriteLB.text = favoriteLbList[indexPath.row]
            return favoriteCell
        case self.beautyCV:
            let beautyCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BeautyCVCell", for: indexPath) as! BeautyCVCell
            beautyCell.beautyIMG.image = beautyImgList[indexPath.row]
            beautyCell.companyLB.text = companyLbList[indexPath.row]
            beautyCell.nameLB.text = nameLbList[indexPath.row]
            beautyCell.oldPriceLB.text = "4,430"
            beautyCell.newPriceLB.text = "4.430"
            return beautyCell
        case self.couponCV:
            let couponCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CouponCVCell", for: indexPath) as! CouponCVCell
            couponCell.couponIMG.image = #imageLiteral(resourceName: "imgAdvertise")
            return couponCell
        default:
            return UICollectionViewCell()
        }
    }
    
}


