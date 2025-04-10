import SwiftUI

struct Card<Content: View>: View {
    let title: String
    let content: () -> Content

    var body: some View {
        ZStack {
            VStack(spacing: 16) {
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
            .background(Color.white)
            .cornerRadius(10)
        }
        .frame(minWidth: 340)
        .padding(.top, 14)
        .padding(.leading, 24)
        .padding(.trailing, 24)
        .padding(.bottom, 0)
    }
}

