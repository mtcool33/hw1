import Foundation



protocol CallBack_StepDetector {
    func step(counter: Int)
}

class StepDetector {
    
    var cb: CallBack_StepDetector?
    var timer: Timer?
    
    var maxCounter = 0
    var stepCounter = 0

    init(cb: CallBack_StepDetector) {
        self.cb = cb
    }
    
    
    
    func startSensors(steps: Int) {
        self.maxCounter = steps
        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true, block: secondly(t:))
    }
    
    func secondly(t: Timer) {
        stepCounter.increase()
        cb?.step(counter: stepCounter)
        
        if (stepCounter >= maxCounter) {
            t.invalidate()
        }
    }
    
}
