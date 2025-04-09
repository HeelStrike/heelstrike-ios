import SwiftUI

struct Card<Content: View>: View {
    let content: () -> Content
    
    var body: some View {
        VStack {
            content()
        }
        .padding(20)
        .frame(maxWidth: UIScreen.main.bounds.width - 24)
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}
