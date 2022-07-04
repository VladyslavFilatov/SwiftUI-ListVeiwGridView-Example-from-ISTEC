//
//  ListView.swift
//  SwiftUI_ListVeiwGridView_example
//
//  Created by Vladyslav Filatov on 01/07/2022.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var vm = ListViewModel()
    
    var body: some View {
        
        NavigationView{
            VStack{
                
            List{
                
                Section {
                    ForEach(vm.listStudents){  student in
                      
                        /*
                        Button {
                            print("Ação \(aluno.nome)")
                        } label: {
                            ListRowView(al: aluno)
                                .foregroundColor(.black)
                        }
                         */
                        
                        NavigationLink {
                            Text("Hello World")
                        } label: {
                            ListRowView(std: student)
                                .foregroundColor(.black)
                        }

                        

                      
                        
                    }// ForEach
                    .onDelete { indexSet in
                        self.vm.deleteStudent(indexSet: indexSet)
                    }
                    .onMove { indexSet, i in
                        self.vm.move(from:indexSet, to: i )
                    }
                } header: {// sectiion
                    VStack{
                        Text("Course A")
                    }
                } footer: {
                    Text("End Course A")
                }
                
            } // List
            .listStyle(.insetGrouped)
            .toolbar(content: {
                HStack{
                    
                    EditButton()
                    Button {
                        self.vm.addMenu = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            })// toolbar

            } //VStack
            .sheet(isPresented: self.$vm.addMenu, content: {
                
                Group{
                    TextField("Name", text: self.$vm.nameVM)
                    TextField("Email", text: self.$vm.emailVM)
                    TextField("Course", text: self.$vm.courseVM)
                }
                .textFieldStyle(.roundedBorder)
                .padding()
                
                Button {
                    self.vm.addStudent()
                    
                } label: {
                    
                    Text("Add Students")
                        .bold()
                        .frame(width: 110, height: 60)
                        .background(.blue)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                    
                }
                
                
            }) // shett
            .navigationTitle("List Students")
            
            
        } // NavigationView
    } // body
} // ListView

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
