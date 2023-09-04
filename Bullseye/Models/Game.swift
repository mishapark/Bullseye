//
//  Game.swift
//  Bullseye
//
//  Created by Михаил Пак on 2023-07-31.
//

import Foundation

struct Game {
  var target = Int.random(in: 1 ... 100)
  var score = 0
  var round = 1
  var leaderboardEntries: [LeaderboardEntry] = []

  init(loadTestData: Bool = false) {
    if loadTestData == true {
      leaderboardEntries.append(LeaderboardEntry(score: 100, date: Date()))
      leaderboardEntries.sort { entry1, entry2 in
        entry1.score > entry2.score
      }
      leaderboardEntries.append(LeaderboardEntry(score: 12, date: Date()))
      leaderboardEntries.sort { entry1, entry2 in
        entry1.score > entry2.score
      }
      leaderboardEntries.append(LeaderboardEntry(score: 78, date: Date()))
      leaderboardEntries.sort { entry1, entry2 in
        entry1.score > entry2.score
      }
    }
  }

  func points(sliderValue: Int) -> Int {
    let difference: Int = abs(target - sliderValue)
    let bonus: Int

    if difference == 0 {
      bonus = 100
    } else if difference <= 2 {
      bonus = 50
    } else {
      bonus = 0
    }

    return 100 - difference + bonus
  }

  mutating func startNewRound(points: Int) {
    leaderboardEntries.append(LeaderboardEntry(score: points, date: Date()))
    leaderboardEntries.sort { entry1, entry2 in
      entry1.score > entry2.score
    }

    score += points
    round += 1
    target = Int.random(in: 1 ... 100)
  }

  mutating func restart() {
    score = 0
    round = 1
    target = Int.random(in: 1 ... 100)
  }
}

struct LeaderboardEntry {
  let score: Int
  let date: Date
}
