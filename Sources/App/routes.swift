import Vapor

/*
public func routes(_ router: Router) throws {
  // nothing left here
}*/

struct Person: Content {
  var name: String
  var age: Int
}

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    app.get("name") { req in
      return "Max"
    }
    app.get("json") { req in
      return Person(name: "Max", age: 47)
    }

}
