//
//  StatusView.swift
//  SmokeCounter
//
//  Created by 이보한 on 2023/03/10.
//

import SwiftUI
import Charts

struct StatusView: View {
    @State private var today = Date()
    @State private var startedDay = Date()
    @State private var spentMoney = settingValues.smokedTillToday * settingValues.cigarettesPerCost / 20

    var body: some View {
        

        VStack {
            
            Chart {
                ForEach(data, id: \.month) {
//                    AreaMark(
//                        x: .value("Month", $0.month, unit: .month),
//                        yStart: .value("Daily Min", $0.dailyMin),
//                        yEnd: .value("Daily Max", $0.dailyMax)
//                    )
//                    .opacity(0.3)
                    LineMark(
                        x: .value("Month", $0.month, unit: .month),
                        y: .value("Daily Average", $0.dailyAverage)
                    )
                }
            }
            
            Text("\(today, formatter: dateformatter.dateFormat)")
                .font(.system(size: 30, weight: .black))
            Text("이번달은 \(spentMoney)원 어치 피웠습니다.")
            Text("\(spentMoney)는 \(round(Double(spentMoney) / Double(settingValues.thingPrice)))\(settingValues.thing)입니다.")
            Text("담배를 피우지 않았더라면")
            Text("\(settingValues.thing)을 \(Double(spentMoney) / Double(settingValues.thingPrice))개 사고도 ~원이 남았겠네요!")
            Spacer()
        }
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}

var data = [
        (month: date(year: 2021, month: 7), sales: 3952, dailyAverage: 127, dailyMin: 95, dailyMax: 194),
        (month: date(year: 2021, month: 8), sales: 4044, dailyAverage: 130, dailyMin: 96, dailyMax: 189),
        (month: date(year: 2021, month: 9), sales: 3930, dailyAverage: 131, dailyMin: 101, dailyMax: 184),
        (month: date(year: 2021, month: 10), sales: 4217, dailyAverage: 136, dailyMin: 96, dailyMax: 193),
        (month: date(year: 2021, month: 11), sales: 4006, dailyAverage: 134, dailyMin: 104, dailyMax: 202),
        (month: date(year: 2021, month: 12), sales: 3994, dailyAverage: 129, dailyMin: 96, dailyMax: 190),
        (month: date(year: 2022, month: 1), sales: 4202, dailyAverage: 136, dailyMin: 96, dailyMax: 203),
        (month: date(year: 2022, month: 2), sales: 3749, dailyAverage: 134, dailyMin: 98, dailyMax: 200),
        (month: date(year: 2022, month: 3), sales: 4329, dailyAverage: 140, dailyMin: 104, dailyMax: 218),
        (month: date(year: 2022, month: 4), sales: 4084, dailyAverage: 136, dailyMin: 93, dailyMax: 221),
        (month: date(year: 2022, month: 5), sales: 4559, dailyAverage: 147, dailyMin: 104, dailyMax: 242),
        (month: date(year: 2022, month: 6), sales: 1023, dailyAverage: 170, dailyMin: 120, dailyMax: 250)
    ]

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
}
