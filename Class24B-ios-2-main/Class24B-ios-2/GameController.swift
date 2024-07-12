import UIKit

class GameController: UIViewController {

    @IBOutlet weak var game_LBL_title: UILabel!
    @IBOutlet weak var game_IMG_flag: UIImageView!
    
    private var currentIndex = -1
    private let flags = [#imageLiteral(resourceName: "021-finland"), #imageLiteral(resourceName: "081-bangladesh"), #imageLiteral(resourceName: "051-united-kingdom"), #imageLiteral(resourceName: "106-ghana"), #imageLiteral(resourceName: "100-iceland"), #imageLiteral(resourceName: "072-japan"), #imageLiteral(resourceName: "103-canada")]
    private let names = ["Finland", "Bangladesh", "UK", "", "", "", "Canada"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        next()
    }

    @IBAction func answerClicked(_ sender: UIButton) {
        next()
    }
    
    func next() {
        currentIndex += 1
        game_LBL_title.text = names[currentIndex]
        game_IMG_flag.image = flags[currentIndex]
    }
    
}
