# Properties (Özellikler) Nedir?

> **Not:** Bu derste sadece property (özellik) kavramının temelini öğreniyoruz.  
> İlerleyen derslerde `private`, `static`, `public`, `fileprivate` gibi erişim belirteçlerini ve anahtar kelimeleri daha detaylı işleyeceğiz. Bu örneklerde geçen `static` ve `private` gibi terimler ileride daha ayrıntılı açıklanacaktır.

---

## Property Türleri

### 1. Stored Properties (Depolanan Özellikler)
Bir tipin örneğinde **depolanan** sabit (`let`) veya değişken (`var`) değerlerdir.

#### Sabit Özellikler (`let`)
- `let` ile tanımlanan özellikler, sadece bir kez (örnek oluşturulurken) atanır ve sonrasında değiştirilemez.
- Genellikle değişmeyecek veriler için kullanılır (örneğin bir nesnenin kimliği).

#### Değişken Özellikler (`var`)
- `var` ile tanımlanan özellikler, örnek oluşturulduktan sonra da değiştirilebilir.
- Zamanla değişebilecek veriler için uygundur (örneğin bir kullanıcının adı veya yaşı).

```swift
struct Kullanici {
    let id: Int          // Sabit özellik (let)
    var isim: String     // Değişken özellik (var)
}

var k = Kullanici(id: 1, isim: "Ali")
k.isim = "Veli"         // isim değiştirilebilir
// k.id = 2              // HATA! id değiştirilemez
```

---

### 2. Computed Properties (Hesaplanan Özellikler)
Bir değeri hesaplayan, fonksiyon gibi çalışan özelliklerdir. Değeri her erişildiğinde yeniden hesaplanır.

```swift
struct Dikdortgen {
    var genislik: Double
    var yukseklik: Double
    
    var alan: Double {
        return genislik * yukseklik
    }
}

let d = Dikdortgen(genislik: 10, yukseklik: 5)
print(d.alan) // 50
```

---

### 3. Lazy Properties (Tembel Özellikler)
İlk kez erişildiğinde hesaplanan özelliklerdir. `lazy var` ile tanımlanır.

```swift
struct VeriYukleyici {
    lazy var dosyaVerisi: String = {
        // Uzun süren bir işlem gibi düşün
        return "Veri yüklendi!"
    }()
}

var yukleyici = VeriYukleyici()
print(yukleyici.dosyaVerisi) // "Veri yüklendi!"
```

---

### 4. Property Observers (Gözlemciler)
Bir property'sinin değeri değiştiğinde çalışan kod bloklarıdır. `willSet` ve `didSet` ile tanımlanır.

```swift
class Sayac {
    var sayi: Int = 0 {
        willSet {
            print("Yeni değer geliyor: \(newValue)")
        }
        didSet {
            print("Eski değer: \(oldValue), yeni değer: \(sayi)")
        }
    }
}

let s = Sayac()
s.sayi = 10
```

---

### 5. Static Properties (Statik Özellikler)
Tüm tip için ortak olan, tipin kendisine ait özelliklerdir.

```swift
struct Ayarlar {
    static var varsayilanDil = "tr"
}

print(Ayarlar.varsayilanDil) // "tr"
```

---

## Özel Konular ve İleri Property Kullanımı

### Enum’da Computed Property Kullanımı

Swift’te enum’lar stored property alamaz fakat computed property tanımlayabilirsin.

```swift
enum Gun {
    case pazartesi, sali, carsamba
    var aciklama: String {
        switch self {
        case .pazartesi: return "Haftanın ilk günü"
        default: return "Diğer gün"
        }
    }
}
print(Gun.pazartesi.aciklama) // "Haftanın ilk günü"
```

---

### Computed Property’de Getter ve Setter Kullanımı

Computed property’ler sadece `get` ile tanımlanabileceği gibi, istersen `set` ile de değer atanabilir hale getirebilirsin.

```swift
struct Hesap {
    private var _maas: Double = 0
    var maas: Double {
        get { _maas }
        set { _maas = newValue }
    }
}

var h = Hesap()
h.maas = 5000
print(h.maas)
```

---

### Static Property’ler: Struct ve Class’ta Farkları

Static property’ler hem struct hem class içinde tanımlanabilir ve tipin kendisine aittir.

```swift
struct AyarlarStruct {
    static var tema = "Açık"
}

class AyarlarClass {
    static var tema = "Koyu"
}

print(AyarlarStruct.tema) // "Açık"
print(AyarlarClass.tema) // "Koyu"
```

---

## Sık Sorulan: `:` ve `=` Farkı

- **`:`** → Tür belirtmek için kullanılır. (Property tanımında veya fonksiyon parametresinde)
- **`=`** → Değer atamak için kullanılır. (Değişken/sabit tanımlarken veya property'ye değer verirken)

**Örnek:**
```swift
// Tür tanımı:
var isim: String
let yas: Int

// Değer atama:
var isim: String = "Ayşe"
let yas: Int = 24
var sehir = "İstanbul" // Swift otomatik türü String seçer
```

---

## Kısaca Özet

- **Stored Property**: Değeri doğrudan saklar.  
  - `let` ile tanımlananlar sabittir, değiştirilemez.  
  - `var` ile tanımlananlar değiştirilebilir.
- **Computed Property**: Her erişimde hesaplanır.
- **Lazy Property**: İlk erişimde oluşturulur/hesaplanır.
- **Property Observer**: Değer değişimini izler.
- **Static Property**: Tipe ait, örneklere değil.

---

## Sık Kullanılan Özellikler ve Notlar

- Struct’larda stored ve computed property kullanılabilir.
- Enum’larda computed property kullanılabilir, ancak stored property eklenemez.
- Lazy property'ler sadece değişken (var) olarak tanımlanabilir, sabit (let) olamaz.
- Static property, tipin kendisine aittir, örneklerine değil.

---

## Pratik Kod Örnekleri

Daha fazla Swift property örneği için aşağıdaki dosyaya göz atabilirsin:

- [10-properties-ozellikler/ornekler.swift](ornekler.swift)