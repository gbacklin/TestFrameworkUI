//
//  MasterView.swift
//  FrameworkUI
//
//  Created by Gene Backlin on 6/3/20.
//  Copyright © 2020 Gene Backlin. All rights reserved.
//

import SwiftUI

public struct MasterView: View {
    @Binding var dates: [Date]

    public var body: some View {
        List {
            ForEach(dates, id: \.self) { date in
                NavigationLink(
                    destination: DetailView(selectedDate: date)
                ) {
                    Text("\(date, formatter: dateFormatter)")
                }
            }.onDelete { indices in
                indices.forEach { self.dates.remove(at: $0) }
            }
        }
    }
}

extension MasterView {
    public init(dateArray: Binding<[Date]>) {
        self.init (
            dates: dateArray
        )
    }
}
