//
// Julio Litzenberg
// https://www.juliolitzenberg.com
//
// Muisimple Apps
// https://www.muisimple.com
//
// 

import Foundation

let iohelper = IOHelper()
let math = Math()

while true {
    
    guard let method = iohelper.newInput() else {
        continue
    }
    
    var mathFunction: (Int, Int) -> Int
    
    switch method {
    case "h":
        print(iohelper.usageInfo())
        continue
    case "a":
        mathFunction = math.addieren
    case "s":
        mathFunction = math.subtrahieren
    case "m":
        mathFunction = math.multiplizieeren
    case "d":
        mathFunction = math.dividieren
    case "q":
        //Programm beenden
        exit(0)
    default:
        print("Eingabe unbekannt")
        continue
    }
    
    //Eingabe verarbeiten
    let input1 = iohelper.ask("Zahl Nummer 1: ")
    let input2 = iohelper.ask("Zahl Nummer 2: ")
    
    
    //Zahl Eins und Zwei validieren
    guard let str1  = input1, let str2 = input2 else {
        continue
    }
    
    guard let zahl1 = Int(str1), let zahl2 = Int(str2) else {
        continue
    }
    
    let result = mathFunction(zahl1, zahl2)
    print("Ergebnis: \(result)", terminator: "\n\n")
}
