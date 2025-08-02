# SwiftUI ve UIKit ile Uygulama Geliştirme

## SwiftUI Nedir?
SwiftUI, Apple’ın modern ve deklaratif arayüz geliştirme framework’üdür. Daha az kod ile hızlı ve dinamik arayüzler oluşturmanızı sağlar.

## UIKit Nedir?
UIKit, iOS ekosisteminde uzun yıllardır kullanılan, daha geleneksel ve imperative (emredici) bir arayüz framework’üdür.

---

## Temel Farklar

- **SwiftUI:** Kod ile arayüzü tanımlarsınız, canlı önizleme vardır, daha az kod gerektirir, reactive yaklaşımlıdır.
- **UIKit:** Storyboard veya kod ile arayüz oluşturulur, view lifecycle yönetimi sizdedir, imperative yaklaşımla çalışır.

---

## SwiftUI ile “Merhaba Dünya” Uygulaması

```swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Merhaba Dünya!")
            .font(.title)
            .padding()
    }
}

@main
struct MerhabaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

---

## UIKit ile “Merhaba Dünya” Uygulaması

```swift
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.text = "Merhaba Dünya!"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textAlignment = .center
        label.frame = view.bounds
        view.addSubview(label)
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
        return true;
    }
}
```

---

## Notlar
- SwiftUI ile geliştirme yapmak için Xcode 11+ ve iOS 13+ gereklidir.
- UIKit, eski projelerde ve karmaşık arayüzlerde hala yaygın olarak kullanılır.