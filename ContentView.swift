//
//  ContentView.swift
//  warchallenge
//
//  Created by philip ake on 8/2/22.
//

import SwiftUI

struct ContentView: View {
    @State var totalPlayerScore = 0
    @State var totalCPUScore = 0
    @State var playerCard = "card"
    @State var cpuCard = "card"
    var body: some View {

        
        ZStack {
            Image("background").resizable().aspectRatio(contentMode: .fill).ignoresSafeArea()
            VStack{
            Spacer()
            Image("logo")
            Spacer()
                HStack{
            Spacer()
                    
            Image(playerCard)
            Spacer()
            Image(cpuCard)
            Spacer()
                }
            Spacer()
                Button {
                    let playerRand = Int.random(in:2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand {
                    totalPlayerScore += 1
                    }
                    else if cpuRand > playerRand {
                        totalCPUScore += 1
                    }
                    }
                label: {
                    Image("dealbutton")
                }

            Spacer()
                HStack{
                Spacer()
                    Text("Player")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                Spacer()
                Spacer()
                    Text("CPU")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                Spacer()
                }
                HStack{
                Spacer()
                    Text(String(totalPlayerScore))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                Spacer()
                Spacer()
                    Text(String(totalCPUScore))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                Spacer()
                }
          Spacer()
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
