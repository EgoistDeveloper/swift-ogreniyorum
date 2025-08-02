# 11 - Closures (Kapanımlar) ve Fonksiyonel Programlama Yaklaşımları

Bu derste Swift dilinde **Closure** (Kapanım) kavramını ve fonksiyonel programlama yaklaşımlarının temellerini öğreneceksiniz.

---

## Closure (Kapanım) Nedir?

Closure, Swift'te bir değişkende saklanabilen, başka bir fonksiyona parametre olarak gönderilebilen ve gerektiğinde çağrılabilen kod bloklarıdır. Aslında fonksiyonlara çok benzerler, ancak daha esnek ve taşınabilirdirler.

**Basit Closure Tanımı:**

```swift
let selamla = {
    print("Merhaba Swift!")
}

selamla() // Çıktı: Merhaba Swift!
```

**Parametre Alan ve Değer Döndüren Closure:**

```swift
let topla: (Int, Int) -> Int = { a, b in
    return a + b
}

let sonuc = topla(3, 5) // sonuc = 8
```

## Closure Nerelerde Kullanılır?

- Fonksiyonlara parametre olarak gönderilir (özellikle dizi işlemlerinde)
- Asenkron işlemlerde (tamamlandığında bir şeyler yapmak için)
- Callback (geri çağırma) mekanizması olarak

---

## Fonksiyonel Programlama Yaklaşımları

Swift, fonksiyonel programlama özelliklerini de destekler. Closure’lar bu yaklaşımda çok sık kullanılır:

### `map`, `filter`, `reduce` Fonksiyonları

Bu fonksiyonlar closure parametresi ile çalışır.

**Örnek: Dizi elemanlarını 2 ile çarpma (`map`)**

```swift
let sayilar = [1, 2, 3, 4]
let ikiKat = sayilar.map { $0 * 2 } // [2, 4, 6, 8]
```

**Örnek: Sadece çift sayıları seçme (`filter`)**

```swift
let ciftler = sayilar.filter { $0 % 2 == 0 } // [2, 4]
```

**Örnek: Tüm elemanları toplama (`reduce`)**

```swift
let toplam = sayilar.reduce(0) { $0 + $1 } // 10
```

---

## Kapanımların Söz Dizimi

Closure’lar, parametre listesinden sonra `in` anahtar kelimesi ile başlar.

```swift
{ (parametreler) -> DönüşTipi in
    // closure gövdesi
}
```

Kısa kullanım örneği:
```swift
sayilar.map { $0 * 2 }
```

---

## Özet ve Egzersiz

- Closure, taşınabilen ve saklanabilen fonksiyonlardır.
- Fonksiyonel programlama ile diziler üzerinde işlemler closure’lar ile yapılabilir.
- Özellikle `map`, `filter`, `reduce` gibi fonksiyonlarda closure kullanmak hem kodu kısaltır hem de daha okunaklı hale getirir.

**Egzersiz:**
1. Bir dizideki tüm negatif sayıları pozitif yapıp yeni bir dizi oluşturun.
2. Bir dizideki en büyük sayıyı closure ve `reduce` kullanarak bulun.
3. Kendi closure’ınızı yazın: İki string’i birleştirip tek bir string döndüren bir closure tanımlayın.

---

## Sonraki Ders

**12 - Protocol ve Delegate Kullanımı**