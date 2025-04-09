import SwiftUI

struct WorkoutView_SquareProgressBar: View {
    @State private var progress: Double = 0.4
    
    var body: some View {
        VStack(spacing: 20) {
            SquareProgressBar(progressFraction: progress, totalSquares: 8)
            
            Button("Workout Progress Test") {
                if progress < 1.0 {
                    progress += 0.1
                }
            }
        }
        .padding()
    }
}
