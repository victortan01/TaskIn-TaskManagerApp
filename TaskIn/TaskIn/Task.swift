//
//  Task.swift
//  TaskIn
//
//  Created by Victor Hartanto on 25/07/22.
//

import Foundation
import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    let taskName: String
    let categoryName: String
    let isCompleted: Bool
}

struct TaskList {
    
    static let TaskData = [
        Task(taskName: "Learn SwiftUI", categoryName: "Tech", isCompleted: false),
        Task(taskName: "Application Business Model", categoryName: "Business", isCompleted: false),
        Task(taskName: "Color Grading and Contrast", categoryName: "Design", isCompleted: false),
        Task(taskName: "CoreData SwiftUI", categoryName: "Tech", isCompleted: false),
        Task(taskName: "Chart SwiftUI", categoryName: "Tech", isCompleted: false),
        Task(taskName: "How to make a good UX", categoryName: "Design", isCompleted: false),
        Task(taskName: "SaaS Business Model", categoryName: "Business", isCompleted: false),
        Task(taskName: "TikTok study case", categoryName: "Business", isCompleted: false),
        Task(taskName: "How to choose brand name", categoryName: "Design", isCompleted: false),
        Task(taskName: "Make custom cell SwiftUI", categoryName: "Tech", isCompleted: false),
        
    ]
    
    static let TaskData3 = [
        Task(taskName: "Learn SwiftUI", categoryName: "Tech", isCompleted: false),
        Task(taskName: "Application Business Model", categoryName: "Business", isCompleted: false),
        Task(taskName: "Color Grading and Contrast", categoryName: "Design", isCompleted: false),
    ]
    
    static let CompletedTaskData = [
        Task(taskName: "Learn UIKit", categoryName: "Tech", isCompleted: true),
        Task(taskName: "Business Process Fundamental", categoryName: "Business", isCompleted: true),
        Task(taskName: "Design UI for Fintech", categoryName: "Design", isCompleted: true),
        Task(taskName: "Learn UIKit", categoryName: "Tech", isCompleted: true),
        Task(taskName: "Business Process Fundamental", categoryName: "Business", isCompleted: true),
        Task(taskName: "Design UI for Fintech", categoryName: "Design", isCompleted: true),
        Task(taskName: "Learn UIKit", categoryName: "Tech", isCompleted: true),
        Task(taskName: "Business Process Fundamental", categoryName: "Business", isCompleted: true),
        Task(taskName: "Design UI for Fintech", categoryName: "Design", isCompleted: true),
        Task(taskName: "Learn UIKit", categoryName: "Tech", isCompleted: true),
        Task(taskName: "Business Process Fundamental", categoryName: "Business", isCompleted: true),
        Task(taskName: "Design UI for Fintech", categoryName: "Design", isCompleted: true),
        Task(taskName: "Learn UIKit", categoryName: "Tech", isCompleted: true),
        Task(taskName: "Business Process Fundamental", categoryName: "Business", isCompleted: true),
        Task(taskName: "Design UI for Fintech", categoryName: "Design", isCompleted: true),
        Task(taskName: "Learn UIKit", categoryName: "Tech", isCompleted: true),
        Task(taskName: "Business Process Fundamental", categoryName: "Business", isCompleted: true),
        Task(taskName: "Design UI for Fintech", categoryName: "Design", isCompleted: true)
        
            
    ]
    
    static let CompletedTaskData2 = [
        Task(taskName: "Learn UIKit", categoryName: "Tech", isCompleted: true),
        Task(taskName: "Business Process Fundamental", categoryName: "Business", isCompleted: true),
    ]
    
    static let BusinessData = [
        Task(taskName: "Application Business Model", categoryName: "Business", isCompleted: false),
        Task(taskName: "SaaS Business Model", categoryName: "Business", isCompleted: false),
        Task(taskName: "TikTok study case", categoryName: "Business", isCompleted: false),
    ]
    
    static let DesignData = [
        Task(taskName: "Color Grading and Contrast", categoryName: "Design", isCompleted: false),
        Task(taskName: "How to make a good UX", categoryName: "Design", isCompleted: false),
        Task(taskName: "How to choose brand name", categoryName: "Design", isCompleted: false),
    ]
    
    static let TechData = [
        Task(taskName: "Learn SwiftUI", categoryName: "Tech", isCompleted: false),
        Task(taskName: "CoreData SwiftUI", categoryName: "Tech", isCompleted: false),
        Task(taskName: "Chart SwiftUI", categoryName: "Tech", isCompleted: false),
        Task(taskName: "Make custom cell SwiftUI", categoryName: "Tech", isCompleted: false),

    ]
}
