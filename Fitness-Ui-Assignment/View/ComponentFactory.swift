import SwiftUI

struct ComponentFactory {
    @ViewBuilder
    static func build(component: UIComponent) -> some View {
        switch component.type {
        case .titleSection:
            if let header = component.content.header,
               let subHeader = component.content.subHeader {
                TitleView(header: header, subHeader: subHeader)
            }
        case .courseCarousel, .carousel:
            CardView(
                title: component.content.title,
                courses: component.content.courses ?? []
            )
        case .categoryList:
            if let categories = component.content.categories {
                CategoriesView(categories: categories)
            }
        }
    }
}
