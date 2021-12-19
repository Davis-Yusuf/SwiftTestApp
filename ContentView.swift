//
//  ContentView.swift
//  TestApp
//
//  Created by Davis Yusuf on 12/15/21.
//

import SwiftUI

struct ContentView: View {
    let slots = ["apple", "star", "cherry"]
    @State var money = 1000
    @State var first = "apple"
    @State var second = "star"
    @State var third = "cherry"
    var body: some View{
        VStack() {
            Text("SLOT MACHINE")
                .font(.title)
            Text("Press spin to WIN!")
                .font(.headline)
            Spacer()
            Text("$: " + String(money))
            Spacer()
            HStack() {
                Spacer()
                Image(first)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(second)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(third)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            Spacer()
            Button(action: {
                first = slots.randomElement()!
                second = slots.randomElement()!
                third = slots.randomElement()!
                
                if (first == second) && (second == third) {
                    money += 150
                }
                else {
                    money -= 50
                }
            }, label: { Text("Spin")
                .foregroundColor(Color.black)})
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
