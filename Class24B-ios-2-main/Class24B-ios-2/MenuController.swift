import Foundation
import UIKit

class MenuController: UIViewController {
    
    var url: String?
    var length: Double?
    var age: Int?
    var name: String? = "guy"
    var second = "guy"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        name = "avi"
//        name = nil
//        second = nil
        
        
        let cleanName: String = name?.capitalized ?? ""
        let result: Int? = months(years: age)
        print("\(cleanName)   \(months)")
        
        
        
        getinputFromUser()

        url = getFromServer()
        
        let data: String = url!.lowercased()
        // dfdgdff
        // dfdgdf
        // dfdgdf
        // dfdgdf

        if let URL = url {
            let data: String = URL.capitalized
            let datea: String = URL.capitalized
            let weeer: String = URL.capitalized
            let ewer: String = URL.capitalized

        }
        
        if (url != nil) {
            
        }

        //print(sqrt(d: LENGTH))
        
        
        
    }
    
    func getFromServer() -> String? {
        return nil
    }
    
    func validate(str: String?) -> Bool {
        guard let STR = str else {
            return false
        }
        return STR.count > 5
        
        // equals to::
//        if (str != nil) {
//            let STR: String = str!
//            return STR.count > 5
//        } else {
//            return false
//        }
        
        
        
    }
    
    func getinputFromUser() {
        length = 9.0
    }
    
    func power(num: Int?) -> Int {
        guard let NUM = num else {
            return 0;
        }
        return NUM * NUM
        
    }
    
    
    func sqrt(d: Double) -> Double {
        return d.sqrt()
    }
    
    func months(years: Int?) -> Int? {
        if (years == nil) {
            return nil
        } else {
            let yearsF: Int = years ?? 0
            return yearsF * 12
        }

    }
    
}
