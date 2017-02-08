//
//  UnescapeHTMLSpecialChars.swift
//  UnescapeHTMLSpecialChars
//
//  Created by sonson on 2017/02/08.
//  Copyright © 2017年 sonson. All rights reserved.
//

import Foundation

struct HtmlCode {
    let name: String
    let character: String
    init(_ s: String, _ c: String) {
        name = s
        character = c
    }
}

let map2: [HtmlCode] = [
    HtmlCode("Mu", "Μ"),
    HtmlCode("Nu", "Ν"),
    HtmlCode("Xi", "Ξ"),
    HtmlCode("Pi", "Π"),
    HtmlCode("mu", "μ"),
    HtmlCode("nu", "ν"),
    HtmlCode("xi", "ξ"),
    HtmlCode("pi", "π"),
    HtmlCode("ni", "∋"),
    HtmlCode("or", "∨"),
    HtmlCode("ne", "≠"),
    HtmlCode("le", "≤"),
    HtmlCode("ge", "≥"),
    HtmlCode("lt", "<"),
    HtmlCode("gt", ">"),
]
let map4: [HtmlCode] = [
    HtmlCode("nbsp", " "),
    HtmlCode("cent", "¢"),
    HtmlCode("sect", "§"),
    HtmlCode("copy", "©"),
    HtmlCode("ordf", "ª"),
    HtmlCode("macr", "¯"),
    HtmlCode("sup2", "²"),
    HtmlCode("sup3", "³"),
    HtmlCode("para", "¶"),
    HtmlCode("sup1", "¹"),
    HtmlCode("ordm", "º"),
    HtmlCode("Auml", "Ä"),
    HtmlCode("Euml", "Ë"),
    HtmlCode("Iuml", "Ï"),
    HtmlCode("Ouml", "Ö"),
    HtmlCode("Uuml", "Ü"),
    HtmlCode("auml", "ä"),
    HtmlCode("euml", "ë"),
    HtmlCode("iuml", "ï"),
    HtmlCode("ouml", "ö"),
    HtmlCode("uuml", "ü"),
    HtmlCode("yuml", "ÿ"),
    HtmlCode("fnof", "ƒ"),
    HtmlCode("Beta", "Β"),
    HtmlCode("Zeta", "Ζ"),
    HtmlCode("Iota", "Ι"),
    HtmlCode("beta", "β"),
    HtmlCode("zeta", "ζ"),
    HtmlCode("iota", "ι"),
    HtmlCode("bull", "•"),
    HtmlCode("real", "ℜ"),
    HtmlCode("larr", "←"),
    HtmlCode("uarr", "↑"),
    HtmlCode("rarr", "→"),
    HtmlCode("darr", "↓"),
    HtmlCode("harr", "↔"),
    HtmlCode("lArr", "⇐"),
    HtmlCode("uArr", "⇑"),
    HtmlCode("rArr", "⇒"),
    HtmlCode("dArr", "⇓"),
    HtmlCode("hArr", "⇔"),
    HtmlCode("part", "∂"),
    HtmlCode("isin", "∈"),
    HtmlCode("prod", "∏"),
    HtmlCode("prop", "∝"),
    HtmlCode("cong", "≅"),
    HtmlCode("nsub", "⊄"),
    HtmlCode("sube", "⊆"),
    HtmlCode("supe", "⊇"),
    HtmlCode("perp", "⊥"),
    HtmlCode("sdot", "⋅"),
    HtmlCode("lang", "〈"),
    HtmlCode("rang", "〉"),
    HtmlCode("quot", "\""),
    HtmlCode("Yuml", "Ÿ"),
    HtmlCode("circ", "ˆ"),
    HtmlCode("ensp", " "),
    HtmlCode("emsp", " "),
    HtmlCode("zwnj", "‌"),
    HtmlCode("euro", "€"),
]
let map5: [HtmlCode] = [
    HtmlCode("iexcl", "¡"),
    HtmlCode("pound", "£"),
    HtmlCode("laquo", "«"),
    HtmlCode("acute", "´"),
    HtmlCode("micro", "µ"),
    HtmlCode("cedil", "¸"),
    HtmlCode("raquo", "»"),
    HtmlCode("Acirc", "Â"),
    HtmlCode("Aring", "Å"),
    HtmlCode("AElig", "Æ"),
    HtmlCode("Ecirc", "Ê"),
    HtmlCode("Icirc", "Î"),
    HtmlCode("Ocirc", "Ô"),
    HtmlCode("times", "×"),
    HtmlCode("Ucirc", "Û"),
    HtmlCode("THORN", "Þ"),
    HtmlCode("szlig", "ß"),
    HtmlCode("acirc", "â"),
    HtmlCode("aring", "å"),
    HtmlCode("aelig", "æ"),
    HtmlCode("ecirc", "ê"),
    HtmlCode("icirc", "î"),
    HtmlCode("ocirc", "ô"),
    HtmlCode("ucirc", "û"),
    HtmlCode("thorn", "þ"),
    HtmlCode("Alpha", "Α"),
    HtmlCode("Gamma", "Γ"),
    HtmlCode("Delta", "Δ"),
    HtmlCode("Theta", "Θ"),
    HtmlCode("Kappa", "Κ"),
    HtmlCode("Sigma", "Σ"),
    HtmlCode("Omega", "Ω"),
    HtmlCode("alpha", "α"),
    HtmlCode("gamma", "γ"),
    HtmlCode("delta", "δ"),
    HtmlCode("theta", "θ"),
    HtmlCode("kappa", "κ"),
    HtmlCode("sigma", "σ"),
    HtmlCode("omega", "ω"),
    HtmlCode("upsih", "ϒ"),
    HtmlCode("prime", "′"),
    HtmlCode("Prime", "″"),
    HtmlCode("oline", "‾"),
    HtmlCode("frasl", "⁄"),
    HtmlCode("image", "ℑ"),
    HtmlCode("trade", "™"),
    HtmlCode("crarr", "↵"),
    HtmlCode("exist", "∃"),
    HtmlCode("empty", "∅"),
    HtmlCode("nabla", "∇"),
    HtmlCode("notin", "∉"),
    HtmlCode("minus", "−"),
    HtmlCode("radic", "√"),
    HtmlCode("infin", "∞"),
    HtmlCode("asymp", "≈"),
    HtmlCode("equiv", "≡"),
    HtmlCode("oplus", "⊕"),
    HtmlCode("lceil", "⌈"),
    HtmlCode("rceil", "⌉"),
    HtmlCode("clubs", "♣"),
    HtmlCode("diams", "♦"),
    HtmlCode("OElig", "Œ"),
    HtmlCode("oelig", "œ"),
    HtmlCode("tilde", "˜"),
    HtmlCode("ndash", "–"),
    HtmlCode("mdash", "—"),
    HtmlCode("lsquo", "‘"),
    HtmlCode("rsquo", "’"),
    HtmlCode("sbquo", "‚"),
    HtmlCode("ldquo", "“"),
    HtmlCode("rdquo", "”"),
    HtmlCode("bdquo", "„"),
]
let map6: [HtmlCode] = [
    HtmlCode("curren", "¤"),
    HtmlCode("brvbar", "¦"),
    HtmlCode("plusmn", "±"),
    HtmlCode("middot", "·"),
    HtmlCode("frac14", "¼"),
    HtmlCode("frac12", "½"),
    HtmlCode("frac34", "¾"),
    HtmlCode("iquest", "¿"),
    HtmlCode("Agrave", "À"),
    HtmlCode("Aacute", "Á"),
    HtmlCode("Atilde", "Ã"),
    HtmlCode("Ccedil", "Ç"),
    HtmlCode("Egrave", "È"),
    HtmlCode("Eacute", "É"),
    HtmlCode("Igrave", "Ì"),
    HtmlCode("Iacute", "Í"),
    HtmlCode("Ntilde", "Ñ"),
    HtmlCode("Ograve", "Ò"),
    HtmlCode("Oacute", "Ó"),
    HtmlCode("Otilde", "Õ"),
    HtmlCode("Oslash", "Ø"),
    HtmlCode("Ugrave", "Ù"),
    HtmlCode("Uacute", "Ú"),
    HtmlCode("Yacute", "Ý"),
    HtmlCode("agrave", "à"),
    HtmlCode("aacute", "á"),
    HtmlCode("atilde", "ã"),
    HtmlCode("ccedil", "ç"),
    HtmlCode("egrave", "è"),
    HtmlCode("eacute", "é"),
    HtmlCode("igrave", "ì"),
    HtmlCode("iacute", "í"),
    HtmlCode("ntilde", "ñ"),
    HtmlCode("ograve", "ò"),
    HtmlCode("oacute", "ó"),
    HtmlCode("otilde", "õ"),
    HtmlCode("divide", "÷"),
    HtmlCode("oslash", "ø"),
    HtmlCode("ugrave", "ù"),
    HtmlCode("uacute", "ú"),
    HtmlCode("yacute", "ý"),
    HtmlCode("Lambda", "Λ"),
    HtmlCode("lambda", "λ"),
    HtmlCode("sigmaf", "ς"),
    HtmlCode("hellip", "…"),
    HtmlCode("weierp", "℘"),
    HtmlCode("forall", "∀"),
    HtmlCode("lowast", "∗"),
    HtmlCode("there4", "∴"),
    HtmlCode("otimes", "⊗"),
    HtmlCode("lfloor", "⌊"),
    HtmlCode("rfloor", "⌋"),
    HtmlCode("spades", "♠"),
    HtmlCode("hearts", "♥"),
    HtmlCode("Scaron", "Š"),
    HtmlCode("scaron", "š"),
    HtmlCode("thinsp", " "),
    HtmlCode("dagger", "†"),
    HtmlCode("Dagger", "‡"),
    HtmlCode("permil", "‰"),
    HtmlCode("lsaquo", "‹"),
    HtmlCode("rsaquo", "›"),
]
let map7: [HtmlCode] = [
    HtmlCode("Epsilon", "Ε"),
    HtmlCode("Omicron", "Ο"),
    HtmlCode("Upsilon", "Υ"),
    HtmlCode("epsilon", "ε"),
    HtmlCode("omicron", "ο"),
    HtmlCode("upsilon", "υ"),
    HtmlCode("alefsym", "ℵ"),
]
let map3: [HtmlCode] = [
    HtmlCode("yen", "¥"),
    HtmlCode("uml", "¨"),
    HtmlCode("not", "¬"),
    HtmlCode("shy", "­"),
    HtmlCode("reg", "®"),
    HtmlCode("deg", "°"),
    HtmlCode("ETH", "Ð"),
    HtmlCode("eth", "ð"),
    HtmlCode("Eta", "Η"),
    HtmlCode("Rho", "Ρ"),
    HtmlCode("Tau", "Τ"),
    HtmlCode("Phi", "Φ"),
    HtmlCode("Chi", "Χ"),
    HtmlCode("Psi", "Ψ"),
    HtmlCode("eta", "η"),
    HtmlCode("rho", "ρ"),
    HtmlCode("tau", "τ"),
    HtmlCode("phi", "φ"),
    HtmlCode("chi", "χ"),
    HtmlCode("psi", "ψ"),
    HtmlCode("piv", "ϖ"),
    HtmlCode("sum", "∑"),
    HtmlCode("ang", "∠"),
    HtmlCode("and", "∧"),
    HtmlCode("cap", "∩"),
    HtmlCode("cup", "∪"),
    HtmlCode("int", "∫"),
    HtmlCode("sim", "∼"),
    HtmlCode("sub", "⊂"),
    HtmlCode("sup", "⊃"),
    HtmlCode("loz", "◊"),
    HtmlCode("amp", "&"),
    HtmlCode("zwj", "‍"),
    HtmlCode("lrm", "‎"),
    HtmlCode("rlm", "‏"),
]
let map8: [HtmlCode] = [
    HtmlCode("thetasym", "ϑ"),
]

