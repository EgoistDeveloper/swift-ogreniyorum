# 09 - Nesne Tabanlı Programlama (Sınıflar ve Struct)

Swift’te nesne tabanlı programlama ile daha büyük ve yönetilebilir uygulamalar geliştirebiliriz. Sınıflar (class) ve yapılar (struct), verileri ve davranışları bir arada tutmamızı sağlar.

---

## 1. Sınıf (Class) Nedir?

Sınıf, bir nesnenin özelliklerini (property) ve davranışlarını (method) tanımlar.

```swift
class Araba {
    var marka: String
    var model: String
    var yil: Int
    
    init(marka: String, model: String, yil: Int) {
        self.marka = marka
        self.model = model
        self.yil = yil
    }
    
    func bilgiYazdir() {
        print("\(yil) model \(marka) \(model)")
    }
}
```

---

## 2. Struct (Yapı) Nedir?

Struct da tıpkı class gibi özellik ve davranış tutar, fakat bazı farkları vardır:

```swift
struct Nokta {
    var x: Double
    var y: Double
    
    func yazdir() {
        print("Nokta: (\(x), \(y))")
    }
}
```

---

## 3. Sınıf ve Struct Farkları

- **Class** referans tiptir, **Struct** değer tiptir.
- Class ile oluşturulan nesneler bellekte referans ile tutulur, struct ile oluşturulanlar değer kopyalanarak aktarılır.
- Class’lar miras alabilir (inheritance), struct’lar alamaz.

---

## 4. Sınıf Kullanımı

```swift
let araba1 = Araba(marka: "Toyota", model: "Corolla", yil: 2020)
araba1.bilgiYazdir() // 2020 model Toyota Corolla

let araba2 = araba1
araba2.marka = "Honda"
araba2.bilgiYazdir() // 2020 model Honda Corolla
araba1.bilgiYazdir() // 2020 model Honda Corolla (değişti!)
```

---

## 5. Struct Kullanımı

```swift
var nokta1 = Nokta(x: 3.0, y: 4.0)
nokta1.yazdir() // Nokta: (3.0, 4.0)

var nokta2 = nokta1
nokta2.x = 10.0
nokta2.yazdir() // Nokta: (10.0, 4.0)
nokta1.yazdir() // Nokta: (3.0, 4.0) (değişmedi!)
```

---

## 6. Metotlar (Fonksiyonlar)

Hem class hem de struct içinde fonksiyon (method) tanımlayabiliriz.

---

## 7. Miras (Inheritance)

Yalnızca class’lar miras alabilir:

```swift
class Tasit {
    var tekerlekSayisi: Int
    init(tekerlekSayisi: Int) {
        self.tekerlekSayisi = tekerlekSayisi
    }
    func hareket() {
        print("Taşıt hareket ediyor")
    }
}

class Motorsiklet: Tasit {
    var marka: String
    init(marka: String) {
        self.marka = marka
        super.init(tekerlekSayisi: 2)
    }
    override func hareket() {
        print("\(marka) motorsiklet hareket ediyor")
    }
}
```

---

## 8. Pratik Örnekler

### Sınıf ile Kullanıcı Tanımı

```swift
class Kullanici {
    var ad: String
    var yas: Int
    init(ad: String, yas: Int) {
        self.ad = ad
        self.yas = yas
    }
    func selamla() {
        print("Merhaba, ben \(ad)!")
    }
}

let k1 = Kullanici(ad: "Ayşe", yas: 21)
k1.selamla() // Merhaba, ben Ayşe!
```

---

## 9. Özeti

- Sınıf (class) ve yapı (struct) ile nesne tabanlı programlama yapılır.
- Class referans, struct değer tipidir.
- Class’lar miras alabilir, struct’lar alamaz.
- Hem class hem struct ile özellik (property) ve davranış (method) tanımlanır.

---

## Sonraki Ders

**10 - Enum (Sıralı Tipler) ve Switch Kullanımı**