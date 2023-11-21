import SwiftUI
struct ContentView: View {
    let workouts: [Workout] = [
        Workout(imageName: "squat" , category: "Legs", name: "Squat", destination: AnyView(DetailView(title: "Squat"))),
        Workout(imageName: "deadlift", category: "Legs", name: "Deadlift", destination: AnyView(DetailView(title: "Deadlift"))),
        Workout(imageName: "legPress" , category: "Legs", name: "Leg Press", destination: AnyView(DetailView(title: "Leg Press"))),
        Workout(imageName: "lunge" , category: "Legs", name: "Lunge", destination: AnyView(DetailView(title: "Lunge"))),
        Workout(imageName: "hipthrust" , category: "Legs", name: "Hip Thrust", destination: AnyView(DetailView(title: "Hip Thrust"))),
        Workout(imageName: "Bicep Curl" , category: "Arms", name: "Bicep Curl", destination: AnyView(DetailView(title: "Bicep Curl"))),
        Workout(imageName: "flat bench" , category: "Arms", name: "Flat Bench Press", destination: AnyView(DetailView(title: "Flat Bench"))),
        Workout(imageName: "incline bench" , category: "Arms", name: "Incline Bench Press", destination: AnyView(DetailView(title: "Incline Bench"))),
        Workout(imageName: "push-ups" , category: "Arms", name: "Push Ups", destination: AnyView(DetailView(title: "Push Ups")))
    ]

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                // Main card view
                NavigationLink(destination: workouts[0].destination) {
                    ZStack {
                        Image(workouts[0].imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 300)

                        VStack {
                            Spacer()
                            Text("Full Body Workout")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            Text("For Beginners")
                                .fontWeight(.regular)
                                .foregroundColor(.white)
                        }
                        .padding()
                        .frame(width: 380)
                        .background(Color(.clear))
                    }
                    .frame(width: 380, height: 300)
                    .cornerRadius(20)
                    .clipped()
                    .shadow(radius: 8)
                    .padding()
                }

                // Exercises
                Text("Exercises")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 30) {
                        ForEach(workouts.dropFirst()) { workout in
                            // Day card
                            NavigationLink(destination: workout.destination) {
                                ZStack {
                                    Image(workout.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 220)

                                    VStack {
                                        Spacer()
                                        Text(workout.name) // Use workout.category instead of workout.name
                                            .font(.title)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.white)
                                    }
                                    .padding()
                                    .frame(width: 150)
                                    .background(Color(.clear))
                                }
                                .frame(width: 150, height: 220)
                                .clipped()
                                .cornerRadius(20)
                                .shadow(radius: 8)
                            }
                            .id(workout.id) // Use the id property as the key
                        }
                    }
                    .padding()
                }

                Spacer()
            }
            .navigationBarTitle("Home Workouts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
