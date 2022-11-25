//
//  Home2.swift
//  JsonApp
//
//  Created by Luis Angel Torres G on 25/11/22.
//

import SwiftUI

struct Home2: View {
    @StateObject var json = Modelo2ViewModel()

    var body: some View {
        if json.datosModelo.data.isEmpty {
            ProgressView()
        } else {
            List(json.datosModelo.data, id: \.id) { item in
                NavigationLink(destination: DetalleView(id: item.id)){
                    HStack {
    //                    Image(systemName: "persona.fill")
    //                        .data(url: URL(string: item.avatar)!)
    //                        .frame(width: 80, height: 80)
    //                        .clipped()
    //                        .clipShape(Circle())
                        
                        AsyncImage(url: URL(string: item.avatar), content: { image in
                                    image.resizable()
                                }, placeholder: {
                                    ProgressView()
                                })
                                    .frame(width: 80, height: 80)
                                    .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text(item.first_name).font(.title)
                            Text(item.email).font(.subheadline)
                        }
                    }.navigationTitle("JSON con Imagen")
                }
            }
        }
    }
}


//extension Image {
//    func data(url: URL) -> Self {
//        if let data = try? Data(contentsOf: url) {
//            return Image(uiImage: UIImage(data: data)!)
//                .resizable()
//        }
//        return self
//            .resizable()
//    }
//}