func getTable(length: Int) -> [HtmlCode]? {
    switch length {
    case 2:
        return map2
    case 3:
        return map3
    case 4:
        return map4
    case 5:
        return map5
    case 6:
        return map6
    case 7:
        return map7
    case 8:
        return map8
    default:
        return nil
    }
}

extension String {
    public func escapeHTML() -> String {
        var finalString: NSMutableString = NSMutableString(string: self)
        
        var range = finalString.range(of: "&", options: .backwards)
        
        var terminal = finalString.length
        
        while range.length > 0 {
            let r = finalString.range(of: ";", options: [], range: NSMakeRange(range.location, terminal - range.location))
            
            let location = range.location
            let length = r.location - range.location
            
            let char1 = finalString.character(at: location + 1)
            
            let buffer = UnsafeMutablePointer<unichar>.allocate(capacity: 1)
            defer { buffer.deallocate(capacity: length) }
            if char1 == 35 {
                let char2 = finalString.character(at: location + 2)
                if char2 == 120 {
                    let hexString = finalString.substring(with: NSMakeRange(location + 3, r.location - range.location - 3))
                    buffer.pointee = UInt16(hexString, radix: 16) ?? 0
                    if let c = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size * 1, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
                        finalString.replaceCharacters(in: NSMakeRange(location, length + 1), with: c)
                    }
                } else {
                    let decimalString = finalString.substring(with: NSMakeRange(location + 2, r.location - range.location - 2))
                    let hex = UInt16(decimalString) ?? 0
                    buffer.pointee = hex
                    if let c = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size * 1, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) {
                        finalString.replaceCharacters(in: NSMakeRange(location, length + 1), with: c)
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
            if range.location == NSNotFound {
                break
            }
        }
        return finalString as String
    }
}
