//

//  ContentView.swift

//  Desafio08

//

//  Created by Turma01-4 on 29/08/25.

//



import SwiftUI



import MapKit



struct Location: Identifiable, Hashable {

    let id = UUID()

    let nome: String

    let foto: String

    let descricao: String

    let latitude: Double

    let longitude: Double

}







let maravilhas = [



    Location(



        nome: "Barragem do lago Igapó",

        foto: "lago",

        descricao: "A Barragem do Lago Igapó, localizada em Londrina, Paraná, é um dos principais cartões postais da cidade e um importante ponto turístico. Inaugurada em 10 de dezembro de 1959, durante o Jubileu de Prata de Londrina, a barragem foi projetada para represar o Ribeirão Cambé, solucionando problemas de drenagem e criando uma área de lazer para a população",

        latitude: -23.138,

        longitude: -51.1989

    ),



    Location(

        nome: "Grande Muralha da China (China)",

        foto: "muralha",

        descricao: "A Muralha da China é uma das construções mais icônicas e impressionantes do mundo, localizada no norte da China. Com mais de 21.000 quilômetros de extensão, a muralha foi construída, reformada e expandida ao longo de várias dinastias, principalmente entre os séculos V a.C. e XVII, com o objetivo de proteger os territórios chineses de invasões de povos nômades do norte. Feita de pedras, tijolos, terra compactada e outros materiais locais, a muralha serpenteia por montanhas, planícies e desertos, criando uma barreira defensiva monumental. Ao longo de seu percurso, foram construídas torres de vigia, fortificações e portões, permitindo comunicação rápida e vigilância contra invasores. Além de sua função militar, a Muralha da China simboliza a força, resistência e engenhosidade do povo chinês, sendo considerada uma das Sete Maravilhas do Mundo Antigo. Atualmente, é um dos destinos turísticos mais visitados da China, atraindo milhões de visitantes que percorrem trechos restaurados, apreciando suas vistas panorâmicas e o contexto histórico dessa obra monumental.",

        latitude: 40.4319,

        longitude: 116.5704

    ),



    Location(

        nome: "Cristo Redentor",

        foto: "cristo",

        descricao: """

        O Cristo Redentor é um dos monumentos mais famosos do mundo, localizado no Rio de Janeiro, no topo do Morro do Corcovado, a cerca de 710 metros de altitude. Inaugurado em 1931, a estátua de 38 metros de altura (sem contar o pedestal) é um símbolo de paz, acolhimento e fé, reconhecido internacionalmente como um ícone do Brasil.

        

        Construído em art déco, o monumento é feito de concreto armado e pedra-sabão, com os braços abertos em gesto de abraço à cidade. Além de seu valor simbólico e religioso, o Cristo Redentor oferece uma vista panorâmica espetacular da cidade do Rio de Janeiro, incluindo praias, montanhas e a Baía de Guanabara.O Cristo Redentor foi declarado Patrimônio Cultural da Humanidade pela UNESCO em 2007 e é considerado uma das Sete Maravilhas do Mundo Moderno, atraindo milhões de visitantes todos os anos, que sobem ao Corcovado para contemplar a estátua e a vista deslumbrante da cidade.

""",

        latitude: -22.9524,

        longitude: -43.2117



    ),



    Location(

        nome: "Machu Picchu (Peru)",

        foto: "matchu",

        descricao: """

        "Machu Picchu é uma antiga cidade inca localizada nos Andes peruanos, perto de Cusco. Construída no século XV, é famosa por sua arquitetura de pedra perfeitamente encaixada, terraços agrícolas e templos sagrados, que demonstram o avançado conhecimento de engenharia e planejamento da civilização inca.

        

        A cidade está situada em uma posição estratégica, cercada por montanhas e o Vale do Rio Urubamba, oferecendo vistas espetaculares e proteção natural. Machu Picchu é considerada um símbolo do patrimônio cultural do Peru, atraindo milhões de visitantes que exploram seus complexos sagrados, templos e áreas residenciais.



        Em 1983, foi declarada Patrimônio Mundial da Humanidade pela UNESCO e é reconhecida como uma das Novas Sete Maravilhas do Mundo, sendo um dos destinos turísticos mais emblemáticos da América do Sul.

"""

,

        latitude: -13.1631,

        longitude: -72.5450

    ),



    Location(

        nome: "Chichén Itzá (México)",

        foto: "chichen",

        descricao: """

        Chichén Itzá é um complexo arqueológico maia localizado na Península de Yucatán, México. Foi um importante centro político, religioso e econômico da civilização maia entre os séculos IX e XIII.



        O local é famoso por suas pirâmides e templos, sendo o mais icônico a Pirâmide de Kukulcán (El Castillo), utilizada para observações astronômicas e cerimônias religiosas. Além disso, Chichén Itzá possui campo de jogo de bola, observatórios e palácios, refletindo o avançado conhecimento em arquitetura, matemática e astronomia dos maias.



        Em 1988, Chichén Itzá foi declarado Patrimônio Mundial da Humanidade pela UNESCO e é considerado uma das Novas Sete Maravilhas do Mundo, atraindo milhões de turistas que exploram suas estruturas antigas e aprendem sobre a cultura maia.

        """,

        latitude: 20.6843,

        longitude: -88.5678

    ),



    Location(

        nome: "Coliseu (Itália)",

        foto: "coliseu",

        descricao: """

O Coliseu de Roma, também conhecido como Anfiteatro Flaviano, é um dos monumentos mais emblemáticos da Roma Antiga e símbolo da engenharia romana. Inaugurado em 80 d.C., podia abrigar cerca de 50.000 a 80.000 espectadores e era usado para combates de gladiadores, espetáculos públicos e simulações de batalhas navais.



Localizado no centro de Roma, o Coliseu impressiona por sua arquitetura monumental, com arcos, colunas e sistemas complexos de acessos e subterrâneos que permitiam movimentar animais e gladiadores. Além de seu valor histórico e arquitetônico, o Coliseu é um importante destino turístico e cultural, atraindo milhões de visitantes todos os anos.



Em 1980, foi declarado Patrimônio Mundial da UNESCO e é considerado uma das Sete Maravilhas do Mundo Moderno, representando a grandiosidade e o legado da civilização roman

""",

        latitude: 41.8902,

        longitude: 12.4922

    ),



    Location(

        nome: "Taj Mahal (Índia)",

        foto: "tajmahal",

        descricao: """

O Taj Mahal é um mausoléu de mármore branco localizado em Agra, Índia, e é considerado um dos exemplos mais belos da arquitetura mogol. Construído no século XVII pelo imperador Shah Jahan em memória de sua esposa favorita, Mumtaz Mahal, o Taj Mahal simboliza amor eterno e devoção.



O complexo inclui o mausoléu principal, jardins simétricos, fontes e mesquitas, sendo famoso pelo seu design simétrico, cúpulas e detalhes ornamentais em mármore e pedras preciosas. O Taj Mahal é reconhecido mundialmente como um ícone cultural e é um dos destinos turísticos mais visitados da Índia.



Em 1983, foi declarado Patrimônio Mundial da Humanidade pela UNESCO e é considerado uma das Sete Maravilhas do Mundo Moderno, atraindo milhões de visitantes todos os anos.

""",

        latitude: 27.1751,

        longitude: 78.0421

    )



]







