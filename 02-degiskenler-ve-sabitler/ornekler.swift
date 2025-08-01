//
// Swift'te verilerin türü (tipi) çok önemlidir. Her verinin bir tipi (Int, Double, String, Bool, vs.) vardır.
// Swift, tip güvenli bir dildir; bu nedenle yanlış tipte veri ataması yaparsak hata alırız.
//
// Temel türler:
// - Int: Tam sayılar için kullanılır.
// - Double: Ondalıklı (küsuratlı) sayılar için kullanılır.
// - String: Metin (yazı) ifadeleri için kullanılır.
// - Bool: true/false (doğru/yanlış) değerleri için kullanılır.
//
// 02 - Değişkenler ve Sabitler (Açıklamalı Örnekler)

import Foundation

// Açık tip belirterek değişken ve sabit tanımlama
var yas: Int = 22
let isim: String = "Ayşe"
var aktifMi: Bool = true
let pi: Double = 3.1415

// Tip çıkarımı ile tanımlama
var sehir = "İstanbul"  // String
let puan = 90           // Int
var derece = 36.5       // Double
let basarili = true     // Bool

// Çoklu tanımlama (farklı tiplerle)
var x = 10, y: Int = 20, z = 0
let boy: Double = 1.75, kilo = 60.0

print("Yaş:", yas)
print("İsim:", isim)
print("Aktif mi?:", aktifMi)
print("Pi:", pi)
print("Şehir:", sehir)
print("Puan:", puan)
print("Derece:", derece)
print("Başarılı mı?:", basarili)
print("x:", x, "y:", y, "z:", z)
print("Boy:", boy, "Kilo:", kilo)

// Opsiyonel değişken örneği
var telefonNumarasi: String? = nil
telefonNumarasi = "0555 123 45 67"
print("Telefon Numarası:", telefonNumarasi ?? "Tanımsız")
