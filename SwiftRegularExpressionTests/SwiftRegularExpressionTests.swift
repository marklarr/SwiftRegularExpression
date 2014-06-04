import XCTest
import SwiftRegularExpression

class SwiftRegularExpressionTests: XCTestCase {

    func testMatches() {
        XCTAssertTrue("Something" =~ "Some[a-z]{4,7}")
        
        XCTAssertTrue("Ayaka" =~ "A*")
        XCTAssertTrue("Kayakayak" =~ "ayaka")
        XCTAssertFalse("Kayakayak" =~ "^ayaka$")
        
        XCTAssertTrue("Mickey" =~ "M..k")
        XCTAssertTrue("Mark" =~ "M..k")
        XCTAssertFalse("Ayaka" =~ "M..k")
        
        XCTAssertTrue("Mickey" =~ "M..k..")
        XCTAssertFalse("Mark" =~ "M..k..")
    }
}
