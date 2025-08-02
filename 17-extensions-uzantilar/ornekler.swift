// 17 - Extensions (Uzantılar) örnekleri 

// String için ters çevirme extension'ı
extension String {
    var ters: String {
        return String(self.reversed())
    }
}

print("Swift".ters) // "tfiwS"

// Int için karesini alma extension'ı
extension Int {
    func karesi() -> Int {
        return self * self
    }
}

print(5.karesi()) // 25

// Double için uzunluk birimleri extension'ı
extension Double {
    var kilometre: Double { self * 1000 }
    var santimetre: Double { self * 100 }
}

let deger = 3.2
print(deger.kilometre)   // 3200.0
print(deger.santimetre)  // 320.0

// Bir protokolü extension ile uygulama örneği
protocol Selamlanabilir {
    func selamla()
}

extension String: Selamlanabilir {
    func selamla() {
        print("Merhaba, \(self)!")
    }
}

"Copilot".selamla() // Merhaba, Copilot!

// Extension ile static metot ekleme
extension Array {
    static func bosArray() -> Array {
        return []
    }
}

let bosDizi = Array<Int>.bosArray()
print(bosDizi) // []