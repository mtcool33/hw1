import Foundation
import UIKit

class RunningController: UIViewController {

    @IBOutlet weak var running_LBL_steps: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        running_LBL_steps.text = "\(0)"
        
        var x = 3
        var t = x.add(num: 4)
        
        var d: Double = 9
        var s = d.sqrt()
        
    }

    @IBAction func startClicked(_ sender: Any) {
        let myStepDetector = StepDetector(cb: self)
        myStepDetector.startSensors(steps: 4)

    }

}


extension RunningController: CallBack_StepDetector {
    
    func step(counter: Int) {
        print("\(counter)" )
        running_LBL_steps.text = "\(counter)"
    }
}
