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
    let character: String
    init(_ s: String, _ c: String) {
        name = s
        character = c
    }
}

let unicodeHTMLEscapeMapNameLength_2: [HTMLEscapeMap] = [
    HTMLEscapeMap("lt", "<"),
    HTMLEscapeMap("gt", ">"),
    HTMLEscapeMap("Mu", "Μ"),
    HTMLEscapeMap("Nu", "Ν"),
    HTMLEscapeMap("Xi", "Ξ"),
    HTMLEscapeMap("Pi", "Π"),
    HTMLEscapeMap("mu", "μ"),
    HTMLEscapeMap("nu", "ν"),
    HTMLEscapeMap("xi", "ξ"),
    HTMLEscapeMap("pi", "π"),
    HTMLEscapeMap("ni", "∋"),
    HTMLEscapeMap("or", "∨"),
    HTMLEscapeMap("ne", "≠"),
    HTMLEscapeMap("le", "≤"),
    HTMLEscapeMap("ge", "≥"),
]

let unicodeHTMLEscapeMapNameLength_3: [HTMLEscapeMap] = [
    HTMLEscapeMap("amp", "&"),
    HTMLEscapeMap("yen", "¥"),
    HTMLEscapeMap("uml", "¨"),
    HTMLEscapeMap("not", "¬"),
    HTMLEscapeMap("shy", "­"),
    HTMLEscapeMap("reg", "®"),
    HTMLEscapeMap("deg", "°"),
    HTMLEscapeMap("ETH", "Ð"),
    HTMLEscapeMap("eth", "ð"),
    HTMLEscapeMap("zwj", "‍"),
    HTMLEscapeMap("lrm", "‎"),
    HTMLEscapeMap("rlm", "‏"),
    HTMLEscapeMap("Eta", "Η"),
    HTMLEscapeMap("Rho", "Ρ"),
    HTMLEscapeMap("Tau", "Τ"),
    HTMLEscapeMap("Phi", "Φ"),
    HTMLEscapeMap("Chi", "Χ"),
    HTMLEscapeMap("Psi", "Ψ"),
    HTMLEscapeMap("eta", "η"),
    HTMLEscapeMap("rho", "ρ"),
    HTMLEscapeMap("tau", "τ"),
    HTMLEscapeMap("phi", "φ"),
    HTMLEscapeMap("chi", "χ"),
    HTMLEscapeMap("psi", "ψ"),
    HTMLEscapeMap("piv", "ϖ"),
    HTMLEscapeMap("sum", "∑"),
    HTMLEscapeMap("ang", "∠"),
    HTMLEscapeMap("and", "∧"),
    HTMLEscapeMap("cap", "∩"),
    HTMLEscapeMap("cup", "∪"),
    HTMLEscapeMap("int", "∫"),
    HTMLEscapeMap("sim", "∼"),
    HTMLEscapeMap("sub", "⊂"),
    HTMLEscapeMap("sup", "⊃"),
    HTMLEscapeMap("loz", "◊"),
]

