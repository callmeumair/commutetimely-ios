import SwiftUI

struct ContentView: View {
    @State private var leaveTime: String = ""
    @State private var showingTime: Bool = false
    
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            
            VStack(spacing: 20) {
                Text("Get your perfect leave time.")
                    .font(.title2)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.primary)
                    .padding(.horizontal, 40)
                
                Button(action: generateLeaveTime) {
                    Text("Get Time")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.blue)
                        .cornerRadius(12)
                }
                .padding(.horizontal, 40)
                
                if showingTime {
                    VStack(spacing: 8) {
                        Text(leaveTime)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Text("Leave by this time for a smooth commute")
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                    }
                    .padding(.top, 20)
                    .transition(.opacity.combined(with: .scale))
                }
            }
            
            Spacer()
        }
        .animation(.easeInOut(duration: 0.3), value: showingTime)
    }
    
    private func generateLeaveTime() {
        let hours = Int.random(in: 6...10)
        let minutes = Int.random(in: 0...59)
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        
        var dateComponents = DateComponents()
        dateComponents.hour = hours
        dateComponents.minute = minutes
        
        if let date = Calendar.current.date(from: dateComponents) {
            leaveTime = "Leave at \(dateFormatter.string(from: date))"
        }
        
        withAnimation {
            showingTime = true
        }
    }
}

#Preview {
    ContentView()
} 