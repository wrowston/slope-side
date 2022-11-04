//
//  CardView.swift
//  slope-side
//
//  Created by Will Rowston on 11/4/22.
//

import SwiftUI

struct CardView: View {
    let carpool: Carpool
    var body: some View {
        VStack(alignment: .leading) {
            Text(carpool.driver.firstName).font(.headline)
            Text(carpool.resort.name).font(.subheadline)

            Spacer()
            HStack {
                Label("Openings: \(carpool.openSeats)", systemImage: "person.3")
                Spacer()
                Label("\(carpool.car.year) \(carpool.car.make) \(carpool.car.model)", systemImage: "car")
                    .padding(.trailing, 20)
            }
            .font(.caption)
        }
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var carpool = Carpool.sampleData[0]
    static var previews: some View {
        CardView(carpool: carpool)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
