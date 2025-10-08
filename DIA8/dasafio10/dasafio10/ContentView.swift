//
//  ContentView.swift
//  desafio10
//
//  Created by Turma01-4 on 19/09/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.campeoes) { item in
                NavigationLink(destination: Tela2(champion: item)) {
                    HStack {
                        AsyncImage(url: URL(string: item.image ?? "")) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        } placeholder: {
                            ProgressView()
                        }

                        VStack(alignment: .leading, spacing: 4) {
                            Text(item.name ?? "Sem nome")
                                .font(.headline)
                            Text("Função: \(item.main_role ?? "desconhecido")")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .navigationTitle("Campeões LoL")
            .onAppear {
                viewModel.fetch()
            }
        }
    }
}

#Preview {
    ContentView()
}

