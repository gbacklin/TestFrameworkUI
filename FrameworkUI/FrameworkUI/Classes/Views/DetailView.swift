//
//  DetailView.swift
//  FrameworkUI
//
//  Created by Gene Backlin on 6/3/20.
//  Copyright © 2020 Gene Backlin. All rights reserved.
//

import SwiftUI

public struct DetailView: View {
    var selectedDate: Date?
    
    public var body: some View {
        Group {
            if selectedDate != nil {
                Text("\(selectedDate!, formatter: dateFormatter)")
            } else {
                Text("Detail view content goes here")
            }
        }.navigationBarTitle(Text("Detail"))
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

extension DetailView {
    public init(date: Date) {
        self.init (
            selectedDate: date
        )
    }
}
