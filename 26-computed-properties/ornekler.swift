// Hesaplanan Özellik Örneği
struct Daire {
    var yaricap: Double
    var alan: Double {
        return Double.pi * yaricap * yaricap
    }
}

let daire = Daire(yaricap: 5)
print("Dairenin alanı: \(daire.alan)")