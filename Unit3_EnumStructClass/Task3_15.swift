// Task 3.15 - class Book and class Library with add, remove, search and list.

class Book {
    var title: String
    var author: String

    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
}

class Library {
    var books: [Book] = []

    func add(_ book: Book) {
        books.append(book)
        print("Added: \(book.title)")
    }

    func remove(title: String) {
        if let index = books.firstIndex(where: { $0.title == title }) {
            books.remove(at: index)
            print("Removed: \(title)")
        } else {
            print("Cannot remove, not found: \(title)")
        }
    }

    func search(title: String) -> Book? {
        return books.first { $0.title.lowercased() == title.lowercased() }
    }

    func listBooks() {
        if books.isEmpty {
            print("The library is empty")
            return
        }
        print("Books in the library:")
        for (index, book) in books.enumerated() {
            print("  \(index + 1). \(book.title) by \(book.author)")
        }
    }
}

let library = Library()
library.add(Book(title: "Swift Basics", author: "A. Kumar"))
library.add(Book(title: "SwiftUI Guide", author: "B. Rao"))
library.add(Book(title: "Clean Code", author: "R. Martin"))
library.listBooks()

if let found = library.search(title: "swiftui guide") {
    print("Found: \(found.title) by \(found.author)")
}
print(library.search(title: "Unknown") == nil ? "Unknown: not found" : "Unexpected")

library.remove(title: "Clean Code")
library.remove(title: "Clean Code")
library.listBooks()
