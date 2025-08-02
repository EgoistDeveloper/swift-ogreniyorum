# Özellik Gözlemcileri (Property Observers) (Property Observers: willSet, didSet)

Swift'te bir özelliğin değeri değiştiğinde özel işlemler yapmak için **özellik gözlemcileri** kullanılır. En çok kullanılan gözlemciler: `willSet` ve `didSet`.

## Özellik Gözlemcileri Nedir?

Bir değişkenin değeri değişmeden önce (`willSet`) veya değiştikten sonra (`didSet`) kod çalıştırmak için kullanılır.

- **willSet**: Değer değişmeden önce tetiklenir.
- **didSet**: Değer değiştikten sonra tetiklenir.

## Kullanım Şekli

```swift
var x: Int = 0 {
    willSet {
        print("x değeri birazdan \(newValue) olacak")
    }
    didSet {
        print("x değeri şimdi \(x) oldu (önceki: \(oldValue))")
    }
}
```

## Nerelerde Kullanılır?

- Model güncellemeleri
- Arayüzün otomatik güncellenmesi
- Veri doğrulama veya yan etkiler

## Dikkat Edilmesi Gerekenler

- **willSet** ve **didSet** sadece bir özelliğin değeri _değiştiğinde_ tetiklenir.
- Başlangıç değeri atanırken çalışmazlar.
- Sadece depolanan özelliklerde kullanılır (computed property'de kullanılamaz).

## Örnek Senaryolar

- Bir kullanıcının puanı değiştiğinde arayüzü güncellemek
- Bir ayarın değişmesiyle başka bir işlemi tetiklemek

Daha fazla örnek için `ornekler.swift` dosyasına bakınız.