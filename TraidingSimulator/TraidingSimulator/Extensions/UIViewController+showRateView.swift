//
//  UIViewController+showRateView.swift
//  TraidingSimulator
//
//  Created by Kyzu on 11.02.23.
//

import UIKit
import StoreKit

extension UIViewController {
    
    func showRateView(){
        if #available(iOS 14, *){
            if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene  {
                SKStoreReviewController.requestReview(in: scene)
            }
        } else {
            SKStoreReviewController.requestReview()
        }
    }
}