struct ContentView: View {



    @State private var selectedLocationID = maravilhas[0].id



    @State private var position = MapCameraPosition.region(



        MKCoordinateRegion(



            center: CLLocationCoordinate2D(latitude: -15.8, longitude: -47.9),



            span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20))



    )

    @State private var locationToShow: Location?



    var body: some View {



        ZStack(alignment: .top) {

            Map(position: $position) {



                ForEach(maravilhas) { lugar in



                    Annotation(lugar.nome, coordinate: CLLocationCoordinate2D(latitude: lugar.latitude, longitude: lugar.longitude)) {



                        Button {



                            locationToShow = lugar



                        } label: {



                            Image(systemName: "mappin.circle.fill")



                                .font(.title)



                                .foregroundColor(.red)



                        }



                    }



                }



            }

            .ignoresSafeArea()

            Picker("Selecione uma Maravilha", selection: $selectedLocationID) {



                ForEach(maravilhas) { lugar in



                    Text(lugar.nome).tag(lugar.id)



                }



            }



            .pickerStyle(.menu)



            .padding(12)



            .background(.amarelo)



            .cornerRadius(12)



            .padding(.top, 60)



            .padding(.horizontal)



            .onChange(of: selectedLocationID) {



                if let newLocation = maravilhas.first(where: { $0.id == selectedLocationID }) {

                    withAnimation {

                        position = MapCameraPosition.region(

                            MKCoordinateRegion(

                                center: CLLocationCoordinate2D(latitude: newLocation.latitude, longitude: newLocation.longitude),



                                span: MKCoordinateSpan(latitudeDelta: 5, longitudeDelta: 5)



                            )



                        )



                    }



                }



            }



        }



        



        .sheet(item: $locationToShow) { lugar in



            tela2(maravilha: lugar)



        }



    }



}







#Preview {

    

    ContentView()

}


