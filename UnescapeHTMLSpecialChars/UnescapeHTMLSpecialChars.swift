//
//  UnescapeHTMLSpecialChars.swift
//  UnescapeHTMLSpecialChars
//
//  Created by sonson on 2017/02/08.
//  Copyright © 2017年 sonson. All rights reserved.
//

import Foundation

struct HTMLEscapeMap {
    let name: String
    let code: unichar
    init(_ s: String, _ c: unichar) {
        name = s
        code = c
    }
}
let unicodeHTMLEscapeMapNameLength_2: [HTMLEscapeMap] = [
    HTMLEscapeMap("lt", 60),
    HTMLEscapeMap("gt", 62),
    HTMLEscapeMap("Mu", 924),
    HTMLEscapeMap("Nu", 925),
    HTMLEscapeMap("Xi", 926),
    HTMLEscapeMap("Pi", 928),
    HTMLEscapeMap("mu", 956),
    HTMLEscapeMap("nu", 957),
    HTMLEscapeMap("xi", 958),
    HTMLEscapeMap("pi", 960),
    HTMLEscapeMap("ni", 8715),
    HTMLEscapeMap("or", 8744),
    HTMLEscapeMap("ne", 8800),
    HTMLEscapeMap("le", 8804),
    HTMLEscapeMap("ge", 8805),
]

let unicodeHTMLEscapeMapNameLength_3: [HTMLEscapeMap] = [
    HTMLEscapeMap("amp", 38),
    HTMLEscapeMap("yen", 165),
    HTMLEscapeMap("uml", 168),
    HTMLEscapeMap("not", 172),
    HTMLEscapeMap("shy", 173),
    HTMLEscapeMap("reg", 174),
    HTMLEscapeMap("deg", 176),
    HTMLEscapeMap("ETH", 208),
    HTMLEscapeMap("eth", 240),
    HTMLEscapeMap("zwj", 8205),
    HTMLEscapeMap("lrm", 8206),
    HTMLEscapeMap("rlm", 8207),
    HTMLEscapeMap("Eta", 919),
    HTMLEscapeMap("Rho", 929),
    HTMLEscapeMap("Tau", 932),
    HTMLEscapeMap("Phi", 934),
    HTMLEscapeMap("Chi", 935),
    HTMLEscapeMap("Psi", 936),
    HTMLEscapeMap("eta", 951),
    HTMLEscapeMap("rho", 961),
    HTMLEscapeMap("tau", 964),
    HTMLEscapeMap("phi", 966),
    HTMLEscapeMap("chi", 967),
    HTMLEscapeMap("psi", 968),
    HTMLEscapeMap("piv", 982),
    HTMLEscapeMap("sum", 8721),
    HTMLEscapeMap("ang", 8736),
    HTMLEscapeMap("and", 8743),
    HTMLEscapeMap("cap", 8745),
    HTMLEscapeMap("cup", 8746),
    HTMLEscapeMap("int", 8747),
    HTMLEscapeMap("sim", 8764),
    HTMLEscapeMap("sub", 8834),
    HTMLEscapeMap("sup", 8835),
    HTMLEscapeMap("loz", 9674),
]

