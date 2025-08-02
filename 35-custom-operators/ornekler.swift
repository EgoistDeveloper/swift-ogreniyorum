// Infix custom operator: +++
infix operator +++

extension Array {
    static func +++(lhs: [Element], rhs: [Element]) -> [Element] {
        lhs + rhs
    }
}

// Prefix custom operator: **
prefix operator **

extension Int {
    static prefix func **(value: Int) -> Int {
        value * value
    }
}

// Postfix custom operator: ++!
postfix operator ++!

extension Int {
    static postfix func ++!(value: Int) -> Int {
        value + 10
    }
}

// Kullanım örnekleri
let dizi1 = [1,2]
let dizi2 = [3,4]
let birlesik = dizi1 +++ dizi2 // [1,2,3,4]

let sonuc = **5 // 25

let y = 5++! // 15
