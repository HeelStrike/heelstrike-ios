import SwiftUI

struct CardSmall<Content: View>: View {
    let title: String
    let content: () -> Content
    
    var body: some View {
        ZStack {
            VStack(spacing: 8) {
                HStack {
                    Text(title)
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 10)
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                        .padding(.top, 10)
                }
                .padding(10)
                content()
            }
            .frame(maxWidth: 158)
            .frame(minHeight: 158, alignment: .top)
            .background(Color.white)
            .cornerRadius(10)
        }
        .padding(.top, 14)
        .padding(.horizontal, 12)
        .padding(.bottom, 0)
    }
}