let unicodeHTMLEscapeMapNameLength_4: [HTMLEscapeMap] = [
    HTMLEscapeMap("nbsp", 160),
    HTMLEscapeMap("cent", 162),
    HTMLEscapeMap("sect", 167),
    HTMLEscapeMap("copy", 169),
    HTMLEscapeMap("ordf", 170),
    HTMLEscapeMap("macr", 175),
    HTMLEscapeMap("sup2", 178),
    HTMLEscapeMap("sup3", 179),
    HTMLEscapeMap("para", 182),
    HTMLEscapeMap("sup1", 185),
    HTMLEscapeMap("ordm", 186),
    HTMLEscapeMap("Auml", 196),
    HTMLEscapeMap("Euml", 203),
    HTMLEscapeMap("Iuml", 207),
    HTMLEscapeMap("Ouml", 214),
    HTMLEscapeMap("Uuml", 220),
    HTMLEscapeMap("auml", 228),
    HTMLEscapeMap("euml", 235),
    HTMLEscapeMap("iuml", 239),
    HTMLEscapeMap("ouml", 246),
    HTMLEscapeMap("uuml", 252),
    HTMLEscapeMap("yuml", 255),
    HTMLEscapeMap("quot", 34),
    HTMLEscapeMap("apos", 39),
    HTMLEscapeMap("Yuml", 376),
    HTMLEscapeMap("circ", 710),
    HTMLEscapeMap("ensp", 8194),
    HTMLEscapeMap("emsp", 8195),
    HTMLEscapeMap("zwnj", 8204),
    HTMLEscapeMap("euro", 8364),
    HTMLEscapeMap("fnof", 402),
    HTMLEscapeMap("Beta", 914),
    HTMLEscapeMap("Zeta", 918),
    HTMLEscapeMap("Iota", 921),
    HTMLEscapeMap("beta", 946),
    HTMLEscapeMap("zeta", 950),
    HTMLEscapeMap("iota", 953),
    HTMLEscapeMap("bull", 8226),
    HTMLEscapeMap("real", 8476),
    HTMLEscapeMap("larr", 8592),
    HTMLEscapeMap("uarr", 8593),
    HTMLEscapeMap("darr", 8595),
    HTMLEscapeMap("harr", 8596),
    HTMLEscapeMap("lArr", 8656),
    HTMLEscapeMap("uArr", 8657),
    HTMLEscapeMap("rArr", 8658),
    HTMLEscapeMap("dArr", 8659),
    HTMLEscapeMap("hArr", 8660),
    HTMLEscapeMap("part", 8706),
    HTMLEscapeMap("isin", 8712),
    HTMLEscapeMap("prod", 8719),
    HTMLEscapeMap("prop", 8733),
    HTMLEscapeMap("cong", 8773),
    HTMLEscapeMap("nsub", 8836),
    HTMLEscapeMap("sube", 8838),
    HTMLEscapeMap("supe", 8839),
    HTMLEscapeMap("perp", 8869),
    HTMLEscapeMap("sdot", 8901),
    HTMLEscapeMap("lang", 9001),
    HTMLEscapeMap("rang", 9002),
]

let unicodeHTMLEscapeMapNameLength_5: [HTMLEscapeMap] = [
    HTMLEscapeMap("iexcl", 161),
    HTMLEscapeMap("pound", 163),
    HTMLEscapeMap("laquo", 171),
    HTMLEscapeMap("acute", 180),
    HTMLEscapeMap("micro", 181),
    HTMLEscapeMap("cedil", 184),
    HTMLEscapeMap("raquo", 187),
    HTMLEscapeMap("Acirc", 194),
    HTMLEscapeMap("Aring", 197),
    HTMLEscapeMap("AElig", 198),
    HTMLEscapeMap("Ecirc", 202),
    HTMLEscapeMap("Icirc", 206),
    HTMLEscapeMap("Ocirc", 212),
    HTMLEscapeMap("times", 215),
    HTMLEscapeMap("Ucirc", 219),
    HTMLEscapeMap("THORN", 222),
    HTMLEscapeMap("szlig", 223),
    HTMLEscapeMap("acirc", 226),
    HTMLEscapeMap("aring", 229),
    HTMLEscapeMap("aelig", 230),
    HTMLEscapeMap("ecirc", 234),
    HTMLEscapeMap("icirc", 238),
    HTMLEscapeMap("ocirc", 244),
    HTMLEscapeMap("ucirc", 251),
    HTMLEscapeMap("thorn", 254),
    HTMLEscapeMap("OElig", 338),
    HTMLEscapeMap("oelig", 339),
    HTMLEscapeMap("tilde", 732),
    HTMLEscapeMap("ndash", 8211),
    HTMLEscapeMap("mdash", 8212),
    HTMLEscapeMap("lsquo", 8216),
    HTMLEscapeMap("rsquo", 8217),
    HTMLEscapeMap("sbquo", 8218),
    HTMLEscapeMap("ldquo", 8220),
    HTMLEscapeMap("rdquo", 8221),
    HTMLEscapeMap("bdquo", 8222),
    HTMLEscapeMap("Alpha", 913),
    HTMLEscapeMap("Gamma", 915),
    HTMLEscapeMap("Delta", 916),
    HTMLEscapeMap("Theta", 920),
    HTMLEscapeMap("Kappa", 922),
    HTMLEscapeMap("Sigma", 931),
    HTMLEscapeMap("Omega", 937),
    HTMLEscapeMap("alpha", 945),
    HTMLEscapeMap("gamma", 947),
    HTMLEscapeMap("delta", 948),
    HTMLEscapeMap("theta", 952),
    HTMLEscapeMap("kappa", 954),
    HTMLEscapeMap("sigma", 963),
    HTMLEscapeMap("omega", 969),
    HTMLEscapeMap("upsih", 978),
    HTMLEscapeMap("prime", 8242),
    HTMLEscapeMap("Prime", 8243),
    HTMLEscapeMap("oline", 8254),
    HTMLEscapeMap("frasl", 8260),
    HTMLEscapeMap("image", 8465),
    HTMLEscapeMap("trade", 8482),
    HTMLEscapeMap("crarr", 8629),
    HTMLEscapeMap("exist", 8707),
    HTMLEscapeMap("empty", 8709),
    HTMLEscapeMap("nabla", 8711),
    HTMLEscapeMap("notin", 8713),
    HTMLEscapeMap("minus", 8722),
    HTMLEscapeMap("radic", 8730),
    HTMLEscapeMap("infin", 8734),
    HTMLEscapeMap("asymp", 8776),
    HTMLEscapeMap("equiv", 8801),
    HTMLEscapeMap("oplus", 8853),
    HTMLEscapeMap("lceil", 8968),
    HTMLEscapeMap("rceil", 8969),
    HTMLEscapeMap("clubs", 9827),
    HTMLEscapeMap("diams", 9830),
]

