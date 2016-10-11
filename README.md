# Demo Swift Alamofire

<img src="README.png" alt="Alamofire" style="width: 100%;"/>

This demonstration shows:

  * The [Swift 3](http://swift.org) programming language with
    [Apple](http://apple.com)
    [iOS 10](http://www.apple.com/ios/)
    [Xcode 8](https://developer.apple.com/xcode/)

  * The [Alamofire 4](https://github.com/Alamofire/Alamofire) networking framework.

This README describes how to create the project, if you want to try doing it yourself.

To learn more about Swift and Alamofire, see the official documentation for [Alamofire](https://github.com/Alamofire/Alamofire)

## How to create the project

1. Launch Xcode and create a new project. We call ours "Demo Swift Alamofire".

  * Need help? See our repo [demo_swift_hello_world](https://github.com/joelparkerhenderson/demo_swift_hello_world).

1. Create a simple way to print some text to the screen, such as a text view with an IBOutlet named "demoTextView".

  * Need help? See our repo [demo_swift_text_view](https://github.com/joelparkerhenderson/demo_swift_text_view).

1. Add Alamofire to the project.

  * To add Alamofire as a dependency, we prefer using Carthage.

  * If you prefer, you can add it by using a dynamic framework or using Cocoapods.

  * Need help with Carthage? See our repo [demo_swift_carthage](https://github.com/joelparkerhenderson/demo_swift_carthage).

## Add Alamofire

1. Edit `ViewController.swift`.

1. Add Alamofire networking code:

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

1. Verify Alamofire works by runing the app. The screen shows the response result value string, which looks something like this.

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

## Tracking

* Package: demo_swift_alamofire
* Version: 2.0.0
* Created: 2016-05-30
* Updated: 2016-10-10
* License: BSD, GPL, MIT
* Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
