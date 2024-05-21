//
//  settingButton.swift
//  openInApptest
//
//  Created by Shrey Sid on 21/05/24.
//

import SwiftUI
import PolyKit

struct settingButton: View {
    var body: some View {
        //        ZStack{
        Button(action: {
            // Action for the button
        }) {
            Polygon(count: 6, cornerRadius: 3)
                .stroke(Color.white)
                .frame(width: 40, height: 40)
            //                    .overlay(content: {
            //                        Circle()
            //                            .stroke(Color.white)
            //                            .frame(width: 20, height: 20)
            
            //                    })
//                .background(RoundedRectangle(cornerRadius: 10)
//                    .fill(Color(red: 35/255, green: 103/255, blue: 255/255))
//                    .frame(width: 60, height: 60))
            
            
        }
        //        }
        
    }
    
    
    #Preview {
        settingButton()
    }
    }
