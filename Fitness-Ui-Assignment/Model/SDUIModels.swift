import SwiftUI

enum ComponentType: String, Codable {
    case titleSection = "title_section"
    case courseCarousel = "course_carousel"
    case carousel = "carousel" // Support user's alias
    case categoryList = "category_list"
}

struct SDUIResponse: Codable {
    let components: [UIComponent]
}

struct UIComponent: Codable, Identifiable {
    let id = UUID()
    let type: ComponentType
    let content: ComponentContent
    
    enum CodingKeys: String, CodingKey {
        case type, content
    }
}

struct ComponentContent: Codable {
    // Title/Header for sections
    let header: String?
    let subHeader: String?
    let title: String? // Support user's naming
    
    // Course Carousel Fields
    let courses: [CourseModel]?
    let dataSource: String? // Match user's 'data_source' if needed
    
    enum CodingKeys: String, CodingKey {
        case header, subHeader, title, courses, categories
        case dataSource = "data_source"
    }
    
    // Category List Fields
    let categories: [CategoryModel]?
}

struct CourseModel: Codable, Identifiable {
    let id = UUID()
    let title: String
    let subTitle: String
    let image: String
    
    enum CodingKeys: String, CodingKey {
        case title, subTitle, image
    }
}

struct CategoryModel: Codable, Identifiable {
    let id = UUID()
    let name: String
    let emoji: String?
    
    enum CodingKeys: String, CodingKey {
        case name, emoji
    }
}
