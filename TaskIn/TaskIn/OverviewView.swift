//
//  OverviewView.swift
//  TaskIn
//
//  Created by Victor Hartanto on 25/07/22.
//

import SwiftUICharts
import SwiftUI

struct OverviewView: View {
    
    var tasklist: [Task] = TaskList.TaskData
    var tasklistbus: [Task] = TaskList.BusinessData
    var tasklisttec: [Task] = TaskList.TechData
    var tasklistdes: [Task] = TaskList.DesignData
    
    
    var body: some View {
        ZStack{
            Color(red: 0.19, green: 0.27, blue: 0.36, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack{
                BarChartView(
                    data: ChartData(values: [
                    ("S",tasklistdes.count),
                    ("M",7),
                    ("T",8),
                    ("W",3),
                    ("T",4),
                    ("F",7),
                    ("S",1)
                    ]),
                    title: "Weekly Overview", form: ChartForm.extraLarge)
                .padding()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 364, height: 77)
                        .padding()
                    .foregroundColor(.blue)
                    
                    HStack {
                        Text("Total Task Done")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.leading,30)
                        
                        Spacer()
                        
                        Text("\(25)")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.trailing,30)
                        
                    } // HStack
                    
                    
                }//ZStack
                
                .padding(.bottom)
                
                Text("Details")
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.trailing,290)
                
                    .padding(.bottom)
                
                HStack{
                    Image("icon_business")
                        .padding(.leading,30)
                        .foregroundColor(Color(red: 0.12, green: 0.81, blue: 0.70, opacity: 1.00))
                    Text("Business")
                        .foregroundColor(Color(red: 0.12, green: 0.81, blue: 0.70, opacity: 1.00))
                    Spacer()
                    
                    Text("12")
                        .fontWeight(.semibold)
                        .padding(.trailing,35)
                        .foregroundColor(Color(red: 0.12, green: 0.81, blue: 0.70, opacity: 1.00))
                        
                } // HStack
                
                HStack{
                    Image("icon_tech")
                        .padding(.leading,30)
                        .foregroundColor(Color(red: 0.12, green: 0.81, blue: 0.70, opacity: 1.00))
                    Text("Tech")
                        .foregroundColor(Color(red: 0.12, green: 0.80, blue: 1.00, opacity: 1.00))
                    Spacer()
                    
                    Text("7")
                        .fontWeight(.semibold)
                        .padding(.trailing,35)
                        .foregroundColor(Color(red: 0.12, green: 0.80, blue: 1.00, opacity: 1.00))
                        
                } // HStack
                
                HStack{
                    Image("icon_design")
                        .padding(.leading,30)
                        .foregroundColor(Color(red: 0.31, green: 1.00, blue: 0.50, opacity: 1.00))
                    Text("Design")
                        .foregroundColor(Color(red: 0.31, green: 1.00, blue: 0.50, opacity: 1.00))
                    Spacer()
                    
                    Text("6")
                        .fontWeight(.semibold)
                        .padding(.trailing,35)
                        .foregroundColor(Color(red: 0.31, green: 1.00, blue: 0.50, opacity: 1.00))
                        
                } // HStack
                
                
                
                
                
                
            } // VStack
        } // ZStack
        
    }
}

struct OverviewView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewView()
    }
}
