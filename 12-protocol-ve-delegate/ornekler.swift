// ÖRNEK 1: Protokol ile ortak davranış tanımlama
// Hayvanlar ortak bir davranışa sahip: ses çıkarma

protocol SesCikaran {
    func sesCikar()
}

class Kedi: SesCikaran {
    func sesCikar() {
        print("Miyav!")
    }
}

class Kopek: SesCikaran {
    func sesCikar() {
        print("Hav hav!")
    }
}

// Hayvanları bir diziye ekleyip hepsinin sesini çıkaralım
let hayvanlar: [SesCikaran] = [Kedi(), Kopek()]
for hayvan in hayvanlar {
    hayvan.sesCikar()
}
// Çıktı:
// Miyav!
// Hav hav!

//------------------------------------------------------------

// ÖRNEK 2: Delegate ile olay bildirimi (Basit Buton)
// Bir butona tıklanınca başka bir nesneye haber verilsin

protocol ButonDelegate {
    func butonaTiklandi()
}

class Buton {
    var delegate: ButonDelegate?
    
    func tikla() {
        print("Butona tıklandı.")
        delegate?.butonaTiklandi()
    }
}

class Ekran: ButonDelegate {
    func butonaTiklandi() {
        print("Ekran: Butona tıklandığını öğrendim!")
    }
}

let buton = Buton()
let ekran = Ekran()
buton.delegate = ekran
buton.tikla()
// Çıktı:
// Butona tıklandı.
// Ekran: Butona tıklandığını öğrendim!