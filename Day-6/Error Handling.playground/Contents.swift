enum AnError : Error
{
    case A
    case B
    case C
}

struct Bla
{
    var a:Int=0
    
    init (a: Int)
    {
        self.a = a
    }
    
    func AnyError() throws -> ()
    {
        if(self.a == 0)
        {
            throw AnError.C
        }
    }
}


var t = Bla(a:0)


do{
    try t.AnyError()
} catch AnError.A
{
    print("Got A Error")
} catch AnError.B
{
    print("Got B Error")
} catch
{
    print("Got some Error")
}


func processFile(filename: String) throws {
    if (filename=="no") {
        print("OK")
        
        //THEN THIS DEFER RUNS
        defer {
            print("OK-1")
            print("OK-2")
        }
        
        //FIRST THIS DEFER RUNS
        defer {
            print("OK-4")
            print("OK-5")
        }
        print("OK-3")
    }
}

try processFile(filename: "no")


enum BlaError : Error
{
    case X;
    case Y;
}

func BlaFunc (_ A: Int) throws -> ()
{
    throw BlaError.X
}

do{
    try BlaFunc(20)
} catch BlaError.X
{
    print("Got blaerror.x")
}

