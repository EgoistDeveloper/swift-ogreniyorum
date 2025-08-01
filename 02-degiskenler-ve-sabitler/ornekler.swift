// 02 - Değişkenler ve Sabitler
//
// Swift dilinde verileri saklamak için değişkenler (var) ve sabitler (let) kullanılır.
//
// - Değişkenler (var): İçeriği sonradan değiştirilebilir.
// - Sabitler (let): Tanımlandıktan sonra değeri değiştirilemez.
//
// Aşağıdaki örneklerle bunu inceleyelim:

import Foundation

// Bir değişken tanımlayalım
var isim = "Arzu"
print(isim) // Çıktı: Arzu

// Değişkenin değerini değiştirebiliriz
isim = "Can"
print(isim) // Çıktı: Can

// Bir sabit tanımlayalım
let dogumYili = 1995
print(dogumYili) // Çıktı: 1995

// Sabitin değerini değiştirmeye çalışırsak hata alırız:
// dogumYili = 2000 // HATA: let ile tanımlanan sabitlerin değeri değiştirilemez.


// Temel veri tipleri örnekleri
var ad: String = "Elif"
var yas: Int = 25
let pi: Double = 3.14
var aktifMi: Bool = true

print("Ad:", ad)
print("Yaş:", yas)
print("Pi:", pi)
print("Aktif mi?:", aktifMi)