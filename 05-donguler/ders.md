# 05 - Döngüler (for, while, repeat-while)

Döngüler, programda bir işlemi birden fazla kez, otomatik olarak tekrar etmemizi sağlar. Örneğin, bir dizideki tüm elemanları yazdırmak, belirli bir işlemi 10 kez yapmak, ya da bir koşul gerçekleşene kadar devam etmek için döngüler kullanılır.

Swift’te 3 ana döngü tipi vardır:
- `for` döngüsü
- `while` döngüsü
- `repeat-while` döngüsü

---

## 1. for Döngüsü

### Temel Kullanım
`for` döngüsü, bir koleksiyonun (dizi, set, dictionary) veya belirli bir sayı aralığının üzerinde dolaşmak için kullanılır.

```swift
let sayilar = [1, 2, 3, 4, 5]

for sayi in sayilar {
    print(sayi)
}
```

### Belirli Aralıkta for Döngüsü

```swift
for i in 1...5 {
    print(i) // 1, 2, 3, 4, 5
}
```

```swift
for i in 1..<5 {
    print(i) // 1, 2, 3, 4
}
```

### Dizi, Set ve Dictionary Üzerinde Dönmek

```swift
let isimler = ["Ali", "Ayşe", "Mehmet"]
for isim in isimler {
    print(isim)
}

let renkler: Set = ["Kırmızı", "Mavi", "Yeşil"]
for renk in renkler {
    print(renk)
}

let notlar = ["Ali": 80, "Ayşe": 90, "Mehmet": 75]
for (isim, not) in notlar {
    print("\(isim): \(not)")
}
```

---

## 2. while Döngüsü

```swift
var x = 1

while x <= 5 {
    print(x)
    x += 1
}
```

---

## 3. repeat-while Döngüsü

```swift
var y = 1

deposit {
    print(y)
    y += 1
} while y <= 5
```

---

## 4. break ve continue Komutları

```swift
for i in 1...10 {
    if i == 5 {
        break
    }
    print(i)
}

for i in 1...5 {
    if i == 3 {
        continue
    }
    print(i)
}
```

---

## 5. Döngü İçinde Koşullu İfadeler

```swift
for i in 1...5 {
    if i % 2 == 0 {
        print("\(i) çift sayıdır")
    } else {
        print("\(i) tek sayıdır")
    }
}
```

---

## 6. Pratik: 1’den 100’e kadar olan tüm çift sayıları yazdır

```swift
for i in 1...100 {
    if i % 2 == 0 {
        print(i)
    }
}
```

---

## 7. Sonsuz Döngü ve break ile sonlandırma

```swift
var sayi = 1
while true {
    print(sayi)
    sayi += 1
    if sayi > 5 {
        break
    }
}
```

---

## 8. Özet

- Döngüler, kodun tekrar tekrar çalışmasını sağlar.
- `for`, `while`, `repeat-while` tipleriyle farklı ihtiyaçlara uygun döngüler kurabilirsin.
- Koleksiyonlarda, aralıklarda ve koşullarda döngüleri rahatça kullanabilirsin.

Bir sonraki konuda koleksiyonlar (Array, Dictionary, Set) ile ilgili detaylara geçeceğiz!