
import XCTest
import FBSnapshotTestCase
@testable import FoodTracker


class SnapshotTest: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        recordMode = true
            }
    
    override func tearDown() {
       
        super.tearDown()
    }
    
    func test_snapshop() {
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        [Device.phone4inch,Device.pad].forEach { (device) in
        let vc = storybord.instantiateViewController(withIdentifier: "MealViewController")
        let (parent, _) = traitControllers(device: device, orientation: .portrait, child: vc)
            
     //   FBSnapshotVerifyView(parent.view, identifier: "\(device)")
        }
    }
    

    
    func testPerformanceExample() {
        
        self.measure {
            
        }
    }
    
}
