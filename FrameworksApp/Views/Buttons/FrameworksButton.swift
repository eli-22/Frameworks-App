//
//  FrameworksButton.swift
//  FrameworksApp_V2.0_Detail View
//
//  Created by Elise on 12/23/22.
//

import Foundation
import SwiftUI

struct FrameworksButton: View {
    
    var buttonName: String
    
    var body: some View {
        Text(buttonName)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct FrameworkButton_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksButton(buttonName: "Preview")
            .preferredColorScheme(.dark)
    }
}
