//
//  tela2.swift
//  desafio10
//
//  Created by Turma01-4 on 19/09/25.
//

import SwiftUI

struct Tela2: View {
    let champion: Lol  // campeão recebido da tela principal
    
    var body: some View {
        ZStack {
            // Fundo
            LinearGradient(colors: [.purple.opacity(0.6), .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 16) {
                // Imagem do campeão
                AsyncImage(url: URL(string: champion.image ?? "")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 250)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .shadow(radius: 10)
                } placeholder: {
                    ProgressView()
                }
                
                // Informações
                Text(champion.name ?? "Sem nome")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                
                Text("Função principal: \(champion.main_role ?? "desconhecida")")
                    .font(.headline)
                    .foregroundColor(.white.opacity(0.8))
                
                Text("Tipo: \(champion.type ?? "desconhecido")")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.7))
                
                Text("Alcance: \(champion.range ?? "desconhecido")")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.7))
                
                Divider().background(Color.white)
                
                Text("Um campeão formidável que desafia seus inimigos com poder e estratégia. Ideal para jogadores que gostam de dominar a rota e controlar as batalhas.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    Tela2(champion: Lol(
        name: "Aatrox",
        type: "Lutador",
        range: "Melee",
        main_role: "Top",
        image: "https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Aatrox_0.jpg"
    ))
}