let unicodeHTMLEscapeMapNameLength_4: [HTMLEscapeMap] = [
    HTMLEscapeMap("nbsp", " "),
    HTMLEscapeMap("cent", "¢"),
    HTMLEscapeMap("sect", "§"),
    HTMLEscapeMap("copy", "©"),
    HTMLEscapeMap("ordf", "ª"),
    HTMLEscapeMap("macr", "¯"),
    HTMLEscapeMap("sup2", "²"),
    HTMLEscapeMap("sup3", "³"),
    HTMLEscapeMap("para", "¶"),
    HTMLEscapeMap("sup1", "¹"),
    HTMLEscapeMap("ordm", "º"),
    HTMLEscapeMap("Auml", "Ä"),
    HTMLEscapeMap("Euml", "Ë"),
    HTMLEscapeMap("Iuml", "Ï"),
    HTMLEscapeMap("Ouml", "Ö"),
    HTMLEscapeMap("Uuml", "Ü"),
    HTMLEscapeMap("auml", "ä"),
    HTMLEscapeMap("euml", "ë"),
    HTMLEscapeMap("iuml", "ï"),
    HTMLEscapeMap("ouml", "ö"),
    HTMLEscapeMap("uuml", "ü"),
    HTMLEscapeMap("yuml", "ÿ"),
    HTMLEscapeMap("quot", "\""),
    HTMLEscapeMap("apos", "'"),
    HTMLEscapeMap("Yuml", "Ÿ"),
    HTMLEscapeMap("circ", "ˆ"),
    HTMLEscapeMap("ensp", " "),
    HTMLEscapeMap("emsp", " "),
    HTMLEscapeMap("zwnj", "‌"),
    HTMLEscapeMap("euro", "€"),
    HTMLEscapeMap("fnof", "ƒ"),
    HTMLEscapeMap("Beta", "Β"),
    HTMLEscapeMap("Zeta", "Ζ"),
    HTMLEscapeMap("Iota", "Ι"),
    HTMLEscapeMap("beta", "β"),
    HTMLEscapeMap("zeta", "ζ"),
    HTMLEscapeMap("iota", "ι"),
    HTMLEscapeMap("bull", "•"),
    HTMLEscapeMap("real", "ℜ"),
    HTMLEscapeMap("larr", "←"),
    HTMLEscapeMap("uarr", "↑"),
    HTMLEscapeMap("darr", "↓"),
    HTMLEscapeMap("harr", "↔"),
    HTMLEscapeMap("lArr", "⇐"),
    HTMLEscapeMap("uArr", "⇑"),
    HTMLEscapeMap("rArr", "⇒"),
    HTMLEscapeMap("dArr", "⇓"),
    HTMLEscapeMap("hArr", "⇔"),
    HTMLEscapeMap("part", "∂"),
    HTMLEscapeMap("isin", "∈"),
    HTMLEscapeMap("prod", "∏"),
    HTMLEscapeMap("prop", "∝"),
    HTMLEscapeMap("cong", "≅"),
    HTMLEscapeMap("nsub", "⊄"),
    HTMLEscapeMap("sube", "⊆"),
    HTMLEscapeMap("supe", "⊇"),
    HTMLEscapeMap("perp", "⊥"),
    HTMLEscapeMap("sdot", "⋅"),
    HTMLEscapeMap("lang", "〈"),
    HTMLEscapeMap("rang", "〉"),
    HTMLEscapeMap("rarr", "→"),
]

