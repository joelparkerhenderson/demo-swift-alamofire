# Demo Swift Alamofire

<img src="README.png" alt="Alamofire" style="width: 100%;"/>

This demonstration shows:

  * The [Swift](http://swift.org) programming language with
    [Apple](http://apple.com)
    [Xcode](https://developer.apple.com/xcode/)
    [iOS](http://www.apple.com/ios/)

  * The [Alamofire](https://github.com/Alamofire/Alamofire) networking framework.

There are multiple git branches so pick the one you want:

  * swift-4-xcode-9: Swift version 4, Xcode version 9, iOS version 11.

  * swift-3-xcode-8: Swift version 3, Xcode version 8, iOS version 10.

To use this project:

  * You can clone this repo.

  * Or you can create the project yourself by using this README that explains how to do it.


## Create the project

Launch Xcode and create a new project. We call ours "Demo Swift Alamofire".

  * Need help? See our repo [demo_swift_hello_world](https://github.com/joelparkerhenderson/demo_swift_hello_world).

Create a simple way to print some text to the screen, such as a text view with an IBOutlet named "demoTextView".

  * Need help? See our repo [demo_swift_text_view](https://github.com/joelparkerhenderson/demo_swift_text_view).

Add Alamofire framework to the project, such as via Carthage, or Cocoapods, or Swift Package Manager.

  * Need help with Carthage? See our repo [demo_swift_carthage](https://github.com/joelparkerhenderson/demo_swift_carthage) and add `Cartfile` item ` github "Alamofire/Alamofire"`


## Add Alamofire

Edit `ViewController.swift`.

Add Alamofire networking code:

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
      }
      …
    }


## Run

Run the project.

  * Xcode → Product → Run

The Simulator launches.
  
The Simulator screen shows the response result value string, which looks something like this.

    {
      "args": {},
      "headers": {
        "Accept": "*/*",
        "Accept-Encoding": "gzip;q=1.0, compress;q=0.5",
        "Accept-Language": "en-US;q=1.0",
        "Host": "httpbin.org",
        "User-Agent": "MyApp/com.example.MyApp …"
      },
      "origin": "207.237.149.238",
      "url": "https://httpbin.org/get"
    }

Congratulations! You're successful!


## Tracking

* Package: demo_swift_alamofire
* Version: 3.0.0
* Created: 2016-05-30
* Updated: 2017-09-22
* License: BSD, GPL, MIT
* Contact: Joel Parker Henderson (http://joelparkerhenderson.com)
