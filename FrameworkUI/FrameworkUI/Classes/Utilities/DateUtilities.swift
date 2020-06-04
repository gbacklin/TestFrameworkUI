//
//  DateUtilities.swift
//  FrameworkUI
//
//  Created by Gene Backlin on 6/3/20.
//  Copyright © 2020 Gene Backlin. All rights reserved.
//

import Foundation

public let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .medium
    return dateFormatter
}()
