# Swift Package Manager ve Modüler Kod

## Swift Package Manager (SPM) Nedir?
Swift Package Manager, Swift projelerinde bağımlılık yönetimi ve modüler kod geliştirmek için kullanılan resmi araçtır.

- Projeye harici paket ekleme/çıkarma
- Kendi kütüphaneni paket olarak yayınlama
- Kodun daha modüler ve sürdürülebilir olmasını sağlar

---

## SPM ile Paket Ekleme
1. Xcode’da “File > Add Packages” ile harici bir paket ekleyebilirsin.
2. `Package.swift` dosyasını manuel düzenleyerek paket ekleyebilirsin.

```swift
// Package.swift örneği
dependencies: [
    .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0")
]
```

---

## Modüler Kod Nedir?
Kodun mantıksal bölümlere (modüller/kütüphaneler/paketler) ayrılmasıdır.
- Her modül kendi işlevini üstlenir.
- Bir modül güncellendiğinde diğerleri direkt etkilenmez.
- Test, bakım ve yeniden kullanılabilirlik için önemlidir.

---

## Kendi Swift Paketini Oluşturmak

Terminalde:
```sh
swift package init --type library
```

Dosya yapısı:
- Sources/ModulAdi/ : Kaynak kod
- Tests/ModulAdiTests/ : Testler

---

## Örnek Modül: Matematik Kütüphanesi

Kendi fonksiyonlarını bir modül içinde tutabilirsin:
- Toplama, çarpma, özel algoritmalar
- Diğer projelerde tekrar kullanabilirsin

---

## Notlar
- SPM ile oluşturulan paketler GitHub’da veya özel bir sunucuda paylaşılabilir.
- Versiyonlama (semver) önemlidir: major.minor.patch
