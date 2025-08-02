# 02 - Değişkenler ve Sabitler

Swift’te verileri saklamak için **değişkenler** (`var`) ve **sabitler** (`let`) kullanılır.

---

## Değişkenler (var) ve Sabitler (let)

Değeri değişebilen veri tutuculara **değişken**, bir kez atanıp değiştirilemeyenlere **sabit** denir.

```swift
var isim = "Ahmet"
isim = "Mehmet" // Değeri değiştirilebilir

let pi = 3.14
// pi = 3.14159 // Hata! Sabitlerin değeri değiştirilemez.
```

---

## Temel Veri Tipleri ve Tip Belirtme

Swift tip güvenli bir dildir. Değişken veya sabit tanımlarken tipini açıkça belirtebilirsiniz:

```swift
var yas: Int = 25        // Int (tam sayı)
let isim: String = "Zeynep" // String (metin)
var aktifMi: Bool = true // Bool (doğru/yanlış)
let oran: Double = 2.5   // Double (ondalıklı sayı)
```

Ayrıca Swift tipi, atanan değerden otomatik olarak da çıkarabilir (type inference):

```swift
var sehir = "İstanbul"   // String olarak algılar
let puan = 90            // Int olarak algılar
var derece = 36.5        // Double olarak algılar
let basarili = true      // Bool olarak algılar
```

---

## Tip Güvenliği

Swift, yanlış tipte değer atanmasına izin vermez:

```swift
var ad: String = "Ayşe"
// ad = 22 // Hata! String yerine Int atanamaz.
```

---

## Çoklu Tanımlama

Aynı satırda birden fazla değişken veya sabit tanımlanabilir:

```swift
var x = 5, y: Int = 10, z = 0
let boy: Double = 1.80, kilo = 75.0
```

---

## Sabitlerin Avantajları

- Kodun daha güvenli ve okunabilir olmasını sağlar.
- İstemeden değer değişikliğini engeller.

---

## Kısa Not: Opsiyoneller (Optionals)

Bir değişkenin değerinin olup olmadığını göstermek için kullanılır.

```swift
var telefonNumarasi: String? = nil
telefonNumarasi = "555-1234"
```
---

## Egzersizler

1. Farklı tiplerde üç değişken ve iki sabit tanımlayın.
2. Değişkeninizin ve sabitinizin değerini değiştirmeye çalışın. Ne olur?
3. Tip belirterek bir değişken tanımlayın ve değerini ekrana yazdırın.

---
