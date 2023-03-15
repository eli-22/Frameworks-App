//
//  FrameworkDetailViewModel.swift
//  FrameworksApp_V8.0_
//
//  Created by Elise on 1/13/23.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    let framework: Framework
    
    init(framework: Framework) {
        self.framework = framework
    }
}
