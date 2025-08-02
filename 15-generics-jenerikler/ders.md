# Generics (Jenerikler) Nedir?

Swift’te generics (jenerikler) ile kodun daha **esnek**, **tekrar kullanılabilir** ve **tip güvenli** olmasını sağlarız. Generics, bir fonksiyonun veya yapının birden fazla veri tipinde çalışabilmesini sağlar.

---

## Neden Generics Kullanılır?

- Kod tekrarını azaltır.
- Birden fazla tip ile çalışabilen fonksiyonlar/yapılar oluşturmanı sağlar.
- Tip güvenliği sağlar; hata yapmanı önler.

---

## En Basit Generic Fonksiyon

```swift
func yazdir<T>(deger: T) {
    print(deger)
}

yazdir(deger: 5)          // Int
yazdir(deger: "Selam")    // String
yazdir(deger: 3.14)       // Double
```
Burada `<T>` generic bir tip parametresi. Fonksiyon, herhangi bir tipte çalışabilir.

---

## Generic Struct Örneği

```swift
struct Kutu<T> {
    var icerik: T
}

let intKutu = Kutu(icerik: 10)
let stringKutu = Kutu(icerik: "Swift")
```

---

## Generic Array ve Dictionary

Swift’in Array ve Dictionary yapıları da generic’tir:

```swift
var sayilar: [Int] = [1, 2, 3]
var kelimeler: [String] = ["elma", "armut"]
var sozluk: [String: Int] = ["bir": 1, "iki": 2]
```

---

## Generic ile Tip Kısıtlama

Bazen generic tipin belirli bir protokolü uygulamasını isteyebiliriz:

```swift
func buyukOlan<T: Comparable>(_ a: T, _ b: T) -> T {
    return a > b ? a : b
}

print(buyukOlan(2, 5))           // 5
print(buyukOlan("Ali", "Veli"))  // Veli
```

---

## Özet

- Generics, farklı tiplerle çalışan kodu tek seferde yazmanı sağlar.
- Swift’in birçok yapısı (Array, Dictionary, Set, Optional) zaten generic’tir.
- Kodun daha az tekrarlı ve daha güvenli olur.

---

Daha fazla pratik için aşağıdaki örnekler dosyasını incele!