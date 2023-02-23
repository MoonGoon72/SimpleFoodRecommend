import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Image(systemName: "fork.knife.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)

                Text("음식 추천창")
                    .font(.system(size: 30))
                Spacer()
                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 170, height: 80)
                        Text("음식을 추천해드릴게요!").foregroundColor(.black)
                    }
                    
                }
                Spacer()
                    .frame(height: 100)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
