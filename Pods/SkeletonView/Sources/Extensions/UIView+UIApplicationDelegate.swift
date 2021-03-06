//
//  UIView+UIApplicationDelegate.swift
//  SkeletonView-iOS
//
//  Created by Juanpe Catalán on 08/02/2018.
//  Copyright © 2018 SkeletonView. All rights reserved.
//

import UIKit

extension UIView {
    
    enum Constants {
        static let becomeActiveNotification =  NSNotification.Name.init(rawValue: UIApplication.didBecomeActiveNotification.rawValue)
        static let enterForegroundNotification = NSNotification.Name.init(rawValue: UIApplication.didEnterBackgroundNotification.rawValue)
        static let needAnimatedSkeletonKey = "needAnimateSkeleton"
    }
    
    func addAppNotificationsObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(appDidBecomeActive), name: Constants.becomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground), name: Constants.enterForegroundNotification, object: nil)
    }
    
    func removeAppNoticationsObserver() {
        NotificationCenter.default.removeObserver(self, name: Constants.becomeActiveNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: Constants.enterForegroundNotification, object: nil)
    }
    
    @objc func appDidBecomeActive() {
        if UserDefaults.standard.bool(forKey: Constants.needAnimatedSkeletonKey) {
            startSkeletonAnimation()
        }
    }
    
    @objc func appDidEnterBackground() {
        UserDefaults.standard.set((isSkeletonActive && skeletonIsAnimated), forKey: Constants.needAnimatedSkeletonKey)
    }
}
