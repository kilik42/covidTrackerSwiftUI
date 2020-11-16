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


struct CountryData{
    let Country: String
    let confirmed: Int64
    let critical:Int64
    let deaths:Int64
    let recovered:Int64
    
    let longitude: Double
    let latitude: Double
    
    
    var fataliyRate: Double{
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
    
}


let testTotalData = TotalData(confirmed: 200, critical: 100, deaths: 20, recovered: 45)

let testCountryData = CountryData(Country: "Test", confirmed: 500, critical: 300, deaths: 200, recovered: 100, longitude: 0.0, latitude: 0.0)
