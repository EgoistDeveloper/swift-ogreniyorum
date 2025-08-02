# Tuples (Demetler) – Swift’te Demetler

Swift’te **tuple (demet)**, birden fazla değeri tek bir grup halinde bir arada tutmanızı sağlar. Tuple’lar:
- Farklı tipte değerleri içerebilir.
- Fonksiyonlardan birden fazla değer döndürmek için çok kullanışlıdır.

---

## 📌 Tuple Tanımlama

Bir tuple tanımlamak için parantez içinde değerleri virgülle ayırarak yazarsınız:

```swift
let kisi = ("Ali", 28)
```

➡️ `kisi` tuple’ının:
- `kisi.0` → "Ali" (String)
- `kisi.1` → 28 (Int)

---

## 📌 Tuple Elemanlarına Erişim

### İndeks ile:
```swift
print(kisi.0) // "Ali"
print(kisi.1) // 28
```

### İsimle:
```swift
let ogrenci = (isim: "Ayşe", yas: 22)
print(ogrenci.isim) // "Ayşe"
print(ogrenci.yas)  // 22
```

---

## 📌 Destructuring (Parçalama)

Tuple içeriğini değişkenlere ayırabilirsiniz:

```swift
let (isim, yas) = ogrenci
print("İsim: \(isim), Yaş: \(yas)")
```

---

## 📌 Nested (İç İçe) Tuple Kullanımı

```swift
let kisi = (isim: "Ali", yas: 28, adres: (sehir: "İstanbul", postaKodu: 34000))
print(kisi.adres.sehir)  // "İstanbul"
```

---

## 📌 Fonksiyonlarda Tuple Kullanımı

### Fonksiyondan tuple döndürme:
```swift
func minMax(array: [Int]) -> (min: Int, max: Int) {
    let minValue = array.min() ?? 0
    let maxValue = array.max() ?? 0
    return (minValue, maxValue)
}
let sonuc = minMax(array: [1, 4, 9, -3])
print(sonuc.min) // -3
```

### Fonksiyon parametresi olarak tuple:
```swift
func yazdir(adres: (sehir: String, postaKodu: Int)) {
    print("Adres: \(adres.sehir), \(adres.postaKodu)")
}
```

---

## 📌 Tuple ile Değer Değiştirme

```swift
var a = 5
var b = 10
(a, b) = (b, a)
print("a: \(a), b: \(b)")
```

---

## 📌 Tuple ile Switch Kullanımı (Pattern Matching)

```swift
let nokta = (x: 0, y: 5)
switch nokta {
case (0, 0):
    print("Orijin noktası")
case (_, 0):
    print("X ekseni üzerinde")
case (0, _):
    print("Y ekseni üzerinde")
default:
    print("Koordinat düzlemi")
}
```

---

## 📌 Tuple ve Array Farkı

| Özellik          | Tuple                                  | Array                                 |
|------------------|----------------------------------------|--------------------------------------|
| Eleman Tipi      | Farklı tiplerde olabilir               | Tüm elemanlar aynı tipte             |
| Uzunluk          | Sabit                                  | Değişken                              |
| Erişim           | İsimle veya indeksle                   | Sadece indeksle                      |

---

## 📌 Kullanım Alanları

- Fonksiyonlardan çoklu değer döndürme
- Geçici veri gruplama
- Değer değiştirme, eşleştirme, modelleme

---

## 📝 Özet

Tuple’lar Swift’te:
- Küçük veri grupları için pratik çözüm sunar.
- Kodun okunabilirliğini artırır.
- Karmaşık struct’lara gerek olmadan veri taşımayı kolaylaştırır.
