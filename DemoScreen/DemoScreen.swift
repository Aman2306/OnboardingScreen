//
//  DemoScreen.swift
//  DemoScreen
//
//  Created by Aman Meena on 21/02/19.
//  Copyright © 2019 Aman Meena. All rights reserved.
//

import UIKit
import paper_onboarding

class DemoScreen: UIViewController {

    // Constants
    
    
    // Variables
    
    
    // Outlets
    @IBOutlet weak var onboardingObj: OnboardingViewClass!
    
    
    // Actions
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onboardingObj.dataSource = self
//        onboardingObj.delegate = self
    }
}

extension DemoScreen: PaperOnboardingDataSource  {
    
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        
        let firstImage = #imageLiteral(resourceName: "illustration") // Image literal
        let secondImage = #imageLiteral(resourceName: "card-1")
        let thirdImage = #imageLiteral(resourceName: "post-1")
        let activeImage = #imageLiteral(resourceName: "active")
        let bgArray = [#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)]
        let titleFont = UIFont(name: "HelveticaNeue-Bold", size:  18.0)!
        let descFont = UIFont(name: "HelveticaNeue", size: 14.0)!
        let titleColor = UIColor.white
        let descColor = UIColor.white

        let screen1 = OnboardingItemInfo(informationImage: firstImage, title: "Beer", description: "Beer is awesome", pageIcon: activeImage, color: bgArray[0], titleColor: titleColor, descriptionColor: descColor, titleFont: titleFont, descriptionFont: descFont)
        let screen2 = OnboardingItemInfo(informationImage: secondImage, title: "Smthng", description: "Smthng", pageIcon: activeImage, color: bgArray[1], titleColor: titleColor, descriptionColor: descColor, titleFont: titleFont, descriptionFont: descFont)
        let screen3 = OnboardingItemInfo(informationImage: thirdImage, title: "Smthng", description: "Smthng", pageIcon: activeImage, color: bgArray[2], titleColor: titleColor, descriptionColor: descColor, titleFont: titleFont, descriptionFont: descFont)
        
        let arrayToReturn = [screen1, screen2, screen3]

        return arrayToReturn[index]
        //        return [] as! OnboardingItemInfo
    }
    
    
}
