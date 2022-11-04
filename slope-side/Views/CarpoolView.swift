//
//  CarpoolView.swift
//  slope-side
//
//  Created by Will Rowston on 11/4/22.
//

import SwiftUI

struct CarpoolView: View {
    let carpools: [Carpool]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(carpools) { carpool in
                    NavigationLink(destination: DetailView(carpool: carpool)) {
                        CardView(carpool: carpool)
                    }
                }
            }
            .navigationTitle("Carpools")
            .toolbar {
               Button(action: {}) {
                   Image(systemName: "plus")
               }
            }
        }
    }
}

struct CarpoolView_Previews: PreviewProvider {
    static var previews: some View {
//        NavigationView {
            CarpoolView(carpools: Carpool.sampleData)
//        }
    }
}
