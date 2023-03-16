//
//  DateFormatter.swift
//  SmokeCounter
//
//  Created by 이보한 on 2023/03/10.
//

import UIKit
struct dateformatter {
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        return formatter
    }()
}
