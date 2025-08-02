# Static & Class Members – Swift’te Statik ve Sınıf Üyeleri

Swift’te **static** ve **class** anahtar kelimeleri, bir tipin kendisine ait olan (instance’a değil) özellik ve fonksiyonları tanımlamak için kullanılır.

---

## 📌 Static Üyeler
- `static` ile tanımlanan özellik veya fonksiyonlar, tipin kendisine bağlıdır.
- Yapı (struct), sınıf (class) ve enum’da kullanılabilir.
- Nesne oluşturmadan doğrudan tip üzerinden erişilir.

```swift
struct Sayaç {
    static var toplam = 0
    var deger: Int
    init(deger: Int) {
        self.deger = deger
        Sayaç.toplam += 1
    }
}
print(Sayaç.toplam) // 0
let s1 = Sayaç(deger: 10)
let s2 = Sayaç(deger: 5)
print(Sayaç.toplam) // 2
```

---

## 📌 Class Üyeler
- Yalnızca sınıflarda (class) kullanılır.
- `class` ile tanımlanan fonksiyonlar override edilebilir.
- Özellikler için çoğunlukla static kullanılır; class ile tanımlanan property’ler override edilebilir.

```swift
class Hayvan {
    class func turBilgisi() -> String {
        "Hayvan"
    }
}
class Kedi: Hayvan {
    override class func turBilgisi() -> String {
        "Kedi"
    }
}
print(Hayvan.turBilgisi()) // Hayvan
print(Kedi.turBilgisi())   // Kedi
```

---

## 📌 Kullanım Farkları

- **static**: Değiştirilemez, miras alınamaz.
- **class**: Sadece class’ta, override edilebilir.

---

## 📌 Kısa Özet

- Static: Tipe ait, nesneye değil. Her yerde kullanılabilir.
- Class: Sadece class’ta, override edilebilir (özellikle fonksiyonlarda).

---

## 📌 Pratik Notlar

- Statik üyeler global veri tutmak için idealdir.
- Class fonksiyonları, OOP’de polimorfizm için kullanılır.
