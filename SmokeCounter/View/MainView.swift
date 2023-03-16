//
//  MainView.swift
//  SmokeCounter
//
//  Created by 이보한 on 2023/03/10.
//

import SwiftUI

struct MainView: View {
    @State private var todaySmoked = 0
    @State private var costPerSmoke = settingValues.cigarettesPerCost / 20
    
    var body: some View {
        VStack {
            ZStack {
                Text("\(todaySmoked)")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top)

                HStack {
                    Spacer()
                    Button(action: {
                        if todaySmoked > 0 {
                            todaySmoked -= 1 } else { return }
                    }, label: {
                        Image(systemName: "minus")
                            
                            .foregroundColor(.white)
                            .frame(width: 90, height: 70)
                            .background(Color.pink)
                            .clipShape(Capsule())
                    })
                    .shadow(color: .gray, radius: 10, x: 0.0, y:10)
                    
                    Spacer()
                    
                    Spacer()
                    
                    Button(action: {
                        todaySmoked += 1
                    }, label: {
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .frame(width: 90, height: 70)
                            .background(Color.pink)
                            .clipShape(Capsule())
                    })
                    .shadow(color: .gray, radius: 10, x: 0.0, y:10)
                    
                    Spacer()

                }
                .padding(.top)
            }
            
            Spacer()
            
            Text("오늘의 흡연량: \(todaySmoked / 20)갑 \(todaySmoked % 20)개피")
                .font(.system(size: 25, weight: .semibold))
                .padding(.bottom)
                .padding(.top)
            Text("\(todaySmoked * costPerSmoke)원 어치")
                .font(.system(size: 20))
            Spacer()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
