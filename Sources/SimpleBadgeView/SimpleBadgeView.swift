import SwiftUI


public struct SimpleBadgeView: View {
    public var count: Int? = 0
    public var backgroundColor: Color = .red
    
    fileprivate var formatter: NumberFormatter = {
        let f = NumberFormatter()
        f.numberStyle = .decimal
        f.usesGroupingSeparator = false
        return f
    }()
    
    fileprivate var currentValue: String {
        let number = NSNumber(value: count ?? 0)
        return formatter.string(from: number) ?? ""
    }
    
    public var body: some View {
        if count != nil {
            Circle()
                .foregroundColor(backgroundColor)
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .overlay(
                    Text(currentValue)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                        .foregroundColor(.white)
                        .padding(2)
                )
                .alignmentGuide(.top, computeValue: { dim in
                    dim.height / 2
                })
                .alignmentGuide(.trailing, computeValue: { dim in
                    (dim.width / 2)
                })
                .alignmentGuide(.leading, computeValue: { dim in
                    (dim.width / 2)
                })
                .alignmentGuide(.bottom, computeValue: { dim in
                    dim.height / 2
                })
                .opacity(count == 0 ? 0 : 1)
        }
    }
}

extension View {
    public func simplebadge(count: Int? = 0, alignment: Alignment = .topTrailing, color: Color = .green) -> some View {
        ZStack(alignment: alignment) {
            self
            SimpleBadgeView(count: count, backgroundColor: color)
        }
    }
}