let unicodeHTMLEscapeMapNameLength_6: [HTMLEscapeMap] = [
    HTMLEscapeMap("curren", 164),
    HTMLEscapeMap("brvbar", 166),
    HTMLEscapeMap("plusmn", 177),
    HTMLEscapeMap("middot", 183),
    HTMLEscapeMap("frac14", 188),
    HTMLEscapeMap("frac12", 189),
    HTMLEscapeMap("frac34", 190),
    HTMLEscapeMap("iquest", 191),
    HTMLEscapeMap("Agrave", 192),
    HTMLEscapeMap("Aacute", 193),
    HTMLEscapeMap("Atilde", 195),
    HTMLEscapeMap("Ccedil", 199),
    HTMLEscapeMap("Egrave", 200),
    HTMLEscapeMap("Eacute", 201),
    HTMLEscapeMap("Igrave", 204),
    HTMLEscapeMap("Iacute", 205),
    HTMLEscapeMap("Ntilde", 209),
    HTMLEscapeMap("Ograve", 210),
    HTMLEscapeMap("Oacute", 211),
    HTMLEscapeMap("Otilde", 213),
    HTMLEscapeMap("Oslash", 216),
    HTMLEscapeMap("Ugrave", 217),
    HTMLEscapeMap("Uacute", 218),
    HTMLEscapeMap("Yacute", 221),
    HTMLEscapeMap("agrave", 224),
    HTMLEscapeMap("aacute", 225),
    HTMLEscapeMap("atilde", 227),
    HTMLEscapeMap("ccedil", 231),
    HTMLEscapeMap("egrave", 232),
    HTMLEscapeMap("eacute", 233),
    HTMLEscapeMap("igrave", 236),
    HTMLEscapeMap("iacute", 237),
    HTMLEscapeMap("ntilde", 241),
    HTMLEscapeMap("ograve", 242),
    HTMLEscapeMap("oacute", 243),
    HTMLEscapeMap("otilde", 245),
    HTMLEscapeMap("divide", 247),
    HTMLEscapeMap("oslash", 248),
    HTMLEscapeMap("ugrave", 249),
    HTMLEscapeMap("uacute", 250),
    HTMLEscapeMap("yacute", 253),
    HTMLEscapeMap("Scaron", 352),
    HTMLEscapeMap("scaron", 353),
    HTMLEscapeMap("thinsp", 8201),
    HTMLEscapeMap("dagger", 8224),
    HTMLEscapeMap("Dagger", 8225),
    HTMLEscapeMap("permil", 8240),
    HTMLEscapeMap("lsaquo", 8249),
    HTMLEscapeMap("rsaquo", 8250),
    HTMLEscapeMap("Lambda", 923),
    HTMLEscapeMap("lambda", 955),
    HTMLEscapeMap("sigmaf", 962),
    HTMLEscapeMap("hellip", 8230),
    HTMLEscapeMap("weierp", 8472),
    HTMLEscapeMap("forall", 8704),
    HTMLEscapeMap("lowast", 8727),
    HTMLEscapeMap("there4", 8756),
    HTMLEscapeMap("otimes", 8855),
    HTMLEscapeMap("lfloor", 8970),
    HTMLEscapeMap("rfloor", 8971),
    HTMLEscapeMap("spades", 9824),
    HTMLEscapeMap("hearts", 9829),
]

