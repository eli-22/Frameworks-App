//
//  ContentView.swift
//  FrameworksApp
//
//  Created by Elise on 12/22/22.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
   
    // We want this information to persist, even if the struct FrameworkGridView is destroyed and recreated. If it wasn't a state object, it would revert back to its default value every time.
    // When we initialize a new view model, we mark it @StateObject.
    // If we are injecting an existing view model, it should be @ObservedObject.
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { oneFramework in
                        NavigationLink(value: oneFramework) { // value is the data
                            FrameworkTitleView(framework: oneFramework) // UI for navigation link
                        }
                    }
                }
            }
            .padding(.top)
            .navigationTitle("🍎 Frameworks")
            // Data-driven navigation. The data type is the Framework.
            .navigationDestination(for: Framework.self) { oneFramework in
                FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: oneFramework)) // create the view model here and pass it
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
 
