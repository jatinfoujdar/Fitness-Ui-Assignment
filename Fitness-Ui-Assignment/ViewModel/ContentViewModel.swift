import SwiftUI
import Combine

class ContentViewModel: ObservableObject {
    @Published var components: [UIComponent] = []
    @Published var isLoading = true
    
    init() {
        fetchSDUIData()
    }
    
    func fetchSDUIData() {
        // Simulating a Firebase Firestore fetch
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.components = [
                UIComponent(
                    type: .titleSection,
                    content: ComponentContent(
                        header: "Fitness Courses",
                        subHeader: "Your Active Lessons",
                        courses: nil,
                        categories: nil
                    )
                ),
                UIComponent(
                    type: .courseCarousel,
                    content: ComponentContent(
                        header: nil,
                        subHeader: nil,
                        courses: [
                            CourseModel(title: "Fitness Course", subTitle: "A Fit life is a great life", image: "gym"),
                            CourseModel(title: "Advanced Gym", subTitle: "Push your limits", image: "gym")
                        ],
                        categories: nil
                    )
                ),
                UIComponent(
                    type: .categoryList,
                    content: ComponentContent(
                        header: nil,
                        subHeader: nil,
                        courses: nil,
                        categories: [
                            CategoryModel(name: "Heart Attack", emoji: "💔"),
                            CategoryModel(name: "Body Building", emoji: "💪"),
                            CategoryModel(name: "Yoga", emoji: "🧘‍♀️")
                        ]
                    )
                )
            ]
            self.isLoading = false
        }
    }
}
