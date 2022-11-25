//
//  DetalleView.swift
//  JsonApp
//
//  Created by Luis Angel Torres G on 25/11/22.
//

import SwiftUI

struct DetalleView: View {
    var id: Int
    @StateObject var user = DetalleViewModel()
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: user.avatar), content: { image in
                        image.resizable()
                    }, placeholder: {
                        ProgressView()
                    })
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(user.first_name).font(.title)
                Text(user.email).font(.subheadline)
            }
        }.onAppear{
            user.fetch(id: id)
        }
    }
}

