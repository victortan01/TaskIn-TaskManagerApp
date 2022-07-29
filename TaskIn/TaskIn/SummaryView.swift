//
//  OverviewView.swift
//  TaskIn
//
//  Created by Victor Hartanto on 25/07/22.
//

import SwiftUI
import CoreData

struct SummaryView: View {
    
    var tasklist: [Task] = TaskList.TaskData3
    var tasklist2: [Task] = TaskList.CompletedTaskData2
    
    var tasklistbus: [Task] = TaskList.BusinessData
    var tasklisttec: [Task] = TaskList.TechData
    var tasklistdes: [Task] = TaskList.DesignData
    
    var body: some View {
        
        
        NavigationView {
            ZStack {
                Color(red: 0.19, green: 0.27, blue: 0.36, opacity: 1.00)
                    .edgesIgnoringSafeArea(.all)
               
             
                    
                
                VStack{
                    
                    HStack (spacing: 20) {
                        cardView()
                        
                        CategoryCardView(iconName: "icon_business", label: "Business", numberLabel: "\(tasklistbus.count)", cardColor: Color(red: 0.12, green: 0.81, blue: 0.70, opacity: 1.00))
                    }
                    .padding()
                    
                    
                    HStack (spacing: 20) {
                        CategoryCardView(iconName: "icon_tech", label: "Tech", numberLabel: "\(tasklisttec.count)", cardColor: Color(red: 0.12, green: 0.80, blue: 1.00, opacity: 1.00))
                        
                        CategoryCardView(iconName: "icon_design", label: "Design", numberLabel: "\(tasklistdes.count)", cardColor: Color(red: 0.31, green: 1.00, blue: 0.50, opacity: 1.00))
                    }
                    
                    
                    
                    HStack {
                        Text("Task")
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .padding(.top)
                            .padding(.leading,30)
                        
                        Spacer()
                        
                        NavigationLink(destination: TaskListView(), label: {
                            Text("See All")
                                .foregroundColor(.white)
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .padding(.trailing,30)
                            
                            
                        })
                        .padding(.top)
                    } // HStack
                    .padding(.bottom,15)
                    
                    List(tasklist, id: \.id) { task in
                        HStack {
                            VStack(alignment:.leading){
                                Text(task.taskName)
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                
                                ZStack {
                                    
                                    
                                    if (task.categoryName == "Business"){
                                        RoundedRectangle(cornerRadius: 4)
                                        .foregroundColor(Color(red: 0.12, green: 0.81, blue: 0.70, opacity: 1.00))
                                        .frame(width: 74, height: 19)
                                    } else if (task.categoryName == "Design") {
                                        RoundedRectangle(cornerRadius: 4)
                                        .foregroundColor(Color(red: 0.31, green: 1.00, blue: 0.50, opacity: 1.00))
                                        .frame(width: 74, height: 19)
                                    } else {
                                        RoundedRectangle(cornerRadius: 4)
                                        .foregroundColor(Color(red: 0.12, green: 0.80, blue: 1.00, opacity: 1.00))
                                        .frame(width: 74, height: 19)
                                    }
                                        
                                        
                                    
                                    Text(task.categoryName)
                                        .font(.system(size: 14))
                                } // ZStack
                                
                                
                            } // VStack
                            
                            Spacer()
                            Image(systemName: "circle")
                              //  .onTapGesture(perform: <#T##() -> Void#>)
                                .foregroundColor(.gray)
                                .font(.system(size: 25))
                                .padding()
                                
                        }// HStack
                       
                    }//List
                    .listStyle(.inset)
                    .frame(width: 347, height:220)
                    .cornerRadius(9)
                    
                    
                    
                    HStack {
                        Text("Completed Task")
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .padding(.top)
                            .padding(.leading,30)
                        
                        Spacer()
                        
                        NavigationLink(destination: CompletedTaskView(), label: {
                            Text("See All")
                                .foregroundColor(.white)
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .padding(.trailing,30)
                            
                            
                        })
                        .padding(.top)
                    } // HStack
                    .padding(.bottom)
                    
                    List(tasklist2, id: \.id) { task in
                        HStack {
                            VStack(alignment:.leading){
                                Text(task.taskName)
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                
                                ZStack {
                                    
                                    
                                    if (task.categoryName == "Business"){
                                        RoundedRectangle(cornerRadius: 4)
                                        .foregroundColor(Color(red: 0.12, green: 0.81, blue: 0.70, opacity: 1.00))
                                        .frame(width: 74, height: 19)
                                    } else if (task.categoryName == "Design") {
                                        RoundedRectangle(cornerRadius: 4)
                                        .foregroundColor(Color(red: 0.31, green: 1.00, blue: 0.50, opacity: 1.00))
                                        .frame(width: 74, height: 19)
                                    } else {
                                        RoundedRectangle(cornerRadius: 4)
                                        .foregroundColor(Color(red: 0.12, green: 0.80, blue: 1.00, opacity: 1.00))
                                        .frame(width: 74, height: 19)
                                    }
                                        
                                        
                                    
                                    Text(task.categoryName)
                                        .font(.system(size: 14))
                                } // ZStack
                                
                                
                            } // VStack
                            
                            Spacer()
                            Image(systemName: "circle")
                              //  .onTapGesture(perform: <#T##() -> Void#>)
                                .foregroundColor(.gray)
                                .font(.system(size: 25))
                                .padding()
                                
                        }// HStack
                       
                    }//List
                    .listStyle(.inset)
                    .frame(width: 347, height:150)
                    .cornerRadius(9)
                    
                    
                } // VStack
                
                
                
                
                .toolbar{
                    Button("+ Add Task"){
                        print("Add Task Tapped")
                    }
                    .foregroundColor(.white)
                }
                
            } // ZStack
            
            .navigationBarTitleDisplayMode(.inline)
            
        } // Nav View
        
        
        
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}

struct cardView: View {
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 160, height: 90)
                .foregroundColor(Color.init(red: 0.32, green: 0.64, blue: 1.00, opacity: 1.00))
                .overlay(
                
                    ZStack {
                        NavigationLink(destination: OverviewView(), label: {
                            Text("")
                                .frame(width: 160, height: 90)
                        })
                        Text("Overview")
                            .fontWeight(.semibold)
                        
                    } //ZStack
                ) //overlay
        } //ZStack
        
    }
}
