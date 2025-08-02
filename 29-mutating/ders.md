# Mutating Functions – Yapılarda Değiştirilebilir Fonksiyonlar

Swift’te `struct` ve `enum` gibi değer tiplerinde, içerisindeki property’leri bir fonksiyon aracılığıyla değiştirmek istediğimizde fonksiyonu `mutating` anahtar kelimesiyle tanımlamamız gerekir. Çünkü değer tiplerinde, fonksiyonlar varsayılan olarak property’leri değiştiremez.

## mutating Fonksiyon Nedir?

`mutating` anahtar kelimesi, fonksiyonun ilgili struct veya enum’un property’lerini değiştirmesine izin verir.

## Kullanım Senaryosu

Bir sayaç örneği üzerinden inceleyelim:

```swift
struct Counter {
    var value = 0

    mutating func increment() {
        value += 1
    }

    mutating func reset() {
        value = 0
    }
}

var myCounter = Counter()
myCounter.increment() // value artık 1
myCounter.reset()     // value sıfırlandı
```

## Self'i Değiştirme

mutating fonksiyonlar sadece property’leri değil, doğrudan kendisini (self) de değiştirebilir:

```swift
struct Point {
    var x: Int
    var y: Int

    mutating func moveToOrigin() {
        self = Point(x: 0, y: 0)
    }
}
```

## Enumlarda mutating Fonksiyonlar

Enumlarda mutating fonksiyonlar ile mevcut durumu değiştirmek mümkündür:

```swift
enum SwitchState {
    case on, off

    mutating func toggle() {
        self = self == .on ? .off : .on
    }
}

var state = SwitchState.off
state.toggle() // state artık .on
```

## Dikkat Edilmesi Gerekenler

- mutating fonksiyonlar, struct veya enum’un bir instance’ı var olarak tanımlandığında kullanılabilir (`var` ile tanımlanmalı).
- Sınıflarda (class) mutating anahtar kelimesine gerek yoktur; çünkü referans tipler doğrudan property değişikliğine izin verir.

## Özet

`mutating` fonksiyonlar, Swift’te değer tiplerinde değişiklik yapabilmek için kullanılır. Kodun okunabilirliğini ve güvenliğini artırır.