//
//  OrientationManager.swift
//  NaijaHeads
//
//

import UIKit
//Forces app into a specific lock orientation
enum OrientationManager {
    //Locks the app to specific rotation
    //mask: for the allowed ones like landscape/potrait
    static func lock(_ mask: UIInterfaceOrientationMask, rotateTo orientation: UIInterfaceOrientation? = nil) {
        //Asking which orientation is allowed currently
        AppDelegate.orientationLock = mask
        
        //Only rotate if a specific orientation was provided
        if let orientation {
            UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
            //Revaluvate orientation and rotate rn 
            UIViewController.attemptRotationToDeviceOrientation()
        }
    }
    //Once they leave the page goes back to normal
    static func unlock() {
        AppDelegate.orientationLock = .all
        UIViewController.attemptRotationToDeviceOrientation()
    }
}
