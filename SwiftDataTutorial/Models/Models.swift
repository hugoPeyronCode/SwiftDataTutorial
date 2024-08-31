//
//  Models.swift
//  SwiftDataTutorial
//
//  Created by Hugo Peyron on 31/08/2024.
//

/// How does SwiftData works?
/// It requires three main blocks to operate.
/// 1. A model: data
/// 2. A container: where things get saved
/// 3. A context: how/where you interact
///
/// Blog Post
/// https://www.swiftyplace.com/blog/modeling-data-in-swiftdata

import Foundation
import SwiftData

@Model final class Lesson {
  let id = UUID()
  let sessions: [Session]
  var isCompleted: Bool { sessions.allSatisfy(\.isCompleted)}

  init(sessions: [Session]) {
    self.sessions = sessions
  }

}

@Model final class Session {
  let id = UUID()
  let exercises: [Exercise]
  var isCompleted: Bool { exercises.allSatisfy(\.isCompleted)}

  init(exercises: [Exercise]) {
    self.exercises = exercises
  }

}

@Model final class Exercise {
  let id = UUID()
  let isCompleted: Bool

  init(isCompleted: Bool) {
    self.isCompleted = isCompleted
  }

}
