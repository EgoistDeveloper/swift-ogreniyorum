// SwiftUI Örneği
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("SwiftUI Merhaba Dünya!")
                .font(.title)
                .padding()
            Button("Butona Tıkla") {
                print("Butona tıklandı!")
            }
            .padding()
        }
    }
}

@main
struct OrnekApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// UIKit Örneği
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.text = "UIKit Merhaba Dünya!"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textAlignment = .center
        label.frame = CGRect(x: 40, y: 100, width: 300, height: 40)
        view.addSubview(label)

        let button = UIButton(type: .system)
        button.setTitle("Butona Tıkla", for: .normal)
        button.frame = CGRect(x: 40, y: 160, width: 300, height: 40)
        button.addTarget(self, action: #selector(butonTiklandi), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc func butonTiklandi() {
        print("Butona tıklandı!")
    }
}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        return true
    }
}
