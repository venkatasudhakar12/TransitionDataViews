//
//  SecondView.swift
//  TransitionDataViews
//
//  Created by venkata sudhakar on 02/06/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var present:Binding <PresentationMode>
    @Binding  var title:String
    @Binding  var content:String
    @EnvironmentObject var channel:NewChannel
    var body: some View {
        NavigationView{
            VStack(alignment:.center) {
                VStack{
                    TextField("News Title", text: $title)
                    TextField("News Content", text: $content)
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                Divider()
                Button(action: {
                    self.present.wrappedValue.dismiss()
                }) {
                    Text("Dismiss")
                }
                Spacer()
            }
            .navigationBarTitle(channel.channelName)
        }
    }
}

//struct SecondView_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondView()
//    }
//}
