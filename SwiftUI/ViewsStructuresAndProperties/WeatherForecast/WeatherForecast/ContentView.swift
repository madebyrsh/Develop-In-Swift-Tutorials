//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Shayne Ryu on 5/6/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            
            DayForecast() // DayForecast Struct를 SubView로 표시
            
            DayForecast()
        }
        
    }
}

struct DayForecast: View {
    var body: some View {
        VStack {
            Text("Mon")
            Image(systemName: "sun.max.fill")
                .foregroundColor(Color.yellow)
            Text("High: 70")
            Text("Low: 50")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
