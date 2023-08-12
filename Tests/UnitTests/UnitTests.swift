import XCTest
@testable import Deeplinking

final class MyAppTests: XCTestCase {
    override class func tearDown() {
        print("🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞Test Ended🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞🐞")
    }
    
    func testSomeFunc() {
        let vc = ViewController()
        let expectation = 4
        let result = vc.makeSomeAction()
        
        XCTAssertEqual(result, expectation)
    }
}
