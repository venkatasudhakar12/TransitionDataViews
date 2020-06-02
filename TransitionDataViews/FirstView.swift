import SwiftUI

struct FirstView: View {
    @State private var showSecondVC:Bool = false
    @ObservedObject var news:News = News()
    @EnvironmentObject  var channel:NewChannel
    var body: some View {
        NavigationView{
            VStack(alignment:.leading){
                Text(news.title)
                    .font(.title)
                Text(news.content)
                    .font(.subheadline)
                Divider()
                HStack(alignment:.center,spacing: 30){
                    Spacer()
                    Button(action: {
                        self.showSecondVC.toggle()
                    }) {
                        Text("Add News")
                    }.sheet(isPresented: $showSecondVC) {
                        SecondView(title: self.$news.title, content: self.$news.content).environmentObject(self.channel)
                    }
                    
                    NavigationLink(destination: ChannelView()) {
                        Text("Add Channel")
                    }
                    Spacer()
                }
                
            }
            .navigationBarTitle(self.channel.channelName)
        }
    }
}



struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
