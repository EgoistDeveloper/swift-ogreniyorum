// 10 - Enum ve Switch - Alternatif ve Gerçek Hayat Swift Örnekleri

// 1. Sipariş durumu örneği
enum SiparisDurumu {
    case hazirlaniyor
    case kargoda
    case teslimEdildi
    case iptalEdildi(neden: String)
}

func siparisDurumunuKontrolEt(durum: SiparisDurumu) {
    switch durum {
    case .hazirlaniyor:
        print("Siparişiniz hazırlanıyor.")
    case .kargoda:
        print("Siparişiniz kargoya verildi.")
    case .teslimEdildi:
        print("Siparişiniz teslim edildi.")
    case .iptalEdildi(let neden):
        print("Siparişiniz iptal edildi. Sebep: \(neden)")
    }
}

siparisDurumunuKontrolEt(durum: .iptalEdildi(neden: "Stokta yok"))

// 2. Hava durumu örneği
enum HavaDurumu: Int {
    case gunesli = 0
    case yagmurlu = 1
    case bulutlu = 2
    case karlı = 3
}

let bugununHavasi = HavaDurumu.karlı
print("Bugün hava kodu: \(bugununHavasi.rawValue)")

// 3. İlişkili değerlerle enum: Mesaj türleri
enum Mesaj {
    case metin(String)
    case resim(url: String, boyut: Int)
    case video(url: String, süre: Int)
}

func mesajYazdir(mesaj: Mesaj) {
    switch mesaj {
    case .metin(let icerik):
        print("Metin mesajı: \(icerik)")
    case .resim(let url, let boyut):
        print("Resim mesajı. Url: \(url), Boyut: \(boyut) KB")
    case .video(let url, let süre):
        print("Video mesajı. Url: \(url), Süre: \(süre) saniye")
    }
}

mesajYazdir(mesaj: .video(url: "video.mp4", süre: 124))

// 4. Enum ile switch-case default kullanımı
enum BildirimTipi {
    case bilgi
    case uyarı
    case hata
}

func bildirimGoster(tip: BildirimTipi) {
    switch tip {
    case .bilgi:
        print("Bilgi: İşlem başarıyla tamamlandı.")
    case .uyarı:
        print("Uyarı: Dikkatli olun!")
    case .hata:
        print("Hata: Bir sorun oluştu.")
    }
}

bildirimGoster(tip: .uyarı)

// 5. Enum ile for döngüsü (tüm seçenekleri gezmek için)
enum KrediKartTipi: CaseIterable {
    case visa
    case mastercard
    case amex
}

for tip in KrediKartTipi.allCases {
    print("Desteklenen kart tipi: \(tip)")
}