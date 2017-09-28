# Demo Swift Alamofire

<img src="README.png" alt="Alamofire" style="width: 100%;"/>

This demonstration shows:

  * The [Swift](http://swift.org) programming language with
    [Apple](http://apple.com)
    [Xcode](https://developer.apple.com/xcode/)
    [iOS](http://www.apple.com/ios/)

  * The [Alamofire](https://github.com/Alamofire/Alamofire) networking framework.


## Start

To use this demo, you can clone this repo, or you can use this README to create your own project.

There are multiple git branches so pick the one you want:

  * master: current Swift, Xcode, iOS; equivalent to branch swift-4-xocde-9.

  * swift-4-xcode-9: Swift version 4, Xcode version 9, iOS version 11.

  * swift-3-xcode-8: Swift version 3, Xcode version 8, iOS version 10.


## Create the project

Launch Xcode and create a new project. 

  * Use iOS template **Single View Application** then **Product Name** is **Demo Swift Alamofire**

  * [Help](doc/setup/create_a_new_xcode_project.md)

Create a simple way to print some text to the screen.

  * We create a text view object and IBOutlet named "demoTextView".

  * [Help](doc/setup/create_a_text_view.md)

Add the Alamofire framework. We suggest using Carthage or Cocoapods.

  * Carthage `Cartfile`:

    ```
    github "Alamofire/Alamofire"
    ```

  * [Help](doc/setup/carthage_setup.md)


## Add Alamofire

Edit `ViewController.swift`.

Add Alamofire networking code:

```swift
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
    …
```


## Run

Run the project.

  * Xcode → Product → Run

The Simulator launches.
  
The Simulator screen shows the response result value string, which looks something like this.

```json
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
```

Congratulations! You're successful!


## Tracking

* Package: demo_swift_alamofire
* Version: 3.0.0
* Created: 2016-05-30
* Updated: 2017-09-22
* License: BSD, GPL, MIT
* Contact: Joel Parker Henderson (http://joelparkerhenderson.com)
