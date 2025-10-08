//
//  viewModel.swift
//  desafio10
//
//  Created by Turma01-4 on 19/09/25.
//

import Foundation

struct Lol: Codable, Identifiable {
    let id = UUID()
    let name: String?
    let type: String?
    let range: String?
    let main_role: String?
    let image: String?
}

class ViewModel: ObservableObject {
    @Published var campeoes: [Lol] = []
    
    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/testegabrielthomaz") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                print("Erro na requisição: \(error?.localizedDescription ?? "desconhecido")")
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Lol].self, from: data)
                DispatchQueue.main.async {
                    self?.campeoes = parsed
                }
            } catch {
                print("Erro no parse do JSON: \(error)")
            }
        }
        task.resume()
    }
}

