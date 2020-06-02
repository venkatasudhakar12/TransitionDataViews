

import SwiftUI

struct ChannelView: View {
     @Environment(\.presentationMode) var present:Binding <PresentationMode>
    @EnvironmentObject var channel:NewChannel
    var body: some View {
        VStack(alignment:.center){
            TextField("Channel name", text: $channel.channelName)
            Button(action: {
                self.present.wrappedValue.dismiss()
            }) {
                Text("dismiss")
            }
        }
        
    }
}

struct ChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelView()
    }
}