let unicodeHTMLEscapeMapNameLength_7: [HTMLEscapeMap] = [
    HTMLEscapeMap("Epsilon", 917),
    HTMLEscapeMap("Omicron", 927),
    HTMLEscapeMap("Upsilon", 933),
    HTMLEscapeMap("epsilon", 949),
    HTMLEscapeMap("omicron", 959),
    HTMLEscapeMap("upsilon", 965),
    HTMLEscapeMap("alefsym", 8501),
]

let unicodeHTMLEscapeMapNameLength_8: [HTMLEscapeMap] = [
    HTMLEscapeMap("thetasym", 977),
]



func getTable(length: Int) -> [HTMLEscapeMap]? {
    switch length {
    case 2:
        return unicodeHTMLEscapeMapNameLength_2
    case 3:
        return unicodeHTMLEscapeMapNameLength_3
    case 4:
        return unicodeHTMLEscapeMapNameLength_4
    case 5:
        return unicodeHTMLEscapeMapNameLength_5
    case 6:
        return unicodeHTMLEscapeMapNameLength_6
    case 7:
        return unicodeHTMLEscapeMapNameLength_7
    case 8:
        return unicodeHTMLEscapeMapNameLength_8
    default:
        return nil
    }
}

func getCharacter(name: String) -> unichar? {
    if let table = getTable(length: name.characters.count) {
        if let index = table.index(where: {$0.name == name}) {
            return table[index].code
        }
    }
    return nil
}

func search(buffer: UnsafeMutablePointer<unichar>, from: Int, to: Int, char: unichar, forward: Bool) -> Int {
    if forward {
        for i in from..<to {
            if (buffer + i).pointee == char {
                return i
            }
        }
    } else {
        for i in from..<to {
            if (buffer + to - 1 - i).pointee == char {
                return to - 1 - i
            }
        }
    }
    return -1
}

