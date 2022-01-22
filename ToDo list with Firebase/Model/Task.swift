//
//  Task.swift
//  ToDo list with Firebase
//
//  Created by Guillaume Ramey on 22/01/2022.
//

import Foundation

struct Task: Identifiable {
  let id = UUID().uuidString
  var title: String
  var completed: Bool
}

#if DEBUG
let debugTasks = [
  Task(title: "Task 1", completed: true),
  Task(title: "Task 2", completed: false),
  Task(title: "Task 3", completed: false),
  Task(title: "Task 4", completed: false)
]
#endif
