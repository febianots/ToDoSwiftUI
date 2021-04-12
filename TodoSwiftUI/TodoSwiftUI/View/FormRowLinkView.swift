//
//  FormRowLinkView.swift
//  TodoSwiftUI
//
//  Created by MAC on 22/02/21.
//  Copyright © 2021 MAC. All rights reserved.
//

import SwiftUI

struct FormRowLinkView: View {
    
    var icon: String
    var color : Color
    var text: String
    var link: String
    
    var body: some View {
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 8,style: .continuous)
                    .fill(color)
                
                Image(systemName: icon)
                    .imageScale(.large)
                    .foregroundColor(.white)
            }
            frame(width: 36, height: 36, alignment: .center)
            
            Text(text).foregroundColor(.gray)
            
            Spacer()
            
            Button(action: {
                guard let url = URL(string: self.link),
                      UIApplication.shared.canOpenURL(url) else {
                    return
                }
                UIApplication.shared.canOpenURL(url as URL)
            }){
                Image(systemName: "chevron,right")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
            }
            .accentColor(Color(.systemGray2))
        }
    }
}

struct FormRowLinkView_Previews: PreviewProvider {
    static var previews: some View {
        FormRowLinkView(icon: "globe", color: Color.pink, text: "Website", link: "itulahpokonya")
    }
}
