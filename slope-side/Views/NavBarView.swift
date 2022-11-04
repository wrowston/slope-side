//
//  NavBarView.swift
//  slope-side
//
//  Created by Will Rowston on 11/4/22.
//

import SwiftUI

struct NavBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem() {
                    Image(systemName: "house")
                    Text("Home")
                }
            CarpoolView(carpools: Carpool.sampleData)
                .tabItem() {
                    Image(systemName: "car.2")
                    Text("Carpool")
                }
        }
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}
