# Guard ve Optional Binding

Swift’te kodun güvenli ve okunabilir olmasını sağlayan iki önemli yapı: **guard** ve **optional binding**. Özellikle optional (seçimli) değerlerle çalışırken sıkça kullanılır.

---

## Optional Nedir?

Optional, bir değişkenin ya bir değer tutabileceği ya da "nil" olabileceği anlamına gelir. Swift’te şöyle tanımlanır:

```swift
var isim: String? // isim ya bir metin tutar ya da nil olabilir
```

## Optional Binding Nedir?

Optional bir değişkende değer olup olmadığını kontrol edip, varsa o değeri güvenli şekilde kullanmamızı sağlar. En çok "if let" ile kullanılır:

```swift
var metin: String? = "Merhaba"
if let gercekMetin = metin {
    print("Metin: \(gercekMetin)")
} else {
    print("Metin yok!")
}
```

- Burada `if let` ile metin değişkeninin değeri varsa, yeni bir sabit olarak kullanıyoruz.
- Eğer değer yoksa (nil ise), else bloğu çalışır.

---

## Guard Statement Nedir?

Guard, bir koşulu sağlamak için kullanılır ve koşul sağlanmazsa fonksiyondan veya döngüden çıkılır. Daha çok erken çıkış (early exit) için kullanılır.

```swift
func selamVer(isim: String?) {
    guard let gercekIsim = isim else {
        print("İsim yok, selam veremem!")
        return
    }
    print("Selam, \(gercekIsim)!\")
}
```

- `guard let` ile isim’in değeri olup olmadığını kontrol ediyoruz.
- Eğer değer yoksa, hata mesajı yazıp `return` ile fonksiyondan çıkıyoruz.
- Eğer değer varsa, fonksiyonun kalan kısmında o değeri kullanabiliyoruz.

### Guard vs If Let

- **if let**: Koşul sağlanmazsa else bloğu çalışır, kodun bir kısmı çalışabilir.
- **guard let**: Koşul sağlanmazsa fonksiyondan/döngüden tamamen çıkılır. Kodun geri kalanında güvenle değeri kullanabilirsin.

Guard genellikle fonksiyonun başında, kodun daha temiz ve güvenli olmasını sağlamak için tercih edilir.

---

## Nerede Kullanılır?

- Kullanıcıdan gelen verileri kontrol etmek
- API’den gelen yanıtı doğrulamak
- Zorunlu değerler gerektiren işlemlerde

---

## Özet

- **Optional Binding** (`if let`, `if var`): Optional bir değişkende değer varsa güvenle kullanmanı sağlar.
- **Guard Statement** (`guard let`): Bir koşulu sağlamak için, aksi durumda fonksiyondan/döngüden çıkmanı sağlar.

---

## Sık Sorulanlar

**Soru:** Bir değişkenin değeri yoksa ne olur?  
**Cevap:** Optional binding ile kontrol edersin, yoksa hata vermez; guard ile fonksiyondan çıkarsın.

**Soru:** Guard mı if let mi kullanmalıyım?  
**Cevap:** Fonksiyonun devamı için değerin kesinleşmesi gerekiyorsa guard kullan. Sadece bir durum için kod çalışacaksa if let.

---

Daha fazla pratik için kod örneklerini inceleyin!