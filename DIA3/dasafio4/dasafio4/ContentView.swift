//
//  ContentView.swift
//  dasafio4
//
//  Created by Turma01-4 on 24/08/25.
//

import SwiftUI
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: "#", with: "")
        let scanner = Scanner(string: hex)
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let red = Double((rgb >> 16) & 0xFF) / 255.0
        let green = Double((rgb >> 8) & 0xFF) / 255.0
        let blue = Double(rgb & 0xFF) / 255.0

        self.init(.sRGB, red: red, green: green, blue: blue, opacity: 1)
    }
}

// Como usar:
var violeta  = Color(hex: "8B00FF")
var verdeClaro = Color(hex: "#ABFFAC")
var azulClaro = Color(hex: "#AACCF2")
var laranjaClaro = Color(hex: "#FFC5A6")
var amareloLiso = Color(hex: "EEFFA4")
var vermelhoClaro = Color(hex: "FF7764")
let verdeEstourado = Color(hex: "39FF14")
var cinza = Color(hex: "D3D3D3")

struct ContentView: View {
    
    @State private var dist: Double = 0.0
    @State private var tempo: Double = 0.0
    @State private var media: Double = 0.0
    @State private var imagem: String = ""
    @State private var cor: String = ""
    var body: some View {
        ZStack{
            cinza
                .ignoresSafeArea()
            VStack {
                Text("Digite a distancia (km)")
                TextField("Enter a number", value:  $dist,format:.number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(25.0)
                    .frame(width : 250, height : 45)
                Text("Digite o tempo (h)")
                TextField("Enter a number", value:  $tempo,format:.number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(25.0)
                    .frame(width : 250, height : 45)
                Button("Calcular"){
                    media = dist/tempo
                    
                    switch media {
                    case 0..<10:
                        imagem = "tartaruga"
                        cinza = verdeClaro
                    case 10..<30:
                        imagem = "elefante"
                        cinza = azulClaro
                    case 30..<70:
                        imagem = "aveztruz"
                        cinza = laranjaClaro
                    case 70..<90:
                        imagem = "leao"
                        cinza = amareloLiso
                    case 90...130:
                        imagem = "guepardo"
                        cinza = vermelhoClaro
                    default:
                        imagem = "rony"
                        cinza = verdeEstourado
                    }
                }
                .padding()
                .background(Color.black)
                .foregroundColor(.yellow)
                .cornerRadius(25)
                
                
                
                
                
                Text("\(media.formatted(.number.precision(.fractionLength(2)))) km/h")
                    .font(.system(size: 30))
                Image("\(imagem)")
                    .resizable()
                    .clipShape(Circle())
                Rectangle()
                    .frame(width: 275,height: 150)
                    .cornerRadius(20)
                    .overlay(
                        Text("""
                         TARTARUGA (0 - 9,9 km/h)     🟢
                         ELEFANTE     (10 - 29,9 km/h) 🔵
                         AVESTRUZ    (30 - 69,9 km/h)🟠
                         LEÃO              (70 - 89 km/h)   🟡
                        GUEPARDO    (90 - 130 km/h) 🔴
                        """)
                        .foregroundColor(.white))
                
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
