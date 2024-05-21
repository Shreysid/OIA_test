//
//  ContentView.swift
//  openInApptest
//
//  Created by Shrey Sid on 21/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
                    VStack(alignment: .leading) {
                        HeaderView()
                        GreetingView()
                        OverviewChartView()
//                        SummaryCardsView()
//                        CustomButtonView()
                    }
                    .padding()
                }
                .background(Color(UIColor.systemGray6))
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            Text("Dashboard")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            Button(action: {
                // Action for settings button
            }) {
                Image(systemName: "gearshape.fill")
                    .font(.title)
            }
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(10)
    }
}

struct GreetingView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Good morning")
                .font(.title2)
            HStack {
                Text("Ajay Manva")
                    .font(.title)
                    .fontWeight(.bold)
                Image(systemName: "hand.wave.fill")
                    .font(.title)
                    .foregroundColor(.yellow)
            }
        }
        .padding(.vertical)
    }
}

struct OverviewChartView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Overview")
                    .font(.headline)
                Spacer()
                DatePicker("", selection: .constant(Date()), displayedComponents: .date)
                    .labelsHidden()
            }
            .padding(.horizontal)
            
            // Placeholder for the chart
            ChartPlaceholderView()
                .frame(height: 200)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
        }
        .padding(.vertical)
    }
}

struct SummaryCardsView: View {
    var body: some View {
        HStack(spacing: 16) {
            SummaryCardView(title: "123", subtitle: "Today's clicks", icon: "cursorarrow.click")
            SummaryCardView(title: "Ahmedabad", subtitle: "Top Location", icon: "map.fill")
            SummaryCardView(title: "Instagram", subtitle: "Top source", icon: "globe")
        }
    }
}

struct SummaryCardView: View {
    var title: String
    var subtitle: String
    var icon: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.largeTitle)
                .padding()
                .background(Color(UIColor.systemGray5))
                .cornerRadius(10)
            Text(title)
                .font(.title)
                .fontWeight(.bold)
            Text(subtitle)
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct ChartPlaceholderView: View {
    var body: some View {
        // Placeholder content for the chart
        GeometryReader { geometry in
            Path { path in
                let width = geometry.size.width
                let height = geometry.size.height
                path.move(to: CGPoint(x: 0, y: height))
                path.addLine(to: CGPoint(x: width * 0.25, y: height * 0.6))
                path.addLine(to: CGPoint(x: width * 0.5, y: height * 0.4))
                path.addLine(to: CGPoint(x: width * 0.75, y: height * 0.7))
                path.addLine(to: CGPoint(x: width, y: height * 0.2))
            }
            .stroke(Color.blue, lineWidth: 2)
            .background(Color.blue.opacity(0.1))
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
