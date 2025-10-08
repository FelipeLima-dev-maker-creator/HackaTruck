//
//  ContentView.swift
//  Desafio01
//
//  Created by Turma01-4 on 23/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "square.fill")
                    .font(.system(size: 50))
                    .imageScale(.large)
                    .foregroundColor(.red)
                    .foregroundStyle(.tint)
                Spacer()
                Image(systemName: "square.fill")
                    .font(.system(size: 50))
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            HStack{
                Image(systemName: "square.fill")
                    .font(.system(size: 50))
                    .imageScale(.large)
                    .foregroundColor(.green)
                    .foregroundStyle(.tint)
                Spacer()
                Image(systemName: "square.fill")
                    .font(.system(size: 50))
                    .imageScale(.large)
                    .foregroundStyle(.yellow)
                    .foregroundColor(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
