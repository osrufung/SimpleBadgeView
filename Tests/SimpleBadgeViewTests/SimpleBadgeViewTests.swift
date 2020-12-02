import XCTest
import SnapshotTesting
import SwiftUI
@testable import SimpleBadgeView

private let referenceSize = CGSize(width: 500, height: 500)

final class SimpleBadgeViewTests: XCTestCase {
    func testDefault() {
        let view = Text("Some label with a badge at the top right corner")
            .padding(10)
            .background(Color.gray)
            .simplebadge(count: 1)
            .padding()
        
        assertSnapshot(matching: view.referenceFrame(), as: .image)
    }
    
    func testNoBadge() {
        let view = Text("No Badge here")
            .padding(10)
            .simplebadge(count: 0)
        assertSnapshot(matching: view.referenceFrame(), as: .image)
    }
    
    func testBadgeOtherPosition() {
        let view = Text("A bottom badge in red")
            .padding(10)
            .background(Color.gray)
            .simplebadge(count: 2, alignment: .bottomLeading, color: .red)
        assertSnapshot(matching: view.referenceFrame(), as: .image)
    }
    

    static var allTests = [
        ("testExample", testDefault, testNoBadge, testBadgeOtherPosition),
    ]
}

private extension SwiftUI.View {
    func referenceFrame() -> some View {
        self.frame(width: referenceSize.width, height: referenceSize.height)
    }
}
