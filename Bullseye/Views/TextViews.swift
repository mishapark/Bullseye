//
//  TextViews.swift
//  Bullseye
//
//  Created by Михаил Пак on 2023-08-01.
//

import SwiftUI

struct InstructionsView: View {
  @Binding var game: Game

  var body: some View {
    VStack {
      InstructionText(text: "🎯🎯🎯\nPut the Bullseye as close as you can to")
        .padding(.horizontal, 30)
      BigNumberText(numberText: String(game.target))
    }
  }
}

struct InstructionText: View {
  var text: String

  var body: some View {
    Text(text.uppercased())
      .bold()
      .multilineTextAlignment(.center)
      .lineSpacing(4)
      .font(.footnote)
      .kerning(2)
      .foregroundColor(Color("TextColor"))
  }
}

struct LabelText: View {
  var text: String

  var body: some View {
    Text(text.uppercased())
      .bold()
      .foregroundColor(Color("TextColor"))
      .font(.caption)
      .kerning(1.5)
  }
}

struct BodyText: View {
  var text: String

  var body: some View {
    Text(text)
      .font(.subheadline)
      .fontWeight(.semibold)
      .multilineTextAlignment(.center)
      .lineSpacing(12)
  }
}

struct ScoreText: View {
  var score: Int

  var body: some View {
    Text(String(score))
      .bold()
      .kerning(-0.2)
      .font(.title3)
      .foregroundColor(Color("TextColor"))
  }
}

struct DateText: View {
  var date: Date

  var body: some View {
    Text(date, style: .time)
      .bold()
      .kerning(-0.2)
      .font(.title3)
      .foregroundColor(Color("TextColor"))
  }
}

struct ButtonText: View {
  var text: String

  var body: some View {
    Text(text)
      .bold()
      .padding()
      .frame(maxWidth: .infinity)
      .background(
        Color.accentColor
      )
      .foregroundColor(.white)
      .cornerRadius(12)
  }
}

struct BigNumberText: View {
  var numberText: String

  var body: some View {
    Text(numberText)
      .font(.largeTitle)
      .kerning(-1)
      .fontWeight(.black)
      .foregroundColor(Color("TextColor"))
  }
}

struct SliderLabelText: View {
  var text: String

  var body: some View {
    Text(text)
      .bold()
      .foregroundColor(Color("TextColor"))
  }
}

struct BigBoldText: View {
  var text: String

  var body: some View {
    Text(text.uppercased())
      .foregroundColor(Color("TextColor"))
      .kerning(2)
      .font(.title)
      .fontWeight(.black)
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      LabelText(text: "Hello")
      BodyText(text: "asdasdaDASD\n🔥🔥🔥")
      ButtonText(text: "Aasdsasd")
      ScoreText(score: 123)
      DateText(date: Date())
      BigBoldText(text: "Aasdsasd")
    }
  }
}
