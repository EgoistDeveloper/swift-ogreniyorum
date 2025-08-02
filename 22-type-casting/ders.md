# Type Casting (as, as?, as!) – Swift’te Tip Dönüştürme

Swift’te tip dönüştürme, bir nesnenin türünü başka bir türe çevirmek veya kontrol etmek için kullanılır. Özellikle sınıf hiyerarşilerinde, bir üst sınıf tipindeki nesneyi alt sınıfa veya tersi şekilde dönüştürmek için “type casting” yapılır.

## Anahtar Kelimeler

- `as`: Güvenli ve kesin tip dönüşümü. (Compile-time’da kullanılır, genellikle protokoller ve sabit tür dönüşümünde)
- `as?`: Opsiyonel tip dönüşümü. Başarısız olursa nil döner.
- `as!`: Zorunlu (forced) tip dönüşümü. Başarısız olursa runtime’da hata (crash) verir.

## Kullanım Senaryoları

### 1. Sınıf Hiyerarşisi ve Type Casting

```swift
class Hayvan {}
class Kedi: Hayvan {
    func miyavla() {
        print("Miyav!")
    }
}

let hayvan: Hayvan = Kedi()

// as? ile güvenli şekilde alt tipe dönüştürme
if let kedi = hayvan as? Kedi {
    kedi.miyavla() // Miyav!
}

// as! ile zorunlu dönüşüm (eminsek kullanılabilir)
let kesinKedi = hayvan as! Kedi
kesinKedi.miyavla() // Miyav!

// as ile, genellikle sabit tür dönüşümünde
let sayı: Int = 5
let doubleSayı = sayı as Double // Hata: Int'ten Double'a as ile dönüşmez, initializer kullanılır.
```

### 2. Koleksiyonlarda Tip Dönüştürme

```swift
let karisik: [Any] = [Kedi(), Hayvan(), "Merhaba"]

for nesne in karisik {
    if let kedi = nesne as? Kedi {
        kedi.miyavla()
    } else if let hayvan = nesne as? Hayvan {
        print("Bu bir hayvan.")
    } else {
        print("Bilinmeyen tip: \(nesne)")
    }
}
```

### 3. Protokollerde as

```swift
protocol Sesli {
    func sesCikar()
}

class Kopek: Hayvan, Sesli {
    func sesCikar() { print("Hav!") }
}

let kopek = Kopek()

if let sesli = kopek as? Sesli {
    sesli.sesCikar() // Hav!
}
```

## Dikkat Edilmesi Gerekenler

- `as!` kullanımı risklidir, dönüşüm başarısız olursa uygulama hata verir.
- `as?` ile opsiyonel binding kullanmak güvenlidir.
- Sınıf hiyerarşisinde, üst sınıftan alt sınıfa dönüştürme sıkça kullanılır.

## Egzersiz

Aşağıdaki Any tipinde bir dizi var. Yalnızca Kedi nesnelerini bulup miyavlatın:

```swift
let dizi: [Any] = [Kedi(), Kopek(), "Swift", 42]
for nesne in dizi {
    // Burada tip dönüşümü uygulayın
}
```

## Özet

Type casting ile bir nesnenin tipini kontrol ederek, uygun şekilde fonksiyonlarını veya özelliklerini kullanabilirsiniz. Özellikle çok biçimli (polymorphic) nesnelerle çalışırken hayati öneme sahiptir.