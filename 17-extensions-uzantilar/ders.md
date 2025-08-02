# Extensions (Uzantılar) Nedir? 

Swift’te extensions, mevcut bir **tipi** (class, struct, enum, protocol) yeni özellikler, metotlar veya hesaplanmış property’ler ile **genişletmemizi** sağlar. Orijinal tanımı değiştirmeden, yeni fonksiyonellik ekleyebilirsin.

---

## Neden Extensions Kullanılır?

- Kodun daha modüler ve okunabilir olmasını sağlar.
- Var olan tipleri kendi projene veya ihtiyacına göre özelleştirmene olanak verir.
- Sınıflara, struct’lara, enum’lara ve protokollere yeni işlevler ekleyebilirsin.

---

## En Basit Extension Örneği

```swift
extension String {
    var ters: String {
        return String(self.reversed())
    }
}

let isim = "Swift"
print(isim.ters) // "tfiwS"
```

---

## Extension ile Metot Eklemek

```swift
extension Int {
    func karesi() -> Int {
        return self * self
    }
}

print(7.karesi()) // 49
```

---

## Extension ile Computed Property Eklemek

```swift
extension Double {
    var kilometre: Double { self * 1000 }
    var santimetre: Double { self * 100 }
}

let mesafe = 2.5
print(mesafe.kilometre)   // 2500.0
print(mesafe.santimetre)  // 250.0
```

---

## Extension ile Protocol Uygulaması Eklemek

```swift
protocol Selamlanabilir {
    func selamla()
}

extension String: Selamlanabilir {
    func selamla() {
        print("Merhaba, \(self)!")
    }
}

"Swift".selamla() // Merhaba, Swift!
```

---

## Sınırlamalar

- Extensions ile stored property eklenemez (yani yeni bir değişken ekleyemezsin, sadece hesaplanmış property eklenebilir).

---

## Özet

- Extensions ile mevcut tipleri geliştirebilir, daha okunabilir ve modüler kod yazabilirsin.
- Swift’in en güçlü özelliklerinden biridir!

---

Daha fazla örnek için aşağıdaki dosyaya göz at!