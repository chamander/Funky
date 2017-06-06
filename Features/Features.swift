
final class Features: XCTestCase {

  override func setUp() {
    super.setUp()
    continueAfterFailure = false
    XCUIApplication().launch()
  }

  func testCyclingOfData() {
    let range: CountableClosedRange = 1...7
    for currentValue in range {
      XCTAssertTrue(funky.staticTexts["ID: \(currentValue)"].exists)
      nextButton.tap()
    }
  }

  func testPeopleWhoAreFreakingAncient() {
    while !funky.staticTexts["Name: Squire Gavan Chan"].exists {
      nextButton.tap()
    }

    XCTAssertTrue(funky.staticTexts["Gender: Male. Age: Ancient."].exists)
  }

  func testAndyIsANoob() {
    while !funky.staticTexts["ID: 6"].exists {
      nextButton.tap()
    }

    XCTAssertTrue(funky.staticTexts["Name: n0ob Andy Chen"].exists)
  }

  private let funky: XCUIApplication = XCUIApplication()

  private var nextButton: XCUIElement {
    return funky.buttons["Next"]
  }

}

import XCTest
