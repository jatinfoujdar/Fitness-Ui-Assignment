import SwiftUI

struct CardView: View {
    let title: String?
    let courses: [CourseModel]
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            if let title = title {
                Text(title)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .padding(.leading)
                    .padding(.top, 10)
            }
            
            if courses.isEmpty {
                Text("No courses added yet.")
                    .foregroundColor(.gray)
                    .padding()
            } else {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 1) {
                        ForEach(courses) { course in
                            CardImageView(course: course, topPadding: 150)
                        }
                    }
                }
            }
        }
    }
}

struct CardImageView: View {
    var course: CourseModel
    var topPadding: CGFloat
    
    var body: some View {
        Image(course.image)
            .resizable()
            .scaledToFill()
            .frame(width: 320, height: 400)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 5)
            )
            .padding()
            .overlay(
                VStack(alignment: .leading) {
                    HStack {
                        Text("Next:")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(.top, topPadding)
                        Text(course.title)
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.top, topPadding)
                    }
                    Text(course.subTitle)
                        .font(.subheadline)
                        .foregroundColor(.white)
                    
                   
                    Capsule()
                        .fill(Color(red: 0.204, green: 0.216, blue: 0.247))
                        .frame(width: 150, height: 40)
                        .overlay(
                            HStack {
                                Image(systemName: "book.fill")
                                    .foregroundColor(.white)
                                    .padding(.leading, 5)
                                Text(" Continue")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            .padding(.horizontal, 5)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 2)
                        )
                        .padding(.top, 20)
                }
                .padding(.leading, 30)
                .frame(maxWidth: .infinity, alignment: .leading)
            )
    }
}



#Preview {
    CardView(title: "Gut Friendly Courses", courses: [CourseModel(title: "Fitness Course", subTitle: "A Fit life is a great life", image: "gym")])
}
