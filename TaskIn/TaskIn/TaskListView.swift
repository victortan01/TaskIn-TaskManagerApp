//
//  TaskListView.swift
//  TaskIn
//
//  Created by Victor Hartanto on 25/07/22.
//

import SwiftUI

struct TaskListView: View {
    var body: some View {
        
            
        VStack {
            
                    ZStack{
                        Color(red: 0.19, green: 0.27, blue: 0.36, opacity: 1.00)
                            .edgesIgnoringSafeArea(.all)
                        
                        TaskDataView()
                    }
                    
                        
                
            .navigationTitle("Task List")
            .navigationBarTitleDisplayMode(.large)
            
            
            
        }//VStack
            
    
        
        
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
