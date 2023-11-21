//
//  DetailView.swift
//  XFit
//
//  Created by Andrea Tinsley on 11/20/23.
//

import Foundation
// DetailView.swift

import SwiftUI

struct DetailView: View {
    let title: String

    var body: some View {
        VStack {
            Text("Detail View")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
            
            Text("Title: \(title)")
                .foregroundColor(.blue)
                .padding()
        }
        .navigationBarTitle("Workout Details")
    }
}
 

