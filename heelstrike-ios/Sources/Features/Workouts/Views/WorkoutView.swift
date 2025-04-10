import SwiftUI

struct WorkoutView: View {
    @StateObject private var viewModel = WorkoutViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                Text("Workouts")
                // Additional UI for workouts
            }
            .navigationTitle("Workouts")
        }
    }
}
