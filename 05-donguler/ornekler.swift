// 05 - Döngüler (for, while, repeat-while) - Detaylı Swift Örnekleri

// 1. Dizi ile for döngüsü
let sayilar = [1, 2, 3, 4, 5]
for sayi in sayilar {
    print("Dizideki sayı:", sayi)
}

// 2. Belirli aralıkta for döngüsü
for i in 1...5 {
    print("Aralıktaki değer:", i)
}
for i in 1..<5 {
    print("Aralıktaki değer (son hariç):", i)
}

// 3. Set ve Dictionary üzerinde for döngüsü
let renkler: Set = ["Kırmızı", "Mavi", "Yeşil"]
for renk in renkler {
    print("Set elemanı:", renk)
}

let notlar = ["Ali": 80, "Ayşe": 90, "Mehmet": 75]
for (isim, not) in notlar {
    print("\(isim) adlı öğrencinin notu: \(not)")
}

// 4. while döngüsü ile tekrar
var x = 1
while x <= 5 {
    print("while döngüsündeki sayı:", x)
    x += 1
}

// 5. repeat-while döngüsü ile tekrar
var y = 1
do {
    print("repeat-while döngüsündeki sayı:", y)
    y += 1
} while y <= 5

// 6. break kullanımı
for i in 1...10 {
    if i == 5 {
        print("Döngü 5'e geldi, duruyor.")
        break
    }
    print("break örneği:", i)
}

// 7. continue kullanımı
for i in 1...5 {
    if i == 3 {
        print("3 atlandı.")
        continue
    }
    print("continue örneği:", i)
}

// 8. Döngü içinde koşullu ifadeler
for i in 1...5 {
    if i % 2 == 0 {
        print("\(i) çift sayıdır")
    } else {
        print("\(i) tek sayıdır")
    }
}

// 9. 1'den 100'e kadar olan tüm çift sayıları yazdır
for i in 1...100 {
    if i % 2 == 0 {
        print("Çift sayı:", i)
    }
}

// 10. Sonsuz döngü ve break ile sonlandırma
var sayi = 1
while true {
    print("Sonsuz döngüdeki sayı:", sayi)
    sayi += 1
    if sayi > 5 {
        print("Koşul sağlandı. Döngü bitiyor.")
        break
    }
}