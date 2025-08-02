// 1. Basit sayaç örneği
struct Counter {
    var value = 0
    mutating func increment() {
        value += 1
    }
    mutating func reset() {
        value = 0
    }
}

// Kullanım
var counter = Counter()
counter.increment()
print(counter.value) // 1
counter.reset()
print(counter.value) // 0

// 2. self'i değiştiren mutating fonksiyon
struct Point {
    var x: Int
    var y: Int
    mutating func moveToOrigin() {
        self = Point(x: 0, y: 0)
    }
}

// Kullanım
var p = Point(x: 5, y: 7)
p.moveToOrigin()
print(p) // Point(x: 0, y: 0)

// 3. Enum ile mutating fonksiyon örneği
enum SwitchState {
    case on, off
    mutating func toggle() {
        self = self == .on ? .off : .on
    }
}

// Kullanım
var s = SwitchState.off
s.toggle()
print(s) // on

// 4. Dizide eleman ekleyen mutating fonksiyon
struct NumberList {
    var items: [Int] = []
    mutating func add(_ number: Int) {
        items.append(number)
    }
}

// Kullanım
var list = NumberList()
list.add(10)
list.add(25)
print(list.items) // [10, 25]