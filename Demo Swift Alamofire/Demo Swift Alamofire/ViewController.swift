import UIKit
import Alamofire

class ViewController: UIViewController {

  @IBOutlet weak var demoTextView: UITextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    Alamofire.request("https://httpbin.org/get")
      .validate()
      .responseString { response in
        self.demoTextView.text = response.result.value
      }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

}
