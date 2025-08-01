# 04 - Koşullu İfadeler (if, else, switch)

Bu derste Swift dilinde koşullu ifadelerin nasıl kullanıldığını öğreneceksiniz. Koşullu ifadeler, bir programın belirli bir koşula göre farklı yollar izlemesini sağlar.

## 1. if ve else Kullanımı

- `if` ifadesi, verilen koşul **doğruysa** (true) kod bloğunu çalıştırır.
- `else` ise koşul **yanlışsa** (false) devreye girer.

```swift
let yas = 18

if yas >= 18 {
    print("Reşitsiniz.")
} else {
    print("Reşit değilsiniz.")
}
```

### else if ile Çoklu Kontrol

Birden fazla durumu kontrol etmek için `else if` kullanılır.

```swift
let not = 75

if not >= 85 {
    print("Notunuz: Pekiyi")
} else if not >= 70 {
    print("Notunuz: İyi")
} else if not >= 50 {
    print("Notunuz: Orta")
} else {
    print("Notunuz: Zayıf")
}
```

## 2. Karşılaştırma Operatörleri

Koşullarda sıkça kullanılan karşılaştırma operatörleri şunlardır:

- `==` : Eşit mi?
- `!=` : Eşit değil mi?
- `>`  : Büyük mü?
- `<`  : Küçük mü?
- `>=` : Büyük veya eşit mi?
- `<=` : Küçük veya eşit mi?

## 3. Mantıksal Operatörler

Birden fazla koşulu birleştirmek için mantıksal operatörler kullanılır:

- `&&` : ve (her iki koşul da doğruysa)
- `||` : veya (en az bir koşul doğruysa)
- `!`  : değil (koşulun tersini alır)

```swift
let yas = 20
let ehliyetVar = true

if yas >= 18 && ehliyetVar {
    print("Araç kullanabilirsiniz.")
} else {
    print("Araç kullanamazsınız.")
}
```

## 4. switch İfadesi

`switch`, bir değeri birden fazla olası duruma göre kontrol etmek için kullanılır. Her durum (case) ayrı ayrı tanımlanır.

```swift
let gun = 3

switch gun {
case 1:
    print("Pazartesi")
case 2:
    print("Salı")
case 3:
    print("Çarşamba")
case 4:
    print("Perşembe")
case 5:
    print("Cuma")
case 6:
    print("Cumartesi")
case 7:
    print("Pazar")
default:
    print("Geçersiz gün")
}
```

## 5. switch ile Birden Fazla Durum

Birden fazla değeri aynı case ile kontrol edebilirsin:

```swift
let harf = "a"

switch harf {
case "a", "e", "i", "o", "u":
    print("Sesli harf")
default:
    print("Sessiz harf")
}
```

## 6. Koşullu İfadelerle Pratik

Aşağıdaki örneklerle konuyu pekiştirebilirsiniz. Daha fazla örnek için `ornekler.swift` dosyasına bakın.

---

## 7. switch-case ile Aralık (Range) Kullanımı

Swift’te switch-case ile sayısal aralıklar kolayca kontrol edilebilir:

```swift
let puan = 73

switch puan {
case 90...100:
    print("Pekiyi")
case 70..<90:
    print("İyi")
case 50..<70:
    print("Orta")
case 0..<50:
    print("Zayıf")
default:
    print("Geçersiz puan")
}
```

- `90...100` ifadesi, 90 ve 100 dahil aralığı kapsar.
- `70..<90` ifadesi, 70 dahil ama 90 hariç aralığı kapsar.

---

Bir sonraki derste döngüler konusuna geçeceğiz!