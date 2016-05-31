// Demo Swift Alamofire
//
// To demonstration Alamoefire networking, we use a
// a predefined URL that we know will return data:
//
//    https://httpbin.org/get
//
// The response result value string will typically look like JSON,
// and have sections for arguments, headers, origin, and URL.
//
// Example:
//
//     {
//       "args": {},
//       "headers": {
//         "Accept": "*/*",
//         "Accept-Encoding": "gzip;q=1.0, compress;q=0.5",
//         "Accept-Language": "en-US;q=1.0",
//         "Host": "httpbin.org",
//         "User-Agent": "MyApp/com.example.MyApp …"
//       },
//       "origin": "207.237.149.238",
//       "url": "https://httpbin.org/get"
//     }

import UIKit
import Alamofire

class ViewController: UIViewController {

  @IBOutlet weak var demoTextView: UITextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    demoTextView.text = "Loading"
    Alamofire.request(.GET, "https://httpbin.org/get")
      .validate()
      .responseString { response in
        self.demoTextView.text = response.result.value
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

}
