# Concurrency & Asynchronous Programming

Concurrency is the ability of a program to make progress on more than one task at a time. In Swift, we have several ways to deal with concurrency, including async/await and DispatchQueue.

## async/await

The async/await syntax allows you to write asynchronous code that looks synchronous. This makes it easier to read and understand.

### Example:
```swift
func fetchData() async throws -> Data {
    let url = URL(string: "https://api.example.com/data")!
    let (data, _) = try await URLSession.shared.data(from: url)
    return data
}
```

## DispatchQueue

DispatchQueue is a powerful tool for managing concurrent tasks. You can create custom queues or use the global queues provided by the system.

### Example:
```swift
let queue = DispatchQueue(label: "com.example.myqueue")
queue.async {
    // Perform task in the background
}
```