extension String {
    public var unescapeHTML: String {
        var length = self.characters.count
        let buffer = UnsafeMutablePointer<unichar>.allocate(capacity: length)
        defer { buffer.deallocate(capacity: length) }
        let temp = UnsafeMutablePointer<unichar>.allocate(capacity: length)
        defer { temp.deallocate(capacity: length) }
        (self as NSString).getCharacters(buffer)
        
        var range = length
        
        
//        var l = 0
        
//        var target: unichar = 38
//        var scanning = false
//        
//        for i in 0..<length {
//            if (buffer + i).pointee == 38 {
//                scanning = true
//            } else if (buffer + i).pointee == 59 {
//                scanning = false
//            }
//            if scanning {
//                
//            } else {
//                (outputBuffer + l).pointee = (buffer + i).pointee
//                l = l + 1
//            }
//        }
//
        repeat {
            let ampIndex = search(buffer: buffer, from: 0, to: range, char: 38, forward: false)
            if ampIndex == -1 {
                break
            }
            let semiColonIndex = search(buffer: buffer, from: ampIndex, to: range, char: 59, forward: true)
            if semiColonIndex == -1 {
                range = ampIndex
                continue
            }
            
            let prefix1 = (buffer + ampIndex + 1).pointee
            let prefix2 = (buffer + ampIndex + 2).pointee
            
            if prefix1 == 35 {
                if prefix2 == 120 || prefix2 == 88 {
                    let codeLength = semiColonIndex - 1 - ampIndex - 2
                    if let hexString = String(bytesNoCopy: buffer + ampIndex + 3, length: MemoryLayout<unichar>.size * codeLength, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
                        if let charCode = UInt16(hexString, radix: 16) {
                            (buffer + ampIndex).pointee = charCode
                            let from = semiColonIndex + 1
                            let copyLength = length - from
                            if copyLength > 0 {
                                memcpy(buffer + ampIndex + 1, buffer + from, MemoryLayout<unichar>.size * copyLength)
                            }
                            length = length - (semiColonIndex - ampIndex)
                        }
                    }
                } else {
                    let codeLength = semiColonIndex - 1 - ampIndex - 1
                    if let decimalString = String(bytesNoCopy: buffer + ampIndex + 2, length: MemoryLayout<unichar>.size * codeLength, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
                        if let charCode = UInt16(decimalString) {
                            (buffer + ampIndex).pointee = charCode
                            let from = semiColonIndex + 1
                            let copyLength = length - from
                            if copyLength > 0 {
                                memcpy(buffer + ampIndex + 1, buffer + from, MemoryLayout<unichar>.size * copyLength)
                            }
                            length = length - (semiColonIndex - ampIndex)
                        }
                    }
                }
            } else {
                let codeLength = semiColonIndex - 1 - ampIndex
                if let name = String(bytesNoCopy: buffer + ampIndex + 1, length: MemoryLayout<unichar>.size * codeLength, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
                    if let charCode = getCharacter(name: name) {
                        (buffer + ampIndex).pointee = charCode
                        let from = semiColonIndex + 1
                        let copyLength = length - from
                        if copyLength > 0 {
                            memcpy(buffer + ampIndex + 1, buffer + from, MemoryLayout<unichar>.size * copyLength)
                        }
                        length = length - (semiColonIndex - ampIndex)
                    }
                }
            }
//            
//            if let t = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size * length, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
//                print(t)
//            }
//            
////            print(ampIndex)
////            print(semiColonIndex)
            range = ampIndex
        } while true
//
        if let t = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size * length, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
            return t
        }
        return self
//        
//        var unescapingString = self
//        
//        let startIndex = unescapingString.startIndex
//        var endIndex = unescapingString.endIndex
//        
    
        
//        let buffer = UnsafeMutablePointer<unichar>.allocate(capacity: 1)
//        repeat {
//            guard let rangeOfAmp = unescapingString.range(of: "&", options: .backwards, range: startIndex..<endIndex, locale: nil) else { break }
//            guard let rangeOfSemicollon = unescapingString.range(of: ";", options: [], range: rangeOfAmp.lowerBound..<endIndex, locale: nil) else {
//                endIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 0)
//                continue
//            }
//            
//            let prefixChar1 = unescapingString.substring(with: rangeOfAmp.lowerBound..<unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 2))
//            
//            if prefixChar1 == "&#" {
//                let prefixChar2 = unescapingString.substring(with: rangeOfAmp.lowerBound..<unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 3))
//                if prefixChar2 == "&#x" || prefixChar2 == "&#X" {
//                    let startIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 3)
//                    let endIndex = unescapingString.index(rangeOfSemicollon.lowerBound, offsetBy: 0)
//                    let hexString = unescapingString.substring(with: startIndex..<endIndex)
//                    if let charCode = UInt16(hexString, radix: 16) {
//                        let buffer = UnsafeMutablePointer<unichar>.allocate(capacity: 1)
//                        buffer.pointee = charCode
//                        if let c = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size * 1, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
//                            unescapingString.replaceSubrange(rangeOfAmp.lowerBound..<rangeOfSemicollon.upperBound, with: c)
//                        }
//                    }
//                } else {
//                    let startIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 2)
//                    let endIndex = unescapingString.index(rangeOfSemicollon.lowerBound, offsetBy: 0)
//                    let decimalString = unescapingString.substring(with: startIndex..<endIndex)
//                    if let charCode = UInt16(decimalString) {
//                        buffer.pointee = charCode
//                        if let c = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size * 1, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
//                            unescapingString.replaceSubrange(rangeOfAmp.lowerBound..<rangeOfSemicollon.upperBound, with: c)
//                        }
//                    }
//                }
//            } else {
//                let startIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 1)
//                let endIndex = unescapingString.index(rangeOfSemicollon.lowerBound, offsetBy: 0)
//                let name = unescapingString.substring(with: startIndex..<endIndex)
//                if let character = getCharacter(name: name) {
//                    unescapingString.replaceSubrange(rangeOfAmp.lowerBound..<rangeOfSemicollon.upperBound, with: character)
//                }
//            }
//            endIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 0)
//        } while true
//        buffer.deallocate(capacity: 1)
//        return unescapingString
    }
    
