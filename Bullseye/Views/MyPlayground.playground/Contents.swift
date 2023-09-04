import UIKit

class Animal {
  var name: String

  required init(name: String) {
    self.name = name
  }

  func speak() {

  }
}

class Dog: Animal {
  var trickCount: Int

  convenience init() {
    self.init(name: "Max", trickCount: 3)
  }

  convenience required init(name: String) {
    self.init(name: name, trickCount: 0)
  }

  init(name: String, trickCount: Int) {
    self.trickCount = trickCount
    super.init(name: name)
    speak()
  }

  override func speak() {
    print("Hello, \(name)")
  }
}
