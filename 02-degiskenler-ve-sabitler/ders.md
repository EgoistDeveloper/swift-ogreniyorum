# 02 - Değişkenler ve Sabitler

Swift dilinde verileri saklamak için **değişkenler** (`var`) ve **sabitler** (`let`) kullanılır. Bu kavramları iyi anlamak, kodunuzun hem okunabilirliğini hem de güvenliğini artırır.

---

## Değişkenler (`var`)

- Değişkenler, içeriği sonradan değiştirilebilen veri saklama alanlarıdır.
- Bir değişken tanımladıktan sonra istediğiniz kadar yeni değer atayabilirsiniz.

**Örnek:**
```swift
var isim = "Arzu"
print(isim) // Çıktı: Arzu

isim = "Can"
print(isim) // Çıktı: Can
```

---

## Sabitler (`let`)

- Sabitler, tanımlandıktan sonra değeri değiştirilemeyen veri saklama alanlarıdır.
- Sabitlerin değerini değiştirmeye çalışırsanız hata alırsınız.

**Örnek:**
```swift
let dogumYili = 1995
print(dogumYili) // Çıktı: 1995

// dogumYili = 2000 // HATA: let ile tanımlanan sabitlerin değeri değiştirilemez.
```

---

## Temel Veri Tipleri

- **String:** Metin değerleri (örn: "Elif")
- **Int:** Tam sayılar (örn: `25`)
- **Double:** Ondalıklı sayılar (örn: `3.14`)
- **Bool:** Doğru/Yanlış değerleri (`true` veya `false`)

**Örnekler:**
```swift
var ad: String = "Elif"
var yas: Int = 25
let pi: Double = 3.14
var aktifMi: Bool = true
```

---

## Egzersiz

1. Kendi adınızı bir değişkene, doğum yılınızı bir sabite atayın ve her ikisini de ekrana yazdırın.
2. Bir değişkenin değerini değiştirerek çıktısını gözlemleyin.
3. Bir Boolean değişken tanımlayın ve onu ekrana yazdırın.

---

Bir sonraki derste temel operatörleri öğreneceğiz.