// Basit property observer örneği
var skor: Int = 0 {
    willSet {
        print("Skor birazdan \(newValue) olacak")
    }
    didSet {
        print("Skor şimdi \(skor) oldu (Önceki: \(oldValue))")
    }
}

// Kullanım
skor = 10
skor = 20

// Sınıf içinde kullanım
class Kullanici {
    var puan: Int = 0 {
        willSet {
            print("Kullanıcı puanı birazdan \(newValue) olacak")
        }
        didSet {
            print("Kullanıcı puanı şimdi \(puan) oldu (Önceki: \(oldValue))")
        }
    }
}

let kisi = Kullanici()
kisi.puan = 5
kisi.puan = 8

// Bir property observer ile arayüz güncelleme örneği (psödokod)
/*
var labelText: String = "" {
    didSet {
        label.text = labelText
    }
}
*/