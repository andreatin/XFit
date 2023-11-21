//
//  Workout.swift
//  XFit
//
//  Created by Andrea Tinsley on 11/20/23.
//

import Foundation
import SwiftUI

struct Workout: Identifiable {
    var id = UUID()
    var imageName: String
    var category: String
    var name: String
    var destination: AnyView
}
