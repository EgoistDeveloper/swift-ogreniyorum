class Kitaplik {
    lazy var kitaplar: [String] = {
        print("Kitaplar dizisi oluşturuluyor...")
        return ["Swift", "Python", "Java"]
    }()
}

let k = Kitaplik() // kitaplar hesaplanmadı
print("Hazır mıyız?")
print(k.kitaplar) // ilk erişimde oluşturuluyor
print(k.kitaplar) // tekrar erişimde tekrar oluşturulmaz

// Sınıf içi başka lazy property örneği
class Hesaplama {
    var x = 5
    lazy var sonuc: Int = {
        print("sonuc hesaplanıyor...")
        return x * x
    }()
}

let h = Hesaplama()
h.x = 10 // lazy property henüz hesaplanmadı
print(h.sonuc) // 100
print(h.sonuc) // tekrar hesaplanmaz