//    public var unescapeHTML_usingString: String {
//        var unescapingString = self
//        
//        let startIndex = unescapingString.startIndex
//        var endIndex = unescapingString.endIndex
//        
//        let buffer = UnsafeMutablePointer<unichar>.allocate(capacity: 1)
//        repeat {
//            guard let rangeOfAmp = unescapingString.range(of: "&", options: .backwards, range: startIndex..<endIndex, locale: nil) else { break }
//            guard let rangeOfSemicollon = unescapingString.range(of: ";", options: [], range: rangeOfAmp.lowerBound..<endIndex, locale: nil) else {
//                endIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 0)
//                continue
//            }
//            
//            let prefixChar1 = unescapingString.substring(with: rangeOfAmp.lowerBound..<unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 2))
//            
//            if prefixChar1 == "&#" {
//                let prefixChar2 = unescapingString.substring(with: rangeOfAmp.lowerBound..<unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 3))
//                if prefixChar2 == "&#x" || prefixChar2 == "&#X" {
//                    let startIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 3)
//                    let endIndex = unescapingString.index(rangeOfSemicollon.lowerBound, offsetBy: 0)
//                    let hexString = unescapingString.substring(with: startIndex..<endIndex)
//                    if let charCode = UInt16(hexString, radix: 16) {
//                        let buffer = UnsafeMutablePointer<unichar>.allocate(capacity: 1)
//                        buffer.pointee = charCode
//                        if let c = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size * 1, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
//                            unescapingString.replaceSubrange(rangeOfAmp.lowerBound..<rangeOfSemicollon.upperBound, with: c)
//                        }
//                    }
//                } else {
//                    let startIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 2)
//                    let endIndex = unescapingString.index(rangeOfSemicollon.lowerBound, offsetBy: 0)
//                    let decimalString = unescapingString.substring(with: startIndex..<endIndex)
//                    if let charCode = UInt16(decimalString) {
//                        buffer.pointee = charCode
//                        if let c = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size * 1, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
//                            unescapingString.replaceSubrange(rangeOfAmp.lowerBound..<rangeOfSemicollon.upperBound, with: c)
//                        }
//                    }
//                }
//            } else {
//                let startIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 1)
//                let endIndex = unescapingString.index(rangeOfSemicollon.lowerBound, offsetBy: 0)
//                let name = unescapingString.substring(with: startIndex..<endIndex)
//                if let character = getCharacter(name: name) {
//                    unescapingString.replaceSubrange(rangeOfAmp.lowerBound..<rangeOfSemicollon.upperBound, with: character)
//                }
//            }
//            endIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 0)
//        } while true
//        buffer.deallocate(capacity: 1)
//        return unescapingString
//    }
//    
//    public var unescapeHTMLLikeObjC: String {
//        let unescapingString = NSMutableString(string: self)
//        
//        var previousAmpLocation = unescapingString.length
//        
//        let buffer = UnsafeMutablePointer<unichar>.allocate(capacity: 1)
//        repeat {
//            let rangeOfAmp = unescapingString.range(of: "&", options: .backwards, range: NSMakeRange(0, previousAmpLocation))
//            if rangeOfAmp.location == NSNotFound { break }
//            let rangeOfSemiColon = unescapingString.range(of: ";", options: [], range: NSMakeRange(rangeOfAmp.location, previousAmpLocation - rangeOfAmp.location))
//            previousAmpLocation = rangeOfAmp.location
//            if rangeOfSemiColon.location == NSNotFound {
//                continue
//            }
//            let rangeToBeReplaced = NSMakeRange(rangeOfAmp.location, rangeOfSemiColon.location - rangeOfAmp.location + 1)
//            let prefix = unescapingString.character(at: rangeOfAmp.location + 1)
//            if prefix == 35 {
//                let prefixOfHex = unescapingString.character(at: rangeOfAmp.location + 2)
//                if prefixOfHex == 120 || prefixOfHex == 88 {
//                    let rangeOfHex = NSMakeRange(rangeOfAmp.location + 3, rangeOfSemiColon.location - rangeOfAmp.location - 3)
//                    let hexString = unescapingString.substring(with: rangeOfHex)
//                    if let charCode = UInt16(hexString, radix: 16) {
//                        buffer.pointee = charCode
//                        if let c = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
//                            unescapingString.replaceCharacters(in: rangeToBeReplaced, with: c)
//                        }
//                    }
//                } else {
//                    let rangeOfDecimal = NSMakeRange(rangeOfAmp.location + 2, rangeOfSemiColon.location - rangeOfAmp.location - 2)
//                    let decimalString = unescapingString.substring(with: rangeOfDecimal)
//                    if let charCode = UInt16(decimalString) {
//                        buffer.pointee = charCode
//                        if let c = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
//                            unescapingString.replaceCharacters(in: rangeToBeReplaced, with: c)
//                        }
//                    }
//                }
//            } else {
//                let rangeOfName = NSMakeRange(rangeOfAmp.location + 1, rangeOfSemiColon.location - rangeOfAmp.location - 1)
//                let name = unescapingString.substring(with: rangeOfName)
//                if let character = getCharacter(name: name) {
//                    unescapingString.replaceCharacters(in: rangeToBeReplaced, with: character)
//                }
//            }
//        } while true
//        buffer.deallocate(capacity: 1)
//        return unescapingString as String
//    }
}
