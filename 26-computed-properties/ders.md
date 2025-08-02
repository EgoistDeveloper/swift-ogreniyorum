# Computed Properties – Swift’te Hesaplanan Özellikler

Swift’te **computed property** (hesaplanan özellik), bir değer depolamayan, her erişildiğinde hesaplanan ve döndürülen özelliklerdir. Yani, `var` ile tanımlanır ve genellikle bir get bloğu ile değeri hesaplanır. İsteğe bağlı olarak bir set bloğu ile de atanabilir.

---

## 📌 Temel Tanım

```swift
struct Dikdortgen {
    var genislik: Double
    var yukseklik: Double
    var alan: Double {
        get {
            return genislik * yukseklik
        }
        set {
            // Alan verildiğinde genişlik sabit, yükseklik ayarlanır
            yukseklik = newValue / genislik
        }
    }
}

var d = Dikdortgen(genislik: 5, yukseklik: 3)
print(d.alan) // 15.0
d.alan = 20
print(d.yukseklik) // 4.0
```

---

## 📌 Read-Only (Salt Okunur) Hesaplanan Özellik

```swift
struct Kare {
    var kenar: Double
    var cevre: Double { // get bloğu tek satırda
        4 * kenar
    }
}
let k = Kare(kenar: 2)
print(k.cevre) // 8.0
```

---

## 📌 Sınıf ve Yapılarda Kullanım

Hem class hem de struct’ta kullanılabilir. Özellikle veri üzerinde mantıksal bir hesaplama yapmak için idealdir.

---

## 📌 Kapanış Notları

- Hesaplanan özellikler veri depolamaz, değeri her erişimde hesaplar.
- Sadece get bloğu ile salt okunur olabilir.
- Hem get hem set ile okuma & atama yapılabilir.
- Özellikle model ve veri işleme işlemlerinde pratiklik sağlar.

---

## 📌 Kısa Özet

- Depolanan özellikler veri tutar, hesaplanan özellikler ise her erişimde değeri hesaplar.
- Hesaplanan özellikler ile daha okunaklı ve efektif kod yazmak mümkündür.
