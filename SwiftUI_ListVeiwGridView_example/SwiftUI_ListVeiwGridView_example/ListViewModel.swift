//
//  ListViewModel.swift
//  SwiftUI_ListVeiwGridView_example
//
//  Created by Vladyslav Filatov on 01/07/2022.
//

import Foundation

class ListViewModel:ObservableObject{
    
    
    @Published var listStudents:[Student] = []{
        
        didSet{
            
            nameVM = ""
            emailVM = ""
            courseVM = ""
            addMenu = false
            
        }
    }
    
    var nameVM:String = ""
    var emailVM:String = ""
    var courseVM = ""
    
    @Published var addMenu = false
    
    init(){
        
        var std1 = Student(name: "Vladyslav", email: "vladyslav@gmail.com", course: "Swift")
        listStudents.append(std1)
        
        std1 = Student(name: "Maria", email: "maria@gmail.com", course: "Java")
        listStudents.append(std1)
        
        std1 = Student(name: "Alex", email: "alex@gmail.com", course: "Kotlin")
        listStudents.append(std1)
        
    }
    
    func addStudent(){
        listStudents.append(Student(name: self.nameVM, email: self.emailVM, course: self.courseVM))
    }
 
    
    func deleteStudent(indexSet:IndexSet){
        self.listStudents.remove(atOffsets: indexSet)
    }
    
    func move(from insexSet:IndexSet, to position:Int){
        self.listStudents.move(fromOffsets: insexSet, toOffset: position)
    }
    
    
}
