//
//  SettingsView.swift
//  SmokeCounter
//
//  Created by 이보한 on 2023/03/10.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            ScrollView{
                VStack(alignment: .leading, spacing: 1) {
                    Text("현재 상태")
                        .foregroundColor(.gray)
                        .padding()
                    StatusCell()
                }
                
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

struct StatusCell: View {
    var body: some View {
        HStack {
            Text("한갑당 가격")
                .foregroundColor(.black)
            Spacer()
            Text("한갑당 가격 값")
                .foregroundColor(.gray)
        }
        .frame(height: 56)
        .padding(.horizontal)
        .background(Color.white)
        HStack {
            Text("사고싶은 물건")
                .foregroundColor(.black)
            Spacer()
            Text("에어팟")
                .foregroundColor(.gray)
        }
        .frame(height: 56)
        .padding(.horizontal)
        .background(Color.white)
        HStack {
            Text("한갑당 가격")
                .foregroundColor(.black)
            Spacer()
            Text("한갑당 가격 값")
                .foregroundColor(.gray)
        }
        .frame(height: 56)
        .padding(.horizontal)
        .background(Color.white)
    }
}
