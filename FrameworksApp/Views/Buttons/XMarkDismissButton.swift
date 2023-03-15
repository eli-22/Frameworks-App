//
//  XMarkDismissButton.swift
//  FrameworksApp_V5.0_Refactor and Organize
//
//  Created by Elise on 12/28/22.
//

import SwiftUI

struct XMarkDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            // Push x to the far right of the HStack.
            Button {
                isShowingDetailView = false
                // Since this is a binding variable, it is bound to the parent view.
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                // .label will be visible in dark and light mode.
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                // somewhat large touch target
            }
        }
        .padding()
    }
}

struct XMarkDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkDismissButton(isShowingDetailView: .constant(false))
    }
}
