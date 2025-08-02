# Memory Management & ARC (Bellek Yönetimi ve ARC) Nedir?

Swift’te bellek yönetimi, programda oluşturduğun nesnelerin (class, struct, vs.) ne zaman silinip silinmeyeceğini otomatik olarak kontrol etmektir.  
ARC (Automatic Reference Counting), Swift’in bellek yönetiminde kullandığı bir tekniktir.

## ARC Nasıl Çalışır?

- Her class nesnesi için bir “referans sayacı” tutulur.
- Bir nesneye yeni bir referans eklendiğinde sayaç artar.
- Bir referans silindiğinde sayaç azalır.
- Sayaç sıfır olunca nesne otomatik olarak bellekten silinir.

---

## Basit ARC Örneği

```swift
class Kedi {
    var isim: String
    init(isim: String) {
        self.isim = isim
        print("\(isim) oluşturuldu.")
    }
    deinit {
        print("\(isim) bellekten silindi.")
    }
}

var kedi1: Kedi? = Kedi(isim: "Pamuk")
kedi1 = nil // Çıktı: Pamuk bellekten silindi.
```

---

## Güçlü & Zayıf Referanslar

### strong (varsayılan)
- Bir nesneye normal şekilde referans verirseniz, ARC sayacı artar.

### weak
- “weak” ile tanımlanan referanslar ARC sayacını artırmaz.
- Nesne bellekten silinirse weak referans otomatik “nil” olur.

```swift
class Sahip {
    var isim: String
    init(isim: String) { self.isim = isim }
    var kedi: Kedi?
}

class Kedi {
    var isim: String
    weak var sahip: Sahip?
    init(isim: String) { self.isim = isim }
}
```

---

## strong reference cycle (retain cycle) nedir?

Bazen iki nesne birbirini “strong” olarak tutarsa, ARC onları asla silmez! Bu bir bellek sızıntısıdır.

```swift
class A {
    var b: B?
}
class B {
    var a: A?
}
```
Eğer her iki taraf da “strong” olursa, ARC sıfırlayamaz.  
Çözüm: Birini “weak” veya “unowned” yap!

---

## weak vs unowned farkı

- “weak” referanslar her zaman opsiyonaldir (`Type?`), nesne silinince otomatik “nil” olur.
- “unowned” ile referans verirsen, nesne silindiğinde “nil” olmaz, ama erişmeye çalışırsan program çöker (crash).

---

## closure’da ARC ve [weak self] kullanımı

Closure’lar da retain cycle yaratabilir!  
Çözüm: [weak self] veya [unowned self] kullanmak.

```swift
class ViewController {
    var isim = "Controller"
    func islemYap() {
        DispatchQueue.main.async { [weak self] in
            print(self?.isim ?? "Yok")
        }
    }
}
```

---

## Özet

- Swift’te ARC ile nesneler otomatik yönetilir.
- Retain cycle’dan kaçınmak için weak/unowned kullanılır.
- Closure’larda [weak self] ile bellek sızıntısı önlenir.

Daha fazla örnek için ornekler.swift dosyasını incele!

---

> **Not:** Örneklerde kullanılan `DispatchQueue` konusu ilerleyen derslerde ayrıntılı olarak işlenecektir. Şimdilik sadece örnek amacıyla kullanılmıştır.
