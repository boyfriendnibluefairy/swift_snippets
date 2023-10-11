//
//  TimerData.swift
//  is our observable object.
//  Later, we will edit the code so that the class
//  below will be used as environment object
//

import Foundation
// Combine framework declares publishers
// to expose values that can change over time
import Combine

class TimerData : ObservableObject {
    @Published var timeCount = 0
    var timer : Timer?
    
    init(){
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(timerDidFire),
                                     userInfo:nil,
                                     repeats:true)
    }
    
    // @objc attribute tells swift to make the code below available to Objective C as well.
    @objc func timerDidFire() {
        timeCount += 1
    }
    
    func resetCount() {
        timeCount = 0
    }
}
