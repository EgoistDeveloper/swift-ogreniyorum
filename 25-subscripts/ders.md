# Subscripts – Swift’te Alt İndeksler

Subscripts, bir nesneye veya bir koleksiyona erişim sağlamak için kullanılan bir yöntemdir. Swift’te subscripts, diziler, sözlükler ve diğer koleksiyon tipleri üzerinde kullanılabilir. Subscripts, bir nesnenin belirli bir alt kümesine hızlı bir şekilde erişim sağlar.

## Subscript Tanımı
Swift’te bir subscript tanımlamak için `subscript` anahtar kelimesi kullanılır. Kullanımı, bir fonksiyon tanımına benzer fakat parantez yerine köşeli parantezler kullanılır.

```swift
subscript(index: Int) -> Type {
    // İlgili işlemler
}
```

## Örnek Kullanım
```swift
struct School {
    let students: [String]
    subscript(index: Int) -> String {
        return students[index]
    }
}

let school = School(students: ["Ali", "Ayşe", "Mehmet"])
print(school[0]) // Ali
```