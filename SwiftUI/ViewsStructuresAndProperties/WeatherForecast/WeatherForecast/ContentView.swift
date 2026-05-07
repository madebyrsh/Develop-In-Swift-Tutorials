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
            
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50) // DayForecast Struct를 SubView로 표시
            
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 30)
        }
        
    }
}

struct DayForecast: View {
    
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName : String {
        if isRainy {
            return "cloud.rain.fill"
        }
        else {
            return "sun.max.fill"
        }
        
    }
    
    var iconColor : Color {
        if isRainy {
            return Color.blue
        }
        else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundColor(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundColor(Color.secondary)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
