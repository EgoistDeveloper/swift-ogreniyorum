# Subscripts – Swift’te Alt İndeksler

Swift’te **subscript**; bir nesneye dizi veya sözlük (dictionary) gibi köşeli parantezlerle (`[]`) erişim sağlamak için kullanılır. Sınıflar, yapılar ve enum’lar kendi subscript’lerini tanımlayabilir.

---

## 📌 Temel Subscript Tanımı

```swift
struct Karesi {
    subscript(index: Int) -> Int {
        return index * index
    }
}

let k = Karesi()
print(k[4]) // 16
```

---

## 📌 Birden Fazla Parametre ile Subscript

```swift
struct Matris {
    let satir: Int, sutun: Int
    var elemanlar: [Double]
    init(satir: Int, sutun: Int, elemanlar: [Double]) {
        self.satir = satir; self.sutun = sutun; self.elemanlar = elemanlar
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            return elemanlar[(row * sutun) + column]
        }
        set {
            elemanlar[(row * sutun) + column] = newValue
        }
    }
}

var m = Matris(satir: 2, sutun: 2, elemanlar: [1, 2, 3, 4])
print(m[0,1]) // 2
m[1,0] = 5
print(m.elemanlar) // [1.0, 2.0, 5.0, 4.0]
```

---

## 📌 Subscript ile Okuma ve Yazma

- **Get**: Değer döndürür.
- **Set**: Değer atar.

```swift
struct SayiDeposu {
    var sayilar = [1,2,3]
    subscript(i: Int) -> Int {
        get { return sayilar[i] }
        set { sayilar[i] = newValue }
    }
}
var depo = SayiDeposu()
print(depo[1]) // 2
depo[1] = 20
print(depo.sayilar) // [1,20,3]
```

---

## 📌 Subscript’ler Nerelerde Kullanılır?

- Dizi, sözlük gibi koleksiyonlarda
- Kendi veri yapılarını daha erişilebilir yapmak için

---

## 📌 Özet

- Subscript ile nesneye dizi gibi erişim sağlanır.
- Birden fazla parametre alabilir.
- Hem okuma (get) hem de yazma (set) yapılabilir.
- Sınıflar, yapılar ve enum’lar tarafından tanımlanabilir.
