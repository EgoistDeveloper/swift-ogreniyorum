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

// Mantıksal operatör örneği
let yas = 17
let veliIzniVar = true

if yas >= 18 || veliIzniVar {
    print("Etkinliğe katılabilirsin.")
} else {
    print("Etkinliğe katılamazsın.")
}

// Karşılaştırma operatörleri örnekleri
let sayi1 = 5
let sayi2 = 10

print(sayi1 == sayi2) // false
print(sayi1 != sayi2) // true
print(sayi1 < sayi2)  // true

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