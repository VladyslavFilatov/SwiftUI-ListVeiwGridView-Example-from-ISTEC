//
//  ListRowView.swift
//  SwiftUI_ListVeiwGridView_example
//
//  Created by Vladyslav Filatov on 01/07/2022.
//

import SwiftUI

struct ListRowView: View {
    var std:Student
    var body: some View {
        
        HStack{
        Image(systemName: "person.circle")
                .resizable()
                .frame(width: 50, height: 50)
                
            Spacer()
                .frame(width: 20)
        VStack(alignment:.leading){
            Text(std.name)
                .font(.title.bold())
            VStack(alignment:.leading){
                Text(std.course)
                    .font(.headline)
                    .padding(.trailing, 20)
                Text(std.email)
                    .font(.caption)
                    .padding(.trailing, 20)
              
                    
                
            }
            
        }
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(std: .init(name: "Name", email: "E-mail", course: "Course"))
    }
}
