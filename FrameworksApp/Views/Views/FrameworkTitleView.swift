//
//  FrameworkTitleView.swift
//  FrameworksApp_V5.0_Refactor and Organize
//
//  Created by Elise on 12/28/22.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 60, height: 60)
            Text(framework.name)
                .font(.title2) // supports dynamic type
                .fontWeight(.semibold)
                .scaledToFit()
                .foregroundColor(Color(.label))
                .minimumScaleFactor(0.6) // Will never be smaller than 60% of its size.
                .padding()
        }
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
