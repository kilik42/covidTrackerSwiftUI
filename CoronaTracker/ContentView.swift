//
//  ContentView.swift
//  CoronaTracker
//
//  Created by marvin evins on 11/14/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {
        Text("\(covidFetch.totalData.confirmed)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
