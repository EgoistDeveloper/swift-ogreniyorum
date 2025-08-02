// 1. Switch-case ile tuple desen eşleme
let point = (4, 0)
switch point {
case (0, 0):
    print("Orjin")
case (_, 0):
    print("X ekseninde")
case (0, _):
    print("Y ekseninde")
default:
    print("Başka bir noktada")
}

// 2. Enum ile desen eşleme
enum Response {
    case success(data: String)
    case failure(error: Int)
}

let result = Response.failure(error: 404)
switch result {
case .success(let data):
    print("Başarılı: \(data)")
case .failure(let code) where code == 404:
    print("Bulunamadı hatası")
case .failure(let code):
    print("Başka hata: \(code)")
}

// 3. if case kullanımı
let response: Response = .success(data: "Hoşgeldiniz!")
if case .success(let message) = response {
    print("Mesaj: \(message)")
}

// 4. for case ile koleksiyonda desen eşleme
let hataListesi: [Response] = [.failure(error: 100), .success(data: "OK"), .failure(error: 404)]
for case .failure(let kod) in hataListesi {
    print("Hata kodu: \(kod)")
}

// 5. Opsiyonel ile desen eşleme
let number: Int? = 42
if case let n? = number {
    print("Sayı: \(n)")
}

// 6. Wildcard (_) kullanımı
let bilgi = (3, "deneme")
switch bilgi {
case (_, "deneme"):
    print("İkinci değer deneme")
default:
    print("Başka tuple")
}
