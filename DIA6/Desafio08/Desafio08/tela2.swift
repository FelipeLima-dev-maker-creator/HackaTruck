//

//  tela2.swift

//  Desafio08

//

//  Created by Turma01-4 on 16/09/25.

//



import SwiftUI



struct tela2: View {

    let maravilha:Location

    var body: some View {

        ZStack{

            Color.amarelo.ignoresSafeArea()

            VStack{

                ZStack{

                    Image(maravilha.foto)

                        .resizable()

                        .scaledToFill()

                    .frame(width: 200,height: 200).padding(10)}

                Text(maravilha.nome).font(.title).foregroundStyle(.brown)

                Spacer()

                Text(maravilha.descricao)

                    .padding()

                    .background(Color.brown)

                    .cornerRadius(20)

                Spacer()

                Text("")

            }

            

        }

    }

}

#Preview {

    tela2(maravilha: Location(

        

        nome: "Cristo Redentor (Brasil)",



        foto: "cristo",



        descricao: "Estátua icônica localizada no Rio de Janeiro.",



        latitude: -22.9519,



        longitude: -43.2105



    ))

}
