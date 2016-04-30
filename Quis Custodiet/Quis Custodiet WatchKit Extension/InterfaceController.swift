import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override init() {
        super.init()
        
        addMenuItemWithItemIcon(.More, title: "More", action: #selector(InterfaceController.contextMoreTapped))
    }
    
    @IBAction func helloTapped() {
        pushControllerWithName("World", context: nil)
    }
    
    @IBAction func contextInfoTapped() {
        pushControllerWithName("Info", context: nil)
    }
    
    func contextMoreTapped() {
        presentControllerWithNames(["World", "Info"], contexts: nil)
    }

}
