//
//  CovidFetchRequest.swift
//  CoronaTracker
//
//  Created by marvin evins on 11/14/20.
//

import Foundation
import Alamofire
import SwiftyJSON

class CovidFetchRequest: ObservableObject{
    
    @Published var allCountries:[CountryData] = []
    @Published var totalData : TotalData = testTotalData
    
    
    init(){
        getCurrentTotal()
    }
    
    func getCurrentTotal(){
        let headers: HTTPHeaders = [

        "x-rapidapi-host": "covid-19-data.p.rapidapi.com",

        "x-rapidapi-key": "d172e810e7msh47584ae043c146dp12d8eejsnb0b3c42c4a59"

        ]
      
        
        AF.request("https://covid-19-data.p.rapidapi.com/totals", headers: headers).responseJSON { response in
            //debugPrint(response)
            
            let result = response.data
            if result != nil {
                let json = JSON(result!)
                //print(json)
                
                let confirmed = json[0]["confirmed"].intValue
                let deaths = json[0]["deaths"].intValue
                let critical = json[0]["critical"].intValue
                let recovered = json[0]["recovered"].intValue
                
                
                self.totalData = TotalData(confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered)
                
                
            }
                else {
                    self.totalData = testTotalData
            }
        }
        

    }
}

