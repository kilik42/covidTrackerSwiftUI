//
//  TotalData.swift
//  CoronaTracker
//
//  Created by marvin evins on 11/14/20.
//

import Foundation

struct TotalData {
    let confirmed: Int
    let critical:Int
    let deaths:Int
    let recovered:Int
    
    var fataliyRate: Double{
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}
