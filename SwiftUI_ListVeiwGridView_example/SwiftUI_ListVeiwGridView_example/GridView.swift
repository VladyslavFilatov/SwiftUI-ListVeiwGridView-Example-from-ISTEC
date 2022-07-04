//
//  GridView.swift
//  SwiftUI_ListVeiwGridView_example
//
//  Created by Vladyslav Filatov on 01/07/2022.
//

import SwiftUI

struct GridView: View {
    
    @StateObject var vm = ListViewModel()
    
    var columns:[GridItem] = [.init(.fixed(250), spacing: 10),
                              .init(.fixed(250), spacing: 10),
                              .init(.fixed(250), spacing: 10)]
    
    var body: some View {
       
        NavigationView{
            ScrollView(.horizontal, showsIndicators: false) {
                
                LazyVGrid(columns: columns) {
                    
                    ForEach(vm.listStudents){ student in
                        
                        NavigationLink {
                            Text("Hello World")
                        } label: {
                            ListRowView(std: student)
                                .foregroundColor(.black)
                        }
                        
                        
                        
                    } // ForEach
                    
                } // LazyVGrid
                
                
            } // ScrollView
            .navigationTitle("Grid Students")
            
        } // NavigationView
        
        
    } // body
} // GridView

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
