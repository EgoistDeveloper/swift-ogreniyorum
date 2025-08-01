# 06 - Koleksiyonlar: Array, Dictionary, Set

Swift’te verileri bir arada tutmak ve yönetmek için koleksiyon tipleri kullanılır. En sık kullanılanları: Array (Dizi), Dictionary (Sözlük/Map), Set (Küme).

---

## 1. Array (Dizi)

Birden fazla değeri sıralı olarak tutan yapılardır.

```swift
var meyveler = ["Elma", "Armut", "Muz"]
print("Başlangıç:", meyveler)   // ["Elma", "Armut", "Muz"]

meyveler.append("Kivi")
print("Kivi eklendi:", meyveler) // ["Elma", "Armut", "Muz", "Kivi"]

meyveler[0] = "Portakal"
print("İlk eleman güncellendi:", meyveler) // ["Portakal", "Armut", "Muz", "Kivi"]

print("Silmeden önce:", meyveler) // ["Portakal", "Armut", "Muz", "Kivi"]
let silinenMeyve = meyveler.remove(at: 2) // 2. indeks: "Muz" silinir
print("Silinen meyve:", silinenMeyve)     // Muz
print("Silindikten sonra:", meyveler)     // ["Portakal", "Armut", "Kivi"]

print("İkinci eleman:", meyveler[1]) // "Armut"
```

---

## 2. Dictionary (Sözlük/Map)

Anahtar-değer (key-value) ilişkisiyle veri tutar.

```swift
var plakalar = ["İstanbul": 34, "Ankara": 6]
print("Başlangıç:", plakalar)                // ["İstanbul": 34, "Ankara": 6]

plakalar["İzmir"] = 35
print("İzmir eklendi:", plakalar)            // ["İstanbul": 34, "Ankara": 6, "İzmir": 35]

plakalar["Ankara"] = 60
print("Ankara güncellendi:", plakalar)       // ["İstanbul": 34, "Ankara": 60, "İzmir": 35]

print("Silmeden önce:", plakalar)
let silinenPlaka = plakalar.removeValue(forKey: "İstanbul")
print("Silinen şehir ve plakası: İstanbul:", silinenPlaka ?? "Yok") // 34
print("İstanbul silindi:", plakalar)         // ["Ankara": 60, "İzmir": 35]

print("İzmir plakası:", plakalar["İzmir"] ?? "Bulunamadı")
```

---

## 3. Set (Küme)

Tekil (benzersiz) elemanlar tutar, sıralı değildir.

```swift
var sayilar: Set<Int> = [1, 2, 3, 3, 5]
print("Başlangıç:", sayilar)                  // [1, 2, 3, 5]

let eklendiMi = sayilar.insert(8)
print("8 eklendi mi?", eklendiMi.inserted)    // true
print("Güncel küme:", sayilar)                // [1, 2, 3, 5, 8]

print("Silmeden önce:", sayilar)
let silindiMi = sayilar.remove(2)
print("Silinen sayı:", silindiMi ?? -1)       // 2
print("2 silindi:", sayilar)                  // [1, 3, 5, 8]

print("5 var mı?", sayilar.contains(5))       // true
```

---

## 4. Sık Kullanılan Metotlar

### Array

```swift
var dizi = [3, 1, 4, 2]
print("Başlangıç:", dizi)                   // [3, 1, 4, 2]

dizi.append(5)
print("5 eklendi:", dizi)                   // [3, 1, 4, 2, 5]

let silinenSayi = dizi.remove(at: 0)
print("Silinen sayı:", silinenSayi)         // 3
print("İlk eleman silindi:", dizi)          // [1, 4, 2, 5]

print("Eleman sayısı:", dizi.count)         // 4
print("2 var mı?", dizi.contains(2))        // true

dizi.sort()
print("Sıralandı:", dizi)                   // [1, 2, 4, 5]
```

### Dictionary

```swift
var sozluk = ["a": 1, "b": 2]
print("Başlangıç:", sozluk)                   // ["a": 1, "b": 2]

print("Anahtarlar:", Array(sozluk.keys))      // ["a", "b"]
print("Değerler:", Array(sozluk.values))      // [1, 2]

let silinenDeger = sozluk.removeValue(forKey: "a")
print("Silinen anahtar ve değeri: a:", silinenDeger ?? "Yok") // 1
print("a silindi:", sozluk)                   // ["b": 2]

let eskiDeger = sozluk.updateValue(3, forKey: "b")
print("b güncellendi, eski değeri:", eskiDeger ?? "Yok")      // 2
print("Yeni sözlük:", sozluk)                // ["b": 3]
```

### Set

```swift
var kumeler: Set = [1, 2, 3]
print("Başlangıç:", kumeler)                  // [1, 2, 3]

let eklenenMi = kumeler.insert(4)
print("4 eklendi mi?", eklenenMi.inserted)    // true
print("Güncel küme:", kumeler)                // [1, 2, 3, 4]

let silinenSetElemani = kumeler.remove(2)
print("Silinen eleman:", silinenSetElemani ?? -1) // 2
print("2 silindi:", kumeler)                  // [1, 3, 4]

print("3 var mı?", kumeler.contains(3))       // true

let baskaKume: Set = [3, 4, 5]
let birlesim = kumeler.union(baskaKume)
print("Birleşim:", birlesim)                  // [1, 3, 4, 5]

let kesisim = kumeler.intersection(baskaKume)
print("Kesişim:", kesisim)                    // [3, 4]
```

---

## 5. Koleksiyonlarda Döngü Kullanımı

```swift
for meyve in meyveler {
    print("Meyve:", meyve)
}

for (sehir, plaka) in plakalar {
    print("\(sehir) plakası:", plaka)
}

for sayi in sayilar {
    print("Set elemanı:", sayi)
}
```

---

## 6. Özet

- Array: Sıralı, indeksli, tekrar edebilir elemanlar.
- Dictionary: Anahtar-değer ilişkili, sıralı olmayan.
- Set: Tekil, sırasız elemanlar.

Swift’te koleksiyonlar, veri kaynağıyla çalışırken en çok kullanacağın tiplerdir.

---

## Sonraki Ders

**07 - Fonksiyonlar**  
Bir sonraki derste Swift'te fonksiyonlar ve fonksiyonların kullanımı incelenecek.
