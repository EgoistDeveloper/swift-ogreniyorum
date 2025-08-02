// 1. async/await ile asenkron işlem
func fetchData() async -> String {
    try? await Task.sleep(nanoseconds: 1_000_000_000)
    return "Veri geldi!"
}

Task {
    let result = await fetchData()
    print(result) // Veri geldi!
}

// 2. DispatchQueue ile arka plan işlemi
DispatchQueue.global().async {
    print("Arka planda çalıştı")
    DispatchQueue.main.async {
        print("Ana thread'e döndü")
    }
}

// 3. async/await ile hata yönetimi
func riskyFetch() async throws -> String {
    throw NSError(domain: "Deneme", code: 404)
}

Task {
    do {
        let veri = try await riskyFetch()
        print(veri)
    } catch {
        print("Hata oluştu: \(error)")
    }
}