//
//  ContentView.swift
//  refactor-ios
//
//  Created by Ron Parnaso on 2/17/20.
//  Copyright © 2020 Ron Parnaso. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            Text("Track View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "pencil.and.ellipsis.rectangle")
                        Text("Track")
                    }
                }
                .tag(0)
            Text("Measure View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "chart.pie.fill")
                        Text("Measure")
                    }
                }
                .tag(1)
            Text("Motivate View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "person.3.fill")
                        Text("Motivate")
                    }
                }
                .tag(2)
            Text("Core View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "tv.music.note.fill")
                        Text("Core")
                    }
                }
                .tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
