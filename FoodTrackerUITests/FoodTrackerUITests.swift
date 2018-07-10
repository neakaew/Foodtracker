
import XCTest

class FoodTrackerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
       
        XCUIApplication().launch()

    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_add_delate_meal() {
        
        
        
        let app = XCUIApplication()
        let yourMealNavigationBar = app.navigationBars["Your Meal"]
        yourMealNavigationBar.buttons["Add"].tap()
        app.textFields["Enter meal name"].tap()
        app.textFields["Enter meal name"].typeText("test")
        app.textFields["Enter meal name"].typeText("\r")
        app.buttons["Set 1 star rating"].tap()
        app.navigationBars["test"].buttons["Save"].tap()
        yourMealNavigationBar.buttons["Edit"].tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.buttons["Delete test"]/*[[".cells.buttons[\"Delete test\"]",".buttons[\"Delete test\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery.buttons["Delete"].tap()
        yourMealNavigationBar.buttons["Done"].tap()
       


       
    }
    
}
