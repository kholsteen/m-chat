//
//  Analytics.swift
//  Family
//
//  Created by Sercan Değirmenci on 20/04/16.
//  Copyright © 2016 Otsimo. All rights reserved.
//

import Foundation


protocol AnalyticsProtocol {
    func start(_ env: String)
    func setUserInfo()
    func event(_ event: String, data: [String: Any]?)
    func screen(_ name:String)
}


class AnalyticsWrapper: AnalyticsProtocol {

    let services: [AnalyticsProtocol]

    init() {
        services = [
                    GoogleAnalytics()]
    }

    func start(_ env: String) {
        for s in services {
            s.start(env)
        }
    }

    func event(_ event: String, data: [String: Any]?) {
        DispatchQueue.global(qos: DispatchQoS.QoSClass.default).async {
            for s in self.services {
                s.event(event, data: data)
            }
        }
    }
    
    func setUserInfo() {
        for s in services {
            s.setUserInfo()
        }
    }
    
    func screen(_ name:String){
        DispatchQueue.global(qos: DispatchQoS.QoSClass.default).async {
            for s in self.services {
                s.screen(name)
            }
        }
    }
}