let unicodeHTMLEscapeMapNameLength_5: [HTMLEscapeMap] = [
    HTMLEscapeMap("iexcl", "¡"),
    HTMLEscapeMap("pound", "£"),
    HTMLEscapeMap("laquo", "«"),
    HTMLEscapeMap("acute", "´"),
    HTMLEscapeMap("micro", "µ"),
    HTMLEscapeMap("cedil", "¸"),
    HTMLEscapeMap("raquo", "»"),
    HTMLEscapeMap("Acirc", "Â"),
    HTMLEscapeMap("Aring", "Å"),
    HTMLEscapeMap("AElig", "Æ"),
    HTMLEscapeMap("Ecirc", "Ê"),
    HTMLEscapeMap("Icirc", "Î"),
    HTMLEscapeMap("Ocirc", "Ô"),
    HTMLEscapeMap("times", "×"),
    HTMLEscapeMap("Ucirc", "Û"),
    HTMLEscapeMap("THORN", "Þ"),
    HTMLEscapeMap("szlig", "ß"),
    HTMLEscapeMap("acirc", "â"),
    HTMLEscapeMap("aring", "å"),
    HTMLEscapeMap("aelig", "æ"),
    HTMLEscapeMap("ecirc", "ê"),
    HTMLEscapeMap("icirc", "î"),
    HTMLEscapeMap("ocirc", "ô"),
    HTMLEscapeMap("ucirc", "û"),
    HTMLEscapeMap("thorn", "þ"),
    HTMLEscapeMap("OElig", "Œ"),
    HTMLEscapeMap("oelig", "œ"),
    HTMLEscapeMap("tilde", "˜"),
    HTMLEscapeMap("ndash", "–"),
    HTMLEscapeMap("mdash", "—"),
    HTMLEscapeMap("lsquo", "‘"),
    HTMLEscapeMap("rsquo", "’"),
    HTMLEscapeMap("sbquo", "‚"),
    HTMLEscapeMap("ldquo", "“"),
    HTMLEscapeMap("rdquo", "”"),
    HTMLEscapeMap("bdquo", "„"),
    HTMLEscapeMap("Alpha", "Α"),
    HTMLEscapeMap("Gamma", "Γ"),
    HTMLEscapeMap("Delta", "Δ"),
    HTMLEscapeMap("Theta", "Θ"),
    HTMLEscapeMap("Kappa", "Κ"),
    HTMLEscapeMap("Sigma", "Σ"),
    HTMLEscapeMap("Omega", "Ω"),
    HTMLEscapeMap("alpha", "α"),
    HTMLEscapeMap("gamma", "γ"),
    HTMLEscapeMap("delta", "δ"),
    HTMLEscapeMap("theta", "θ"),
    HTMLEscapeMap("kappa", "κ"),
    HTMLEscapeMap("sigma", "σ"),
    HTMLEscapeMap("omega", "ω"),
    HTMLEscapeMap("upsih", "ϒ"),
    HTMLEscapeMap("prime", "′"),
    HTMLEscapeMap("Prime", "″"),
    HTMLEscapeMap("oline", "‾"),
    HTMLEscapeMap("frasl", "⁄"),
    HTMLEscapeMap("image", "ℑ"),
    HTMLEscapeMap("trade", "™"),
    HTMLEscapeMap("crarr", "↵"),
    HTMLEscapeMap("exist", "∃"),
    HTMLEscapeMap("empty", "∅"),
    HTMLEscapeMap("nabla", "∇"),
    HTMLEscapeMap("notin", "∉"),
    HTMLEscapeMap("minus", "−"),
    HTMLEscapeMap("radic", "√"),
    HTMLEscapeMap("infin", "∞"),
    HTMLEscapeMap("asymp", "≈"),
    HTMLEscapeMap("equiv", "≡"),
    HTMLEscapeMap("oplus", "⊕"),
    HTMLEscapeMap("lceil", "⌈"),
    HTMLEscapeMap("rceil", "⌉"),
    HTMLEscapeMap("clubs", "♣"),
    HTMLEscapeMap("diams", "♦"),
]

