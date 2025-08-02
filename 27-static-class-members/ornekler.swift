// Örnek - Statik Üye
class MyClass {
    static var staticProperty = "Static Property"
    var instanceProperty = "Instance Property"

    static func staticMethod() {
        print("Called static method")
    }
}

// Kullanım
print(MyClass.staticProperty) // Static Property
MyClass.staticMethod() // Called static method

let myInstance = MyClass()
print(myInstance.instanceProperty) // Instance Property