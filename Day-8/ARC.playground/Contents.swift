
class CarrierSubscription {
    let name: String
    let countryCode: String
    let number: String
    unowned let user: User
    
    lazy var completePhoneNumber: () -> String = {
        self.countryCode + " " + self.number
    }
    
    init(name: String, countryCode: String, number: String, user: User) {
        self.name = name
        self.countryCode = countryCode
        self.number = number
        self.user = user
        user.subscriptions.append(self)
        print("CarrierSubscription \(name) is initialized")
    }
    
    deinit {
        print("Deallocating CarrierSubscription named: \(name)")
    }
}

class Phone {
    let model: String
    weak var owner: User?
    
    var carrierSubscription: CarrierSubscription?
    
    func provision(carrierSubscription: CarrierSubscription) {
        self.carrierSubscription = carrierSubscription
    }
    
    func decommission() {
        carrierSubscription = nil
    }

    
    init(model: String) {
        self.model = model
        print("Phone \(model) was initialized")
    }
    
    deinit {
        print("Deallocating phone named: \(model)")
    }
}

class User {
    let name: String
    
    private(set) var phones: [Phone] = []
    var subscriptions: [CarrierSubscription] = []

    
    func add(phone: Phone) {
        phones.append(phone)
        phone.owner = self
    }
    
    init(name: String) {
        self.name = name
        print("User \(name) was initialized")
    }
    
    deinit {
        print("Deallocating user named: \(name)")
    }
}



func runScenario() {
    var iPhone = Phone(model: "iPhone Xs")
    
    let user = User(name: "John")
    user.add(phone: iPhone)
    
    let subscription = CarrierSubscription(
        name: "TelBel",
        countryCode: "0032",
        number: "31415926",
        user: user)
    iPhone.provision(carrierSubscription: subscription)

    print(subscription.completePhoneNumber())

}

runScenario()


print("OK")