let unicodeHTMLEscapeMapNameLength_6: [HTMLEscapeMap] = [
    HTMLEscapeMap("curren", "¤"),
    HTMLEscapeMap("brvbar", "¦"),
    HTMLEscapeMap("plusmn", "±"),
    HTMLEscapeMap("middot", "·"),
    HTMLEscapeMap("frac14", "¼"),
    HTMLEscapeMap("frac12", "½"),
    HTMLEscapeMap("frac34", "¾"),
    HTMLEscapeMap("iquest", "¿"),
    HTMLEscapeMap("Agrave", "À"),
    HTMLEscapeMap("Aacute", "Á"),
    HTMLEscapeMap("Atilde", "Ã"),
    HTMLEscapeMap("Ccedil", "Ç"),
    HTMLEscapeMap("Egrave", "È"),
    HTMLEscapeMap("Eacute", "É"),
    HTMLEscapeMap("Igrave", "Ì"),
    HTMLEscapeMap("Iacute", "Í"),
    HTMLEscapeMap("Ntilde", "Ñ"),
    HTMLEscapeMap("Ograve", "Ò"),
    HTMLEscapeMap("Oacute", "Ó"),
    HTMLEscapeMap("Otilde", "Õ"),
    HTMLEscapeMap("Oslash", "Ø"),
    HTMLEscapeMap("Ugrave", "Ù"),
    HTMLEscapeMap("Uacute", "Ú"),
    HTMLEscapeMap("Yacute", "Ý"),
    HTMLEscapeMap("agrave", "à"),
    HTMLEscapeMap("aacute", "á"),
    HTMLEscapeMap("atilde", "ã"),
    HTMLEscapeMap("ccedil", "ç"),
    HTMLEscapeMap("egrave", "è"),
    HTMLEscapeMap("eacute", "é"),
    HTMLEscapeMap("igrave", "ì"),
    HTMLEscapeMap("iacute", "í"),
    HTMLEscapeMap("ntilde", "ñ"),
    HTMLEscapeMap("ograve", "ò"),
    HTMLEscapeMap("oacute", "ó"),
    HTMLEscapeMap("otilde", "õ"),
    HTMLEscapeMap("divide", "÷"),
    HTMLEscapeMap("oslash", "ø"),
    HTMLEscapeMap("ugrave", "ù"),
    HTMLEscapeMap("uacute", "ú"),
    HTMLEscapeMap("yacute", "ý"),
    HTMLEscapeMap("Scaron", "Š"),
    HTMLEscapeMap("scaron", "š"),
    HTMLEscapeMap("thinsp", " "),
    HTMLEscapeMap("dagger", "†"),
    HTMLEscapeMap("Dagger", "‡"),
    HTMLEscapeMap("permil", "‰"),
    HTMLEscapeMap("lsaquo", "‹"),
    HTMLEscapeMap("rsaquo", "›"),
    HTMLEscapeMap("Lambda", "Λ"),
    HTMLEscapeMap("lambda", "λ"),
    HTMLEscapeMap("sigmaf", "ς"),
    HTMLEscapeMap("hellip", "…"),
    HTMLEscapeMap("weierp", "℘"),
    HTMLEscapeMap("forall", "∀"),
    HTMLEscapeMap("lowast", "∗"),
    HTMLEscapeMap("there4", "∴"),
    HTMLEscapeMap("otimes", "⊗"),
    HTMLEscapeMap("lfloor", "⌊"),
    HTMLEscapeMap("rfloor", "⌋"),
    HTMLEscapeMap("spades", "♠"),
    HTMLEscapeMap("hearts", "♥"),
]

let unicodeHTMLEscapeMapNameLength_7: [HTMLEscapeMap] = [
    HTMLEscapeMap("Epsilon", "Ε"),
    HTMLEscapeMap("Omicron", "Ο"),
    HTMLEscapeMap("Upsilon", "Υ"),
    HTMLEscapeMap("epsilon", "ε"),
    HTMLEscapeMap("omicron", "ο"),
    HTMLEscapeMap("upsilon", "υ"),
    HTMLEscapeMap("alefsym", "ℵ"),
]

