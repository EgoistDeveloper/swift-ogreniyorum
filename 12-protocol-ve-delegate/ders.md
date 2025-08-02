# 12 - Protocol ve Delegate Kullanımı

Bu derste Swift dilinde **Protocol** (Protokol) kavramını ve **Delegate** (Temsilci) tasarım desenini öğreneceksiniz.

---

## Protocol (Protokol) Nedir?

Protocol, bir sınıfın, yapının veya enum’un uyması gereken özellik ve fonksiyonların tanımlandığı bir şablondur. Swift’te soyutlama ve esneklik sağlar.

**Örnek Protocol Tanımı:**

```swift
protocol Selamlanabilir {
    func selamVer()
}
```

Bir sınıfı bu protokole uygun hale getirme:

```swift
class Insan: Selamlanabilir {
    func selamVer() {
        print("Merhaba!")
    }
}
```

---

## Delegate Deseni Nedir?

Delegate, bir nesnenin bazı görevleri başka bir nesneye devretmesi için kullanılan bir tasarım desenidir. Özellikle UIKit’te (örneğin TableView) çok yaygındır.

**Delegate Kullanımı:**

1. Bir protocol tanımlanır.
2. Bu protocol’ü uygulayan bir delegate (temsilci) oluşturulur.
3. Olay gerçekleştiğinde delegate çağrılır.

**Örnek:**

```swift
protocol MesajGonderDelegate {
    func mesajGonderildi(_ mesaj: String)
}

class MesajGonderici {
    var delegate: MesajGonderDelegate?
    
    func gonder(mesaj: String) {
        // mesaj gönderme işlemi...
        delegate?.mesajGonderildi(mesaj)
    }
}

class MesajAlici: MesajGonderDelegate {
    func mesajGonderildi(_ mesaj: String) {
        print("Mesaj alındı: \(mesaj)")
    }
}

// Kullanım
let gonderici = MesajGonderici()
let alici = MesajAlici()

gonderici.delegate = alici
gonderici.gonder(mesaj: "Swift ile protokol ve delegate!")
```

---

## Neden Delegate Kullanılır?

- Nesneler arası iletişimi gevşek bağlamak için (loose coupling)
- Tek bir nesneye bir olay olduğunda başka bir nesnenin tepki vermesini sağlamak için
- UIKit ve Cocoa Touch’ta birçok hazır delegate örneği vardır (UITableViewDelegate, UICollectionViewDelegate vb.)

---

## Egzersizler

1. Bir protocol tanımlayın: `Yazdirilabilir`. Bir sınıfı bu protokole uyacak şekilde oluşturun.
2. Basit bir delegate yapısı kurun: Bir "Buton" nesnesi tıklanınca "Delegate"e haber versin ve konsola mesaj yazılsın.
3. Kendi delegate örneğinizi oluşturun: Birden fazla nesneye mesaj gönderecek şekilde protokol ve delegate kullanımı deneyin.

---

## Sonraki Ders

**13 - Error Handling (Hata Yönetimi)**
