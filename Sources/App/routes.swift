import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    
    router.get { req in
        return try req.view().render("home.leaf", ["title": "home"])
    }
    
    router.get("home") { req in
        return try req.view().render("home.leaf", ["title": "home"])
    }
    
    router.get("products") { req in
        return try req.view().render("product.leaf", ["title": "products"])
    }

    router.get("development") { req in
        return try req.view().render("development.leaf", ["title": "development"])
    }
    
    router.get("contact") { req in
        return try req.view().render("contact.leaf", ["title": "contact"])
    }

    router.get("support") { req in
        return try req.view().render("contact.leaf", ["title": "contact"])
    }
    
    router.get("motissimo-privacy") { req in
        return try req.view().render("privacy.leaf", ["title": "privacy"])
    }

//    // Example of configuring a controller
//    let todoController = TodoController()
//    router.get("todos", use: todoController.index)
//    router.post("todos", use: todoController.create)
//    router.delete("todos", Todo.parameter, use: todoController.delete)
}
