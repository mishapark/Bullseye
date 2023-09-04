//
//  Shapes.swift
//  Bullseye
//
//  Created by Михаил Пак on 2023-08-02.
//

import SwiftUI

struct Shapes: View {
  var body: some View {
    VStack {
      Circle()
//        .fill(Color.blue)
        .strokeBorder(Color.purple, lineWidth: 20)
        .frame(width: 200, height: 100)
        .background(Color.green)
      RoundedRectangle(cornerRadius: 20)
        .frame(width: 200, height: 100)
      Capsule()
        .frame(width: 200, height: 100)
      Ellipse()
        .frame(width: 200, height: 100)
    }
  }
}

struct Shapes_Previews: PreviewProvider {
  static var previews: some View {
    Shapes()
  }
}
