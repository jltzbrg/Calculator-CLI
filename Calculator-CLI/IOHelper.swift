//
// Julio Litzenberg
// https://www.juliolitzenberg.com
//
// Muisimple Apps
// https://www.muisimple.com
//
// 

import Foundation

struct IOHelper {
    
    func newInput() -> String? {
        print("Gib 'h' für Hilfe ein")
        return ask(":> ")
    }
    
    func ask(_ question: String) -> String? {
        print("\(question)", terminator: "")
        return readLine(strippingNewline: true)
    }
    
    func usageInfo() -> String {
        return "Bitte wählen\n"
        + "h: Hilfe\n"
        + "a: Addieren\n"
        + "s: Subtrahieren\n"
        + "m: Multipliziren\n"
        + "d: Dividieren\n"
    }
}
