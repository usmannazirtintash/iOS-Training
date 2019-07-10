import UIKit

//MAKE CONFIG
let config: URLSessionConfiguration = URLSessionConfiguration.default

//MAKE SESSION
let Session = URLSession(configuration: config)

//URL
let url = URL(string: "https://jsonplaceholder.typicode.com/users")

//MAKE TASK
let task = Session.dataTask(with: url!){
    data, response, error in
    
    guard let response = response as? HTTPURLResponse else {
        print("Problem in Response")
        return
    }
    
    if error != nil
    {
        return
    }
    
    if let result = NSString(data: data!, encoding: String.Encoding.utf8.rawValue) as String?{
        print(error)
        print(result)
    }
}

//RUN TASK
task.resume()
