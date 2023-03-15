//
//  SafariView.swift
//  FrameworksApp_V4.0_UIKit Integration
//
//  Created by Elise on 12/27/22.
//

import Foundation
import SwiftUI
import SafariServices

// For features that don't have Swift UI functionality yet, we need to create SwiftUI views that conform to UIViewRepresentable and view controllers that conform to UIViewControllerRepresentable.

struct SafariView: UIViewControllerRepresentable {
    
    // URL to create SafariViewController
    let url: URL
    
    // This view controller will take the place of the body in a view.
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->
        SFSafariViewController {
        SFSafariViewController(url: url)
        }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
    // Required to conform to UIViewControllerRepresentable, but we will not have any implementation in this case.
    }
