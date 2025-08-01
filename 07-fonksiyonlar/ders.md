# 07 - Fonksiyonlar

Fonksiyonlar, belirli bir işlemi gerçekleştiren ve gerektiğinde tekrar kullanılabilen kod bloklarıdır. Swift’te fonksiyonlar hem kodunuzu düzenli tutar hem de tekrar kullanımı kolaylaştırır.

---

## 1. Temel Fonksiyon Tanımı ve Çağırma

Bir fonksiyon, `func` anahtar kelimesiyle tanımlanır.

```swift
func selamla() {
    print("Merhaba Swift!")
}

selamla() // Fonksiyonun çağrılması
```

---

## 2. Parametreli Fonksiyonlar

Fonksiyonlara dışarıdan veri gönderebiliriz.

```swift
func topla(sayi1: Int, sayi2: Int) {
    print("Sonuç:", sayi1 + sayi2)
}

topla(sayi1: 3, sayi2: 7) // Sonuç: 10
```

---

## 3. Dönen (return) Değerli Fonksiyonlar

Fonksiyonlar işlem sonucunu geri döndürebilir.

```swift
func carp(s1: Int, s2: Int) -> Int {
    return s1 * s2
}

let sonuc = carp(s1: 4, s2: 5)
print("Çarpım sonucu:", sonuc) // 20
```

### `->` Operatörü Nedir?

Swift’te fonksiyon tanımında `->` operatörü, fonksiyonun hangi türde bir değer döndüreceğini belirtir.

```swift
func topla(a: Int, b: Int) -> Int {
    return a + b
}
```
Burada `-> Int` fonksiyonun bir `Int` (tam sayı) döndüreceğini gösterir. Eğer fonksiyon bir değer döndürmeyecekse `-> Void` veya hiç yazılmaz.

---

## 4. Birden Fazla Parametre ve Return

Birden fazla parametre ve farklı veri tiplerinde dönüş mümkündür.

```swift
func tamIsim(ad: String, soyad: String) -> String {
    return ad + " " + soyad
}

let isim = tamIsim(ad: "Ali", soyad: "Veli")
print(isim) // Ali Veli
```

---

## 5. Void (Geri Dönmeyen) Fonksiyonlar

Return değeri olmayan fonksiyonlar:

```swift
func yazdir(mesaj: String) {
    print(mesaj)
}

yazdir(mesaj: "Swift öğreniyorum!")
```

---

## 6. Varsayılan Parametreler

Fonksiyonlarda bazı parametrelere default değer verebiliriz.

```swift
func selamVer(kime: String = "Dünya") {
    print("Merhaba \(kime)!\")
}

selamVer()           // Merhaba Dünya!
selamVer(kime: "Ali") // Merhaba Ali!
```

---

## 7. Fonksiyonlarda Dönüş Tipleri

Dönüş tipi belirtmek zorunlu değildir, eğer bir değer döndürmüyorsa `Void` (boş) tip kullanılır.

```swift
func birSeyYap() -> Void {
    print("Bir şey yapıldı.")
}
```

---

## 8. `_` (Alt Çizgi) Parametre İsminde Kullanımı

Fonksiyonlarda parametrelerin başına `_` koyarsak, fonksiyon çağırırken parametre adını yazmamıza gerek kalmaz.

```swift
func selamla(_ isim: String) {
    print("Merhaba \(isim)!\")
}

selamla("Ali") // Parametre adını yazmadan doğrudan değeri verebiliriz.
```

Eğer `_` kullanılmazsa:

```swift
func selamla(isim: String) {
    print("Merhaba \(isim)!\")
}

selamla(isim: "Ali") // Parametre adını yazmak gerekir
```

---

## 9. Kapsamlı Fonksiyon Örnekleri

```swift
func maksimum(_ a: Int, _ b: Int) -> Int {
    if a > b {
        return a
    } else {
        return b
    }
}

print("Büyük olan:", maksimum(10, 20)) // Büyük olan: 20

func ortalama(_ sayilar: [Double]) -> Double {
    let toplam = sayilar.reduce(0, +)
    return toplam / Double(sayilar.count)
}

print("Ortalama:", ortalama([3, 7, 9])) // Ortalama: 6.333...
```

### `reduce(0, +)` Nedir?

Swift’te `reduce` fonksiyonu, bir koleksiyondaki tüm elemanları tek bir sonuçta toplamak için kullanılır.

Örnek:
```swift
let sayilar = [3, 7, 9]
let toplam = sayilar.reduce(0, +)
print(toplam) // 19
```
Burada:
- `reduce(0, +)` ifadesinde `0` başlangıç değeridir (toplamaya 0’dan başla).
- `+` ise her elemanı toplamak için kullanılan operatördür.
- Yani, önce 0 + 3, sonra 3 + 7, sonra 10 + 9; sonuç 19 olur.

Kısaca: `reduce(0, +)` dizideki tüm sayıları toplayıp tek bir sayı döndürür.

---

## 10. Fonksiyonlarda Döngü ve Koleksiyon Kullanımı

```swift
func diziYazdir(_ dizi: [String]) {
    for eleman in dizi {
        print(eleman)
    }
}

diziYazdir(["elma", "muz", "kiraz"])
```

---

## 11. Özet

- Fonksiyonlar kodunuzu modüler, tekrar kullanılabilir ve düzenli hale getirir.
- Parametreler, dönüş değerleri ve default parametreler ile esnek fonksiyonlar yazabilirsiniz.
- `->` işareti fonksiyonun dönüş tipini belirtir.
- `_` işareti parametre adının fonksiyon çağrısında yazılıp yazılmayacağını belirler.
- `reduce(0, +)` ile bir dizinin tüm elemanlarını kolayca toplayabilirsiniz.

---

## Sonraki Ders

**08 - Optional (Seçimli) Tipler**  
Bir sonraki derste Swift’te Optional (isteğe bağlı) tipler ve güvenli veri kullanımı incelenecek.
