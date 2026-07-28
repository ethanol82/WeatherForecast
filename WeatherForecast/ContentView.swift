//
//  ContentView.swift
//  WeatherForecast
//
//  Created by WooChan Shin on 7/28/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Weather for this week")
                .font(Font.title)
                .fontWeight(Font.Weight.bold)
                .padding(20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .border(.orange)
            
            HStack(spacing: 8) {
                DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
                
                DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
                
                DayForecast(day: "Wed", isRainy: true, high: 40, low: 32)
                
                DayForecast(day: "Thu", isRainy: true, high: 60, low: 40)
                
                DayForecast(day: "Fri", isRainy: false, high: 70, low: 50)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            Spacer()
        }
        .padding(.top, 50)
        
        
    }
}
struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var highColor: Color {
        high > 60 ? Color.red : Color.black
    }
    
    var iconName: String {
        isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColor: Color {
        isRainy ? Color.blue : Color.yellow
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.subheadline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.title2)
            Text("H: \( Text("\(high)º").foregroundStyle(highColor))")
                .fontWeight(Font.Weight.semibold)
            Text("L: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding(5)
        .frame(width: 70, height: 100)
        .border(.blue)
    }
}

#Preview {
    ContentView()
}
