//
//  FrameworkDetailView.swift
//  FrameworksApp_V2.0_Detail View
//
//  Created by Elise on 12/23/22.
//

import Foundation
import SwiftUI

struct FrameworkDetailView: View {
    
    // We are not initializing it here, which is why it is not a @StateObject variable.
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    // This body will be replaced with UIKit ViewController. 
    var body: some View {
        VStack {
            FrameworkTitleView(framework: viewModel.framework)
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            // Replace Button with Link.
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!) {
                FrameworksButton(buttonName: "Learn More")
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework))
            .preferredColorScheme(.dark)
    }
}
