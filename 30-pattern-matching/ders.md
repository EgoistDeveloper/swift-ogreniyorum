# 🧩 Pattern Matching – Desen Eşleme

Swift’te pattern matching (desen eşleme), kodunuzu daha okunabilir ve esnek hale getirmek için farklı veri yapılarını veya durumları kolayca ayırt etmenizi sağlar. Özellikle `switch`, `if case`, `for case`, opsiyonel değerler, tuple’lar ve enum’lar üzerinde sıkça kullanılır.

## 🔄 Switch ile Desen Eşleme

En yaygın kullanım alanlarından biri switch ifadeleridir:

```swift
let point = (2, 0)

switch point {
case (0, 0):
    print("Orjin")
case (_, 0):
    print("X ekseninde")
case (0, _):
    print("Y ekseninde")
default:
    print("Başka bir noktada")
}
```

## 🏷️ Enumlarda Pattern Matching

Enum’ların belirli durumlarını kontrol etmek için kullanılır:

```swift
enum Hata {
    case network(code: Int)
    case database
    case unknown
}

let result = Hata.network(code: 404)

switch result {
case .network(let code) where code == 404:
    print("Sunucu bulunamadı")
case .network(let code):
    print("Ağ hatası: \(code)")
case .database:
    print("Veritabanı hatası")
case .unknown:
    print("Bilinmeyen hata")
}
```

## ⚡ if case ile Pattern Matching

Belirli bir durumu hızlıca kontrol etmek için:

```swift
let status: Hata = .network(code: 200)

if case .network(let code) = status, code == 200 {
    print("Her şey başarılı!")
}
```

## 🔁 for case ile Pattern Matching

Bir koleksiyonda sadece belirli desenlere sahip elemanları seçmek için:

```swift
let results: [Hata] = [.network(code: 200), .database, .network(code: 404)]

for case .network(let code) in results {
    print("Ağ kodu: \(code)")
}
```

## ❓ Optional ve Tuple ile Pattern Matching

Opsiyonel ve tuple değerlerde desen eşleme:

```swift
let value: Int? = 10

if case let x? = value {
    print("Değer: \(x)")
}
```

## 🔹 Wildcard (_) Kullanımı

Tanımlı bir değerle ilgilenmiyorsanız `_` karakterini kullanabilirsiniz.

```swift
let tuple = (1, "merhaba")
switch tuple {
case (_, "merhaba"):
    print("İkinci değer merhaba")
default:
    print("Başka bir tuple")
}
```

## 📝 Özet

Pattern matching, Swift’te kodunuzu daha kısa ve anlaşılır yazmanızı sağlar. Switch-case, if case, for case, opsiyoneller, enum’lar ve tuple’lar ile güçlü bir şekilde kullanılabilir.
