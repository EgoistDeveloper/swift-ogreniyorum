# Concurrency & Asynchronous Programming (async/await, DispatchQueue)

Swift’te modern eşzamanlılık (concurrency) desteği sayesinde kodunuzu daha verimli ve güvenli şekilde paralel olarak çalıştırabilirsiniz. Özellikle `async/await` anahtar kelimeleri ve klasik `DispatchQueue` ile asenkron işlemler kolayca gerçekleştirilebilir.

---

## 📌 async/await Nedir?
- `async` fonksiyonlar, zaman alan işlemleri beklerken kodun diğer bölümlerinin çalışmasına izin verir.
- `await` ile bir asenkron fonksiyonun tamamlanmasını beklersiniz.

```swift
func uzunSurenIslem() async -> String {
    // Ağ isteği, dosya okuma gibi zaman alan işlemler
    return "Sonuç"
}

Task {
    let sonuc = await uzunSurenIslem()
    print(sonuc)
}
```

---

## 📌 DispatchQueue ile Asenkron İşlemler

`DispatchQueue`, GCD (Grand Central Dispatch) tabanlı klasik asenkron programlamadır.

```swift
DispatchQueue.global().async {
    // Arka planda çalışacak kod
    print("Background işlem")
    DispatchQueue.main.async {
        // Ana thread’e dön
        print("Ana thread")
    }
}
```

---

## 📌 Eşzamanlılık ve Performans

- Asenkron işlemler UI’nin donmasını engeller.
- Eşzamanlı kod, daha hızlı ve verimli çalışabilir.

---

## 📌 async/await ile Hata Yönetimi

```swift
func veriAl() async throws -> String {
    throw NSError(domain: \"Hata\", code: 1)
}

Task {
    do {
        let veri = try await veriAl()
        print(veri)
    } catch {
        print(\"Hata oluştu: \\(error)\")
    }
}
```

---

## 📌 Kısa Notlar

- `Task { ... }` ile yeni asenkron görev başlatılır.
- Asenkron işlemler UI projelerinde özellikle önemlidir.
- Klasik yöntem: `DispatchQueue`; Modern yöntem: `async/await`.
