protocol Fighter { init() }

struct XWing: Fighter { init(){} }


struct YWing: Fighter { init(){} }


func launchFighter() -> some Fighter {
    return XWing()
}

let red5 = launchFighter()

func Bla (x:Fighter)
{
    
}
