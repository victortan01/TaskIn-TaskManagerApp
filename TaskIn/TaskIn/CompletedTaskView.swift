//
//  CompletedTaskView.swift
//  TaskIn
//
//  Created by Victor Hartanto on 25/07/22.
//

import SwiftUI

struct CompletedTaskView: View {
    
    var tasklist: [Task] = TaskList.CompletedTaskData
    var body: some View {
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
                
                if ( task.isCompleted == false ) {
                    Image(systemName: "circle")
                        .foregroundColor(.gray)
                        .font(.system(size: 25))
                        .padding()
                } else {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.blue)
                        .font(.system(size: 25))
                        .padding()
                }
                
                    
            }// HStack
           
        }//List
    }
}

struct CompletedTaskView_Previews: PreviewProvider {
    static var previews: some View {
        CompletedTaskView()
    }
}
