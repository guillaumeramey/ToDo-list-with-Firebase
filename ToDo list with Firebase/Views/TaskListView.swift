//
//  TaskListView.swift
//  ToDo list with Firebase
//
//  Created by Guillaume Ramey on 22/01/2022.
//

import SwiftUI

struct TaskListView: View {

  let tasks = debugTasks

  var body: some View {
    NavigationView {
      VStack(alignment: .leading) {
        List(tasks) { task in
          TaskCell(task: task)
        }

        Button {

        } label: {
          Image(systemName: "plus.circle")
          Text("New task")
        }
        .padding(.all)
        .font(.title3)
      }
      .navigationTitle("Tasks")
    }
  }
}

struct TaskListView_Previews: PreviewProvider {
  static var previews: some View {
    TaskListView()
  }
}

struct TaskCell: View {
  var task: Task

  var body: some View {
    HStack {
      Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
      Text(task.title)
    }
    .font(.title3)
  }
}
