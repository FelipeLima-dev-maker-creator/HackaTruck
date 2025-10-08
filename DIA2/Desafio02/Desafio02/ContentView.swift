//
//  ContentView.swift
//  Desafio02
//
//  Created by Turma01-4 on 23/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image("imagem_hacka")
                .resizable()
                .aspectRatio(contentMode:   .fill)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 150,height: 150)
            Spacer()
            VStack {
                Text("Hacka Truck")
                    .foregroundStyle(.red)
                Text("77 Universidades")
                    .foregroundStyle(.blue)
                Text("5 Regões do Brasil")
                    .foregroundStyle(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
