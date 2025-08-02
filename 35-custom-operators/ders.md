# Swift'te Custom Operators (Özel Operatörler)

## Operatör Nedir?
Operatörler, değişkenler veya sabitler üzerinde işlem yapan özel sembollerdir. Örneğin: +, -, *, /, ==, &&

## Custom Operator Tanımlama
Swift’te kendi operatörünü tanımlayabilirsin. Örneğin, iki nesneyi özel bir şekilde birleştiren bir operatör.

Yeni bir operatör tanımlamak için:
- `infix`, `prefix` veya `postfix` anahtar kelimesi ile bildirilir.
- Sonra, ilgili fonksiyon implementasyonu yazılır.

---

### Örnek: `+++` Operatörü ile Dizileri Birleştirme

```swift
infix operator +++

extension Array {
    static func +++(lhs: [Element], rhs: [Element]) -> [Element] {
        return lhs + rhs
    }
}
```

Kullanımı:
```swift
let a = [1, 2]
let b = [3, 4]
let c = a +++ b  // [1, 2, 3, 4]
```

---

## Operatör Önceliği ve Associativity

Operatörlerin önceliğini ve birleşme yönünü belirleyebilirsin:

```swift
precedencegroup ToplamaGrubu {
    associativity: left
    higherThan: AdditionPrecedence
}

infix operator +++ : ToplamaGrubu
```

---

## Prefix ve Postfix Operatörler

### Prefix Operatör Örneği

```swift
prefix operator **

extension Int {
    static prefix func **(value: Int) -> Int {
        return value * value
    }
}

let x = **3 // 9
```

### Postfix Operatör Örneği

```swift
postfix operator ++!

extension Int {
    static postfix func ++!(value: Int) -> Int {
        value + 10
    }
}

let y = 5++! // 15
```

---

## Notlar

- Operatörler, kodun okunabilirliğini artırabilir.
- Anlamlı ve kodun anlaşılmasını zorlaştırmayacak şekilde kullanılmalıdır.