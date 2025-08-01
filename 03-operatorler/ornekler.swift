// 03 - Operatörler (Açıklamalı Örnekler)

import Foundation

// --- Aritmetik Operatörler ---

let sayi1 = 8
let sayi2 = 3

let toplam = sayi1 + sayi2      // 8 + 3 = 11
let fark = sayi1 - sayi2        // 8 - 3 = 5
let carpim = sayi1 * sayi2      // 8 * 3 = 24
let bolum = sayi1 / sayi2       // 8 / 3 = 2 (Tam sayılar arasında olduğu için ondalık kısmı atar)
let kalan = sayi1 % sayi2       // 8 % 3 = 2 (Bölümünden kalan)

print("Toplam: \(toplam)")   // Çıktı: Toplam: 11
print("Fark: \(fark)")       // Çıktı: Fark: 5
print("Çarpım: \(carpim)")   // Çıktı: Çarpım: 24
print("Bölüm: \(bolum)")     // Çıktı: Bölüm: 2
print("Kalan: \(kalan)")     // Çıktı: Kalan: 2

// --- Karşılaştırma Operatörleri ---

let yas = 20
let resitMi = yas >= 18     // 20 >= 18 -> true

print("Reşit mi? \(resitMi)") // Çıktı: Reşit mi? true

// --- Mantıksal Operatörler ---

let x = 5
let y = 10

let sonuc1 = (x < 10) && (y > 5)   // true && true -> true
let sonuc2 = (x > 10) || (y > 5)   // false || true -> true
let sonuc3 = !(x == 5)             // !(true) -> false

print("Sonuç 1 (&&): \(sonuc1)")   // Çıktı: Sonuç 1 (&&): true
print("Sonuç 2 (||): \(sonuc2)")   // Çıktı: Sonuç 2 (||): true
print("Sonuç 3 (!): \(sonuc3)")    // Çıktı: Sonuç 3 (!): false