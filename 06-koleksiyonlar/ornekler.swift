// 06 - Koleksiyonlar: Array, Dictionary, Set - Swift Örnekleri

// 1. Array (Dizi) kullanımı
var meyveler = ["Elma", "Armut", "Muz"]
print("Başlangıç:", meyveler)   // ["Elma", "Armut", "Muz"]

// Ekleme
meyveler.append("Kivi")
print("Kivi eklendi:", meyveler) // ["Elma", "Armut", "Muz", "Kivi"]

// Eleman güncelleme
meyveler[0] = "Portakal"
print("İlk eleman güncellendi:", meyveler) // ["Portakal", "Armut", "Muz", "Kivi"]

// Eleman silme
print("Silmeden önce:", meyveler) // ["Portakal", "Armut", "Muz", "Kivi"]
let silinenMeyve = meyveler.remove(at: 2) // 2. indeks: "Muz" silinir
print("Silinen meyve:", silinenMeyve)     // Muz
print("Silindikten sonra:", meyveler)     // ["Portakal", "Armut", "Kivi"]

// Belirli bir elemana erişim
print("İkinci eleman:", meyveler[1]) // "Armut"

// Sık kullanılan Array metotları
var dizi = [3, 1, 4, 2]
print("Başlangıç:", dizi)                   // [3, 1, 4, 2]

// Eleman ekleme
dizi.append(5)
print("5 eklendi:", dizi)                   // [3, 1, 4, 2, 5]

// Eleman silme
let silinenSayi = dizi.remove(at: 0)        // 0. indeksteki eleman (3) silinir
print("Silinen sayı:", silinenSayi)         // 3
print("İlk eleman silindi:", dizi)          // [1, 4, 2, 5]

// Eleman sayısı
print("Eleman sayısı:", dizi.count)         // 4

// Eleman içeriyor mu?
print("2 var mı?", dizi.contains(2))        // true

// Diziyi sıralama
dizi.sort()
print("Sıralandı:", dizi)                   // [1, 2, 4, 5]

// 2. Dictionary (Sözlük) kullanımı
var plakalar = ["İstanbul": 34, "Ankara": 6]
print("Başlangıç:", plakalar)                // ["İstanbul": 34, "Ankara": 6]

// Ekleme
plakalar["İzmir"] = 35
print("İzmir eklendi:", plakalar)            // ["İstanbul": 34, "Ankara": 6, "İzmir": 35]

// Güncelleme
plakalar["Ankara"] = 60
print("Ankara güncellendi:", plakalar)       // ["İstanbul": 34, "Ankara": 60, "İzmir": 35]

// Silme
print("Silmeden önce:", plakalar)
let silinenPlaka = plakalar.removeValue(forKey: "İstanbul")
print("Silinen şehir ve plakası: İstanbul:", silinenPlaka ?? "Yok") // 34
print("İstanbul silindi:", plakalar)         // ["Ankara": 60, "İzmir": 35]

// Belirli bir değere erişim
print("İzmir plakası:", plakalar["İzmir"] ?? "Bulunamadı")

// Sık kullanılan Dictionary metotları
var sozluk = ["a": 1, "b": 2]
print("Başlangıç:", sozluk)                   // ["a": 1, "b": 2]

// Anahtarları listeleme
print("Anahtarlar:", Array(sozluk.keys))      // ["a", "b"]

// Değerleri listeleme
print("Değerler:", Array(sozluk.values))      // [1, 2]

// Eleman silme
let silinenDeger = sozluk.removeValue(forKey: "a")
print("Silinen anahtar ve değeri: a:", silinenDeger ?? "Yok") // 1
print("a silindi:", sozluk)                   // ["b": 2]

// Eleman güncelleme
let eskiDeger = sozluk.updateValue(3, forKey: "b")
print("b güncellendi, eski değeri:", eskiDeger ?? "Yok")      // 2
print("Yeni sözlük:", sozluk)                // ["b": 3]

// 3. Set (Küme) kullanımı
var sayilar: Set<Int> = [1, 2, 3, 3, 5]
print("Başlangıç:", sayilar)                  // [1, 2, 3, 5]

// Ekleme
let eklendiMi = sayilar.insert(8)
print("8 eklendi mi?", eklendiMi.inserted)    // true
print("Güncel küme:", sayilar)                // [1, 2, 3, 5, 8]

// Silme
print("Silmeden önce:", sayilar)
let silindiMi = sayilar.remove(2)
print("Silinen sayı:", silindiMi ?? -1)       // 2
print("2 silindi:", sayilar)                  // [1, 3, 5, 8]

// Belirli bir elemana erişim
print("5 var mı?", sayilar.contains(5))       // true

// Sık kullanılan Set metotları
var kumeler: Set = [1, 2, 3]
print("Başlangıç:", kumeler)                  // [1, 2, 3]

// Eleman ekleme
let eklenenMi = kumeler.insert(4)
print("4 eklendi mi?", eklenenMi.inserted)    // true
print("Güncel küme:", kumeler)                // [1, 2, 3, 4]

// Eleman silme
let silinenSetElemani = kumeler.remove(2)
print("Silinen eleman:", silinenSetElemani ?? -1) // 2
print("2 silindi:", kumeler)                  // [1, 3, 4]

// Eleman içeriyor mu?
print("3 var mı?", kumeler.contains(3))       // true

// Küme birleşimi
let baskaKume: Set = [3, 4, 5]
let birlesim = kumeler.union(baskaKume)
print("Birleşim:", birlesim)                  // [1, 3, 4, 5]

// Küme kesişimi
let kesisim = kumeler.intersection(baskaKume)
print("Kesişim:", kesisim)                    // [3, 4]

// 4. Koleksiyonlarda döngü örnekleri
for meyve in meyveler {
    print("Meyve:", meyve)
}
for (sehir, plaka) in plakalar {
    print("\(sehir) plakası:", plaka)
}
for sayi in sayilar {
    print("Set elemanı:", sayi)
}