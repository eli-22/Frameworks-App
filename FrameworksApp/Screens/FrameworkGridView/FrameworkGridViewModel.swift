//
//  FrameworkGridViewModel.swift
//  FrameworksApp_V3.0_Connecting Views
//
//  Created by Elise on 12/25/22.
//

import SwiftUI

// Needs to be a CLASS this time so it can maintain its state.
final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}

