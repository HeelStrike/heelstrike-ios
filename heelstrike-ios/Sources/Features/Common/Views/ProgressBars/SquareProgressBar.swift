import SwiftUI

struct SquareProgressBar: View {
    let progressFraction: Double
    let totalSquares: Int
    let rectangleWidth: CGFloat = 34
    let rectangleHeight: CGFloat = 18
    let spacing: CGFloat = 4
    
    var body: some View {
        HStack(spacing: spacing) {
            ForEach(0..<totalSquares, id: \.self) { index in
                let threshold = Double(index + 1) / Double(totalSquares)
                
                Rectangle()
                    .fill(progressFraction >= threshold ? Color.green : Color.gray.opacity(0.3))
                    .frame(width: rectangleWidth, height: rectangleHeight)
                    .cornerRadius(3)
            }
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.horizontal, 20)
    }
}
