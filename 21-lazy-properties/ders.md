# Tembel Özellikler (Lazy Properties)

Swift'te bir özelliğin değeri ancak ilk kez erişildiğinde hesaplanmasını istiyorsanız **lazy** anahtar kelimesini kullanabilirsiniz. Bu özelliklere **tembel (lazy) özellikler** denir.

## lazy Özellik Nedir?

Normalde bir özelliğin değeri nesne oluşturulduğunda hesaplanır. Ancak bazı hesaplamalar pahalı olabilir veya özellik her zaman kullanılmayabilir.  
`lazy` ile tanımlanan özellikler, ilk erişimde hesaplanır ve saklanır.

## Kullanım Şekli

```swift
class VeriModeli {
    lazy var veriListesi: [String] = {
        print("Veri listesi oluşturuluyor...")
        return ["Elma", "Armut", "Muz"]
    }()
}

let model = VeriModeli() // veriListesi henüz hesaplanmadı
print(model.veriListesi) // ilk erişimde hesaplanır ve ekrana yazılır
print(model.veriListesi) // artık tekrar hesaplanmaz, direkt değeri gelir
```

## Dikkat Edilmesi Gerekenler

- lazy özellikler **var** ile tanımlanabilir, **let** ile kullanılamaz.
- lazy özellikler, değerleri ilk erişime kadar oluşturulmaz.
- lazy özelliklere **constructor içinde erişemezsiniz**.
- lazy özellikler thread-safe değildir (aynı anda birden fazla thread’den erişim varsa dikkat!).

## Kullanım Senaryoları

- Büyük veri setlerinin veya pahalı işlemlerin gereksiz yere yüklenmemesi için.
- Bir özelliğin her zaman kullanılmayacağından emin olduğunuzda.
- Gecikmeli başlatma gereken durumlarda.

## Kod Örnekleri

Daha fazla örnek için `ornekler.swift` dosyasına göz atınız.