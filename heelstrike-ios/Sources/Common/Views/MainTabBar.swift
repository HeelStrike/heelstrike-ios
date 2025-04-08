import SwiftUI

struct MainTabBar: View {
    var body: some View {
        TabView {
            WorkoutView()
                .tabItem {
                    Label("Workouts", systemImage: "figure.run")
                }
            
            MealPlansView()
                .tabItem {
                    Label("Meal Plans", systemImage: "fork.knife")
                }
            
            RecordView()
              .tabItem {
                Label("Record", systemImage: "record.circle")
            }
            
            SocialView()
                .tabItem {
                    Label("Social", systemImage: "person.3.fill")
                }
            
            DiagnosticsView()
                .tabItem {
                    Label("Diagnostics", systemImage: "waveform.path.")
                }
        }
    }
}

#Preview {
    MainTabBar()
}
