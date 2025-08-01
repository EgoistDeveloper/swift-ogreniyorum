// 04 - Koşullu İfadeler (if, else, switch) - Temel Örnekler

// Basit if-else örneği
let havaGuzelMi = true

if havaGuzelMi {
    print("Dışarı çıkabilirsin.")
} else {
    print("Evde kalmak daha iyi.")
}

// else if ile çoklu durum kontrolü
let sicaklik = 30

if sicaklik >= 30 {
    print("Hava çok sıcak.")
} else if sicaklik >= 20 {
    print("Hava güzel.")
} else if sicaklik >= 10 {
    print("Hava serin.")
} else {
    print("Hava soğuk.")
}

// Karşılaştırma operatörleri örnekleri
let sayi1 = 5
let sayi2 = 10

print(sayi1 == sayi2)  // sayi1, sayi2'ye eşit mi? Cevap: Hayır, o zaman çıktı false döner
print(sayi1 != sayi2)  // sayi1, sayi2'ye eşit değil mi? Cevap: Evet, o zaman çıktı true döner
print(sayi1 > sayi2)   // sayi1, sayi2'den büyük mü? Cevap: Hayır, o zaman çıktı false döner
print(sayi1 < sayi2)   // sayi1, sayi2'den küçük mü? Cevap: Evet, o zaman çıktı true döner
print(sayi1 >= sayi2)  // sayi1, sayi2'den büyük veya eşit mi? Cevap: Hayır, o zaman çıktı false döner
print(sayi1 <= sayi2)  // sayi1, sayi2'den küçük veya eşit mi? Cevap: Evet, o zaman çıktı true döner

// Karşılaştırma operatörleri ile if-else örneği
let x = 7
let y = 12

// x, y'den küçük mü kontrolü
if x < y {
    print("x, y'den küçüktür.")
} else {
    print("x, y'den küçük değildir.")
}

// Mantıksal operatörlerle örnekler

let yas = 17
let veliIzniVar = true

// En az bir koşul doğruysa etkinliğe katılabilirsin
if yas >= 18 || veliIzniVar {
    print("Etkinliğe katılabilirsin.")
} else {
    print("Etkinliğe katılamazsın.")
}

let ehliyetVar = true
let yas2 = 20

// 18 yaşında veya daha büyük ve ehliyeti varsa araç kullanabilir
if yas2 >= 18 && ehliyetVar {
    print("Araç kullanabilirsiniz.")
} else {
    print("Araç kullanamazsınız.")
}

let puan2 = 55
let devamsizlik = false

// puan 50 veya üstüyse ya da devamsızlık yoksa geçer
if puan2 >= 50 || devamsizlik == false {
    print("Sınıfı geçtin.")
} else {
    print("Sınıfta kaldın.")
}

// switch-case ile gün ismi yazdırma
let gunNo = 5

switch gunNo {
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
    print("Hatalı gün numarası")
}

// switch-case ile karakter türü kontrolü
let karakter: Character = "z"

switch karakter {
case "a", "e", "i", "o", "u":
    print("Sesli harf")
default:
    print("Sessiz harf")
}

// switch-case ile aralık (range) kullanımı örneği

let puan = 45

switch puan {
case 90...100:
    print("Harika: Pekiyi")
case 70..<90:
    print("İyi")
case 50..<70:
    print("Orta")
case 0..<50:
    print("Zayıf")
default:
    print("Geçersiz puan")
}
