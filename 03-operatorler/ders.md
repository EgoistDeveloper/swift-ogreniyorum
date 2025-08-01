# 03-operatorler

Swift’te operatörler, değişkenler ve sabitler üzerinde matematiksel ve mantıksal işlemler yapmak için kullanılır.

---

## Aritmetik Operatörler

- **Toplama (+)**
- **Çıkarma (-)**
- **Çarpma (*)**
- **Bölme (/)**
- **Mod (kalan) (%)**

**Örnek:**
```swift
let sayi1 = 8
let sayi2 = 3

let toplam = sayi1 + sayi2       // 11
let fark = sayi1 - sayi2         // 5
let carpim = sayi1 * sayi2       // 24
let bolum = sayi1 / sayi2        // 2
let kalan = sayi1 % sayi2        // 2
```

---

## Karşılaştırma Operatörleri

İki değeri karşılaştırır ve sonuç olarak true veya false döner.

- **Eşit mi? (==)**
- **Eşit değil mi? (!=)**
- **Küçük mü? (<)**
- **Büyük mü? (>)**
- **Küçük veya eşit mi? (<=)**
- **Büyük veya eşit mi? (>=)**

**Örnek:**
```swift
let yas = 20
let reşitMi = yas >= 18 // true
```

---

## Mantıksal Operatörler

- **Ve (&&)**: Her iki koşul da doğruysa true döner.
- **Veya (||)**: Koşullardan en az biri doğruysa true döner.
- **Değil (!)**: Sonucu tersine çevirir.

**Örnek:**
```swift
let x = 5
let y = 10

let sonuc1 = (x < 10) && (y > 5)   // true
let sonuc2 = (x > 10) || (y > 5)   // true
let sonuc3 = !(x == 5)             // false
```

---

## Egzersiz

1. İki tam sayı değişkeni tanımlayın ve aritmetik işlemler sonucunu ekrana yazdırın.
2. Bir yaş değişkeniyle reşitlik kontrolü yapın.
3. Birden fazla koşulun doğruluğunu mantıksal operatörlerle test edin.

---

Bir sonraki derste koşullu ifadeleri öğreneceğiz.