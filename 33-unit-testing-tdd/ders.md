# Unit Testing ve Test Driven Development (TDD) – Swift

## Unit Testing Nedir?
Unit test, yazdığınız kodun belirli bir parçasını (fonksiyon, sınıf, modül vb.) otomatik olarak test eden kodlardır. Swift dünyasında genellikle XCTest framework’ü kullanılır.

## Neden Unit Test?
- Hataları erken yakalamak
- Refactor işlemlerinde güvenlik
- Kodun sürdürülebilirliğini artırmak

---

## TDD (Test Driven Development) Nedir?
TDD, kod yazmadan önce test yazma prensibine dayanan bir yazılım geliştirme yaklaşımıdır. Döngüsü:
1. Test yazılır (başarısız olur)
2. Kod yazılır (testi geçecek şekilde)
3. Kod iyileştirilir (refactor)

---

## XCTest ile Basit Unit Test Örneği

```swift
import XCTest

class MatematikTestleri: XCTestCase {
    func testToplama() {
        let sonuc = 2 + 2
        XCTAssertEqual(sonuc, 4)
    }
}
```

---

## TDD Döngüsü Swift Örneği

1. **Test yaz**
```swift
func testFaktoriyel() {
    XCTAssertEqual(faktoriyel(5), 120)
}
```
2. **Kod yaz**
```swift
func faktoriyel(_ n: Int) -> Int {
    if n == 0 { return 1 }
    return n * faktoriyel(n-1)
}
```

---

## Notlar
- Xcode’da yeni bir test target oluşturarak test dosyası ekleyebilirsiniz.
- Testler otomatik ve hızlı çalıştırılır, CI/CD süreçlerinde büyük kolaylık sağlar.