let unicodeHTMLEscapeMapNameLength_8: [HTMLEscapeMap] = [
    HTMLEscapeMap("thetasym", "ϑ"),
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

extension String {
    public var unescapeHTML_dev: String {
        var unescapingString = self
        
        let startIndex = unescapingString.startIndex
        var terminal = unescapingString.characters.count
        
        let buffer = UnsafeMutablePointer<unichar>.allocate(capacity: 1)
        repeat {
            //            print(terminal)
            //            print((unescapingString as NSString).substring(with: NSMakeRange(0, terminal)))
            let rangeOfAmpObjC = (unescapingString as NSString).range(of: "&", options: .backwards, range: NSMakeRange(0, terminal))
            if rangeOfAmpObjC.location == NSNotFound {
                break
            }
            //            print((unescapingString as NSString).substring(with: NSMakeRange(rangeOfAmpObjC.location, terminal - rangeOfAmpObjC.location)))
            let rangeOfSemicollonObjC = (unescapingString as NSString).range(of: ";", options: [], range: NSMakeRange(rangeOfAmpObjC.location, terminal - rangeOfAmpObjC.location))
            if rangeOfSemicollonObjC.location == NSNotFound {
                terminal = rangeOfAmpObjC.location - 1
                continue
            }
            //            guard let rangeOfAmp = unescapingString.range(of: "&", options: .backwards, range: startIndex..<endIndex, locale: nil) else { break }
            //            guard let rangeOfSemicollon = unescapingString.range(of: ";", options: [], range: rangeOfAmp.lowerBound..<endIndex, locale: nil) else {
            //                endIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: -1)
            //                continue
            //            }
            
            let rangeOfAmp = unescapingString.index(startIndex, offsetBy: rangeOfAmpObjC.location)..<unescapingString.index(startIndex, offsetBy: rangeOfAmpObjC.location+1)
            let rangeOfSemicollon = unescapingString.index(startIndex, offsetBy: rangeOfSemicollonObjC.location)..<unescapingString.index(startIndex, offsetBy: rangeOfSemicollonObjC.location+1)
            
            let prefixChar1 = unescapingString.substring(with: rangeOfAmp.lowerBound..<unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 2))
            
            if prefixChar1 == "&#" {
                let prefixChar2 = unescapingString.substring(with: rangeOfAmp.lowerBound..<unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 3))
                if prefixChar2 == "&#x" || prefixChar2 == "&#X" {
                    let startIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 3)
                    let endIndex = unescapingString.index(rangeOfSemicollon.lowerBound, offsetBy: 0)
                    let hexString = unescapingString.substring(with: startIndex..<endIndex)
                    if let charCode = UInt16(hexString, radix: 16) {
                        let buffer = UnsafeMutablePointer<unichar>.allocate(capacity: 1)
                        buffer.pointee = charCode
                        if let c = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size * 1, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
                            unescapingString.replaceSubrange(rangeOfAmp.lowerBound..<rangeOfSemicollon.upperBound, with: c)
                        }
                    }
                } else {
                    let startIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 2)
                    let endIndex = unescapingString.index(rangeOfSemicollon.lowerBound, offsetBy: 0)
                    let decimalString = unescapingString.substring(with: startIndex..<endIndex)
                    if let charCode = UInt16(decimalString) {
                        buffer.pointee = charCode
                        if let c = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size * 1, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
                            unescapingString.replaceSubrange(rangeOfAmp.lowerBound..<rangeOfSemicollon.upperBound, with: c)
                        }
                    }
                }
            } else {
                let startIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 1)
                let endIndex = unescapingString.index(rangeOfSemicollon.lowerBound, offsetBy: 0)
                let name = unescapingString.substring(with: startIndex..<endIndex)
                if let table = getTable(length: name.characters.count) {
                    if let index = table.index(where: {$0.name == name}) {
                        unescapingString.replaceSubrange(rangeOfAmp.lowerBound..<rangeOfSemicollon.upperBound, with: table[index].character)
                    }
                }
            }
            terminal = rangeOfAmpObjC.location
            if terminal <= 0 {
                break
            }
            //            endIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: -1)
        } while true
        buffer.deallocate(capacity: 1)
        return unescapingString
    }
    
    public var unescapeHTML: String {
        var unescapingString = self
        
        let startIndex = unescapingString.startIndex
        var endIndex = unescapingString.endIndex
        
        let buffer = UnsafeMutablePointer<unichar>.allocate(capacity: 1)
        repeat {
            guard let rangeOfAmp = unescapingString.range(of: "&", options: .backwards, range: startIndex..<endIndex, locale: nil) else { break }
            guard let rangeOfSemicollon = unescapingString.range(of: ";", options: [], range: rangeOfAmp.lowerBound..<endIndex, locale: nil) else {
                endIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 0)
                continue
            }
            
            let prefixChar1 = unescapingString.substring(with: rangeOfAmp.lowerBound..<unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 2))
            
            if prefixChar1 == "&#" {
                let prefixChar2 = unescapingString.substring(with: rangeOfAmp.lowerBound..<unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 3))
                if prefixChar2 == "&#x" || prefixChar2 == "&#X" {
                    let startIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 3)
                    let endIndex = unescapingString.index(rangeOfSemicollon.lowerBound, offsetBy: 0)
                    let hexString = unescapingString.substring(with: startIndex..<endIndex)
                    if let charCode = UInt16(hexString, radix: 16) {
                        let buffer = UnsafeMutablePointer<unichar>.allocate(capacity: 1)
                        buffer.pointee = charCode
                        if let c = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size * 1, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
                            unescapingString.replaceSubrange(rangeOfAmp.lowerBound..<rangeOfSemicollon.upperBound, with: c)
                        }
                    }
                } else {
                    let startIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 2)
                    let endIndex = unescapingString.index(rangeOfSemicollon.lowerBound, offsetBy: 0)
                    let decimalString = unescapingString.substring(with: startIndex..<endIndex)
                    if let charCode = UInt16(decimalString) {
                        buffer.pointee = charCode
                        if let c = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size * 1, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
                            unescapingString.replaceSubrange(rangeOfAmp.lowerBound..<rangeOfSemicollon.upperBound, with: c)
                        }
                    }
                }
            } else {
                let startIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 1)
                let endIndex = unescapingString.index(rangeOfSemicollon.lowerBound, offsetBy: 0)
                let name = unescapingString.substring(with: startIndex..<endIndex)
                if let table = getTable(length: name.characters.count) {
                    if let index = table.index(where: {$0.name == name}) {
                        unescapingString.replaceSubrange(rangeOfAmp.lowerBound..<rangeOfSemicollon.upperBound, with: table[index].character)
                    }
                }
            }
            endIndex = unescapingString.index(rangeOfAmp.lowerBound, offsetBy: 0)
        } while true
        buffer.deallocate(capacity: 1)
        return unescapingString
    }
    
    public var unescapeHTMLLikeObjC: String {
        var finalString: NSMutableString = NSMutableString(string: self)
        var range = finalString.range(of: "&", options: .backwards)
        var terminal = finalString.length
        
        while range.length > 0 {
            let r = finalString.range(of: ";", options: [], range: NSMakeRange(range.location, terminal - range.location))
            if r.location == NSNotFound {
                range = finalString.range(of: "&", options: .backwards, range:NSMakeRange(0, range.location))
                if range.location == NSNotFound { break }
                continue
            }
            let location = range.location
            let length = r.location - range.location
            let char1 = finalString.character(at: location + 1)
            let buffer = UnsafeMutablePointer<unichar>.allocate(capacity: 1)
            defer { buffer.deallocate(capacity: length) }
            if char1 == 35 {
                let char2 = finalString.character(at: location + 2)
                if char2 == 120 || char2 == 88 {
                    let hexString = finalString.substring(with: NSMakeRange(location + 3, r.location - range.location - 3))
                    if let hex = UInt16(hexString, radix: 16) {
                        buffer.pointee = hex
                        if let c = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size * 1, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
                            finalString.replaceCharacters(in: NSMakeRange(location, length + 1), with: c)
                        }
                    }
                } else {
                    let decimalString = finalString.substring(with: NSMakeRange(location + 2, r.location - range.location - 2))
                    if let hex = UInt16(decimalString) {
                        buffer.pointee = hex
                        if let c = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size * 1, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
                            finalString.replaceCharacters(in: NSMakeRange(location, length + 1), with: c)
                        }
                    }
                }
            } else {
                let name = finalString.substring(with: NSMakeRange(location + 1, r.location - range.location - 1))
                if let table = getTable(length: name.characters.count) {
                    if let index = table.index(where: {$0.name == name}) {
                        finalString.replaceCharacters(in: NSMakeRange(location, length + 1), with: table[index].character)
                    }
                }
            }
            terminal = location
            range = finalString.range(of: "&", options: .backwards, range:NSMakeRange(0, location))
            if range.location == NSNotFound { break }
        }
        return finalString as String
    }
}
