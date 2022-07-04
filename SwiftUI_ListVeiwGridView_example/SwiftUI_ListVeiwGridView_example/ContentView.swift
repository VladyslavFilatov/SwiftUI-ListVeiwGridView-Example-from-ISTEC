//
//  ContentView.swift
//  SwiftUI_ListVeiwGridView_example
//
//  Created by Vladyslav Filatov on 01/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            ListView()
                .tabItem {
                    Text("ListView")
                }
            
            GridView()
                .tabItem {
                    Text("GridView")
                }
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
