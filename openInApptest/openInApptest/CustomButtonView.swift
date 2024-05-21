//
//  CustomButtonView.swift
//  openInApptest
//
//  Created by Shrey Sid on 21/05/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        Button(action: {
            // Action for the button
        }) {
            Image(systemName: "gearshape.fill")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20)
                            .fill(Color.blue))
                .shadow(color: Color.blue.opacity(0.5), radius: 10, x: 0, y: 5)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color(UIColor.systemGray6))
    }
}

#Preview {
    CustomButtonView()
}
