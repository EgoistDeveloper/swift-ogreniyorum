# Access Control (Erişim Kontrolü) Nedir?

Swift’te erişim kontrolü, bir değişkenin veya fonksiyonun nereden erişilebileceğini belirler.  
Yani, “Kim bu kodu görebilir ve kullanabilir?” sorusunun cevabıdır.

---

## En Önemli Erişim Seviyeleri

### 1. `open`
- En geniş erişim hakkı.
- Başka bir dosyada veya projede **miras alıp** üzerine yazabilirsin.
- Genellikle framework (kütüphane) geliştirirken kullanılır.

#### Örnek: İki Dosya ile Açıklama

**Dosya 1 - AcikSinif.swift**  
```swift
open class AcikSinif {
    open func selamla() {
        print("Open: Her yerden erişilebilir ve override edilebilir!")
    }
}
```

**Dosya 2 - BaskaSinif.swift**  
Başka bir dosyada veya projede:
```swift
class AltSinif: AcikSinif {
    override func selamla() {
        print("Open: Alt sınıfta override edildi!")
    }
}

let nesne = AltSinif()
nesne.selamla() // Çıktı: Open: Alt sınıfta override edildi!
```

---

### 2. `public`
- Her yerden erişilebilir.
- Ama başka bir projede üzerine yazamazsın (override edemezsin).

#### Örnek:
```swift
public class AcikSinif2 {
    public func selamla() {
        print("Public: Her yerden erişilebilir.")
    }
}

// Başka bir dosyada erişirsin:
let nesne = AcikSinif2()
nesne.selamla() // Çıktı: Public: Her yerden erişilebilir.
```
Ama şunu **yapamazsın:**
```swift
class AltSinif2: AcikSinif2 { // HATA! Miras alamazsın.
    override func selamla() { ... }
}
```

---

### 3. `internal` (varsayılan)
- Sadece aynı proje/modül içinde erişebilirsin.

#### Örnek:
```swift
class DahiliSinif {
    func yazdir() {
        print("Internal: Sadece aynı projede erişilir.")
    }
}

// Aynı projede erişirsin.
let nesne = DahiliSinif()
nesne.yazdir()
```
Başka bir projede göremezsin.

---

### 4. `fileprivate`
- Yalnızca aynı dosyada erişebilirsin.

#### Örnek:
**Dosya: Ornek.swift**
```swift
fileprivate var gizliDegisken = "Sadece bu dosyada!"

func yazdir() {
    print(gizliDegisken) // Erişilebilir.
}
```
Başka bir dosyada `gizliDegisken` görünmez.

---

### 5. `private`
- Yalnızca aynı tip (class, struct, vs.) veya extension içinde erişebilirsin.

#### Struct ile Örnek:
```swift
struct GizliStruct {
    private var sifre = "1234"

    func sifreyiOku() -> String {
        // sifre değişkenine sadece struct'ın içinde erişilebilir!
        return sifre
    }
}

let nesne = GizliStruct()
// nesne.sifre // HATA! Dışarıdan erişilemez.
print(nesne.sifreyiOku()) // Çıktı: 1234
```

#### Class ile Örnek:
```swift
class GizliClass {
    private var sifre = "abcd"

    func sifreyiOku() -> String {
        // sifre değişkenine sadece class'ın içinde erişilebilir!
        return sifre
    }
}

let nesne = GizliClass()
// nesne.sifre // HATA! Dışarıdan erişilemez.
print(nesne.sifreyiOku()) // Çıktı: abcd
```
**Açıklama:**  
`private var sifre` sayesinde hem struct hem de class içinde tanımlanan `sifre` değişkenine sadece kendi tipinin içinden erişebilirsin. Dışarıdan doğrudan ulaşamazsın, hata alırsın. Ancak tipin içindeki bir fonksiyon ile değerini döndürebilirsin.

#### Farklı dosyalarda erişim örneği

**Dosya: A.swift**
```swift
struct GizliStruct {
    private var sifre = "1234"
    func sifreyiOku() -> String { sifre }
}

class GizliClass {
    private var sifre = "abcd"
    func sifreyiOku() -> String { sifre }
}
```

**Dosya: x.swift** (Ayrı dosya)
```swift
let structNesne = GizliStruct()
// structNesne.sifre           // HATA! Erişemezsin.

let classNesne = GizliClass()
// classNesne.sifre           // HATA! Erişemezsin.

// Doğru erişim:
print(structNesne.sifreyiOku()) // Çıktı: 1234
print(classNesne.sifreyiOku())  // Çıktı: abcd
```

---

## Özet

- **open**: Her yerden eriş, miras al, üzerine yaz (override)!
- **public**: Her yerden eriş, ama miras alamazsın.
- **internal**: Sadece kendi projen içinde eriş.
- **fileprivate**: Sadece aynı dosyada eriş.
- **private**: Sadece aynı tip veya extension’da eriş.

---

Daha fazla örnek için ornekler.swift dosyasını inceleyebilirsin!
