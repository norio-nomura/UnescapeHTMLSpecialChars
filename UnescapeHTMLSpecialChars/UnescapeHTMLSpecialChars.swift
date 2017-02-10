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
    let nameUnicodes: [unichar]
    let code: unichar
    let character: String
    init(_ s: String, _ c: unichar, _ ch: String, _ n: [unichar]) {
        name = s
        code = c
        nameUnicodes = n
        character = ch
    }
}

let unicodeHTMLEscapeMapNameLength_2: [HTMLEscapeMap] = [
    HTMLEscapeMap("gt", 62, ">", [103, 116]),
    HTMLEscapeMap("Mu", 924, "Μ", [77, 117]),
    HTMLEscapeMap("Nu", 925, "Ν", [78, 117]),
    HTMLEscapeMap("Xi", 926, "Ξ", [88, 105]),
    HTMLEscapeMap("Pi", 928, "Π", [80, 105]),
    HTMLEscapeMap("mu", 956, "μ", [109, 117]),
    HTMLEscapeMap("nu", 957, "ν", [110, 117]),
    HTMLEscapeMap("xi", 958, "ξ", [120, 105]),
    HTMLEscapeMap("pi", 960, "π", [112, 105]),
    HTMLEscapeMap("ni", 8715, "∋", [110, 105]),
    HTMLEscapeMap("or", 8744, "∨", [111, 114]),
    HTMLEscapeMap("ne", 8800, "≠", [110, 101]),
    HTMLEscapeMap("le", 8804, "≤", [108, 101]),
    HTMLEscapeMap("ge", 8805, "≥", [103, 101]),
    HTMLEscapeMap("lt", 60, "<", [108, 116]),
]

let unicodeHTMLEscapeMapNameLength_3: [HTMLEscapeMap] = [
    HTMLEscapeMap("yen", 165, "¥", [121, 101, 110]),
    HTMLEscapeMap("uml", 168, "¨", [117, 109, 108]),
    HTMLEscapeMap("not", 172, "¬", [110, 111, 116]),
    HTMLEscapeMap("shy", 173, "­", [115, 104, 121]),
    HTMLEscapeMap("reg", 174, "®", [114, 101, 103]),
    HTMLEscapeMap("deg", 176, "°", [100, 101, 103]),
    HTMLEscapeMap("ETH", 208, "Ð", [69, 84, 72]),
    HTMLEscapeMap("eth", 240, "ð", [101, 116, 104]),
    HTMLEscapeMap("zwj", 8205, "‍", [122, 119, 106]),
    HTMLEscapeMap("lrm", 8206, "‎", [108, 114, 109]),
    HTMLEscapeMap("rlm", 8207, "‏", [114, 108, 109]),
    HTMLEscapeMap("Eta", 919, "Η", [69, 116, 97]),
    HTMLEscapeMap("Rho", 929, "Ρ", [82, 104, 111]),
    HTMLEscapeMap("Tau", 932, "Τ", [84, 97, 117]),
    HTMLEscapeMap("Phi", 934, "Φ", [80, 104, 105]),
    HTMLEscapeMap("Chi", 935, "Χ", [67, 104, 105]),
    HTMLEscapeMap("Psi", 936, "Ψ", [80, 115, 105]),
    HTMLEscapeMap("eta", 951, "η", [101, 116, 97]),
    HTMLEscapeMap("rho", 961, "ρ", [114, 104, 111]),
    HTMLEscapeMap("tau", 964, "τ", [116, 97, 117]),
    HTMLEscapeMap("phi", 966, "φ", [112, 104, 105]),
    HTMLEscapeMap("chi", 967, "χ", [99, 104, 105]),
    HTMLEscapeMap("psi", 968, "ψ", [112, 115, 105]),
    HTMLEscapeMap("piv", 982, "ϖ", [112, 105, 118]),
    HTMLEscapeMap("sum", 8721, "∑", [115, 117, 109]),
    HTMLEscapeMap("ang", 8736, "∠", [97, 110, 103]),
    HTMLEscapeMap("and", 8743, "∧", [97, 110, 100]),
    HTMLEscapeMap("cap", 8745, "∩", [99, 97, 112]),
    HTMLEscapeMap("cup", 8746, "∪", [99, 117, 112]),
    HTMLEscapeMap("int", 8747, "∫", [105, 110, 116]),
    HTMLEscapeMap("sim", 8764, "∼", [115, 105, 109]),
    HTMLEscapeMap("sub", 8834, "⊂", [115, 117, 98]),
    HTMLEscapeMap("sup", 8835, "⊃", [115, 117, 112]),
    HTMLEscapeMap("loz", 9674, "◊", [108, 111, 122]),
    HTMLEscapeMap("amp", 38, "&", [97, 109, 112]),
]

let unicodeHTMLEscapeMapNameLength_4: [HTMLEscapeMap] = [
    HTMLEscapeMap("nbsp", 160, " ", [110, 98, 115, 112]),
    HTMLEscapeMap("cent", 162, "¢", [99, 101, 110, 116]),
    HTMLEscapeMap("sect", 167, "§", [115, 101, 99, 116]),
    HTMLEscapeMap("copy", 169, "©", [99, 111, 112, 121]),
    HTMLEscapeMap("ordf", 170, "ª", [111, 114, 100, 102]),
    HTMLEscapeMap("macr", 175, "¯", [109, 97, 99, 114]),
    HTMLEscapeMap("sup2", 178, "²", [115, 117, 112, 50]),
    HTMLEscapeMap("sup3", 179, "³", [115, 117, 112, 51]),
    HTMLEscapeMap("para", 182, "¶", [112, 97, 114, 97]),
    HTMLEscapeMap("sup1", 185, "¹", [115, 117, 112, 49]),
    HTMLEscapeMap("ordm", 186, "º", [111, 114, 100, 109]),
    HTMLEscapeMap("Auml", 196, "Ä", [65, 117, 109, 108]),
    HTMLEscapeMap("Euml", 203, "Ë", [69, 117, 109, 108]),
    HTMLEscapeMap("Iuml", 207, "Ï", [73, 117, 109, 108]),
    HTMLEscapeMap("Ouml", 214, "Ö", [79, 117, 109, 108]),
    HTMLEscapeMap("Uuml", 220, "Ü", [85, 117, 109, 108]),
    HTMLEscapeMap("auml", 228, "ä", [97, 117, 109, 108]),
    HTMLEscapeMap("euml", 235, "ë", [101, 117, 109, 108]),
    HTMLEscapeMap("iuml", 239, "ï", [105, 117, 109, 108]),
    HTMLEscapeMap("ouml", 246, "ö", [111, 117, 109, 108]),
    HTMLEscapeMap("uuml", 252, "ü", [117, 117, 109, 108]),
    HTMLEscapeMap("yuml", 255, "ÿ", [121, 117, 109, 108]),
    HTMLEscapeMap("quot", 34, "\"", [113, 117, 111, 116]),
    HTMLEscapeMap("apos", 39, "'", [97, 112, 111, 115]),
    HTMLEscapeMap("Yuml", 376, "Ÿ", [89, 117, 109, 108]),
    HTMLEscapeMap("circ", 710, "ˆ", [99, 105, 114, 99]),
    HTMLEscapeMap("ensp", 8194, " ", [101, 110, 115, 112]),
    HTMLEscapeMap("emsp", 8195, " ", [101, 109, 115, 112]),
    HTMLEscapeMap("zwnj", 8204, "‌", [122, 119, 110, 106]),
    HTMLEscapeMap("euro", 8364, "€", [101, 117, 114, 111]),
    HTMLEscapeMap("fnof", 402, "ƒ", [102, 110, 111, 102]),
    HTMLEscapeMap("Beta", 914, "Β", [66, 101, 116, 97]),
    HTMLEscapeMap("Zeta", 918, "Ζ", [90, 101, 116, 97]),
    HTMLEscapeMap("Iota", 921, "Ι", [73, 111, 116, 97]),
    HTMLEscapeMap("beta", 946, "β", [98, 101, 116, 97]),
    HTMLEscapeMap("zeta", 950, "ζ", [122, 101, 116, 97]),
    HTMLEscapeMap("iota", 953, "ι", [105, 111, 116, 97]),
    HTMLEscapeMap("bull", 8226, "•", [98, 117, 108, 108]),
    HTMLEscapeMap("real", 8476, "ℜ", [114, 101, 97, 108]),
    HTMLEscapeMap("larr", 8592, "←", [108, 97, 114, 114]),
    HTMLEscapeMap("uarr", 8593, "↑", [117, 97, 114, 114]),
    HTMLEscapeMap("darr", 8595, "↓", [100, 97, 114, 114]),
    HTMLEscapeMap("harr", 8596, "↔", [104, 97, 114, 114]),
    HTMLEscapeMap("lArr", 8656, "⇐", [108, 65, 114, 114]),
    HTMLEscapeMap("uArr", 8657, "⇑", [117, 65, 114, 114]),
    HTMLEscapeMap("rArr", 8658, "⇒", [114, 65, 114, 114]),
    HTMLEscapeMap("dArr", 8659, "⇓", [100, 65, 114, 114]),
    HTMLEscapeMap("hArr", 8660, "⇔", [104, 65, 114, 114]),
    HTMLEscapeMap("part", 8706, "∂", [112, 97, 114, 116]),
    HTMLEscapeMap("isin", 8712, "∈", [105, 115, 105, 110]),
    HTMLEscapeMap("prod", 8719, "∏", [112, 114, 111, 100]),
    HTMLEscapeMap("prop", 8733, "∝", [112, 114, 111, 112]),
    HTMLEscapeMap("cong", 8773, "≅", [99, 111, 110, 103]),
    HTMLEscapeMap("nsub", 8836, "⊄", [110, 115, 117, 98]),
    HTMLEscapeMap("sube", 8838, "⊆", [115, 117, 98, 101]),
    HTMLEscapeMap("supe", 8839, "⊇", [115, 117, 112, 101]),
    HTMLEscapeMap("perp", 8869, "⊥", [112, 101, 114, 112]),
    HTMLEscapeMap("sdot", 8901, "⋅", [115, 100, 111, 116]),
    HTMLEscapeMap("lang", 9001, "〈", [108, 97, 110, 103]),
    HTMLEscapeMap("rang", 9002, "〉", [114, 97, 110, 103]),
]

let unicodeHTMLEscapeMapNameLength_5: [HTMLEscapeMap] = [
    HTMLEscapeMap("iexcl", 161, "¡", [105, 101, 120, 99, 108]),
    HTMLEscapeMap("pound", 163, "£", [112, 111, 117, 110, 100]),
    HTMLEscapeMap("laquo", 171, "«", [108, 97, 113, 117, 111]),
    HTMLEscapeMap("acute", 180, "´", [97, 99, 117, 116, 101]),
    HTMLEscapeMap("micro", 181, "µ", [109, 105, 99, 114, 111]),
    HTMLEscapeMap("cedil", 184, "¸", [99, 101, 100, 105, 108]),
    HTMLEscapeMap("raquo", 187, "»", [114, 97, 113, 117, 111]),
    HTMLEscapeMap("Acirc", 194, "Â", [65, 99, 105, 114, 99]),
    HTMLEscapeMap("Aring", 197, "Å", [65, 114, 105, 110, 103]),
    HTMLEscapeMap("AElig", 198, "Æ", [65, 69, 108, 105, 103]),
    HTMLEscapeMap("Ecirc", 202, "Ê", [69, 99, 105, 114, 99]),
    HTMLEscapeMap("Icirc", 206, "Î", [73, 99, 105, 114, 99]),
    HTMLEscapeMap("Ocirc", 212, "Ô", [79, 99, 105, 114, 99]),
    HTMLEscapeMap("times", 215, "×", [116, 105, 109, 101, 115]),
    HTMLEscapeMap("Ucirc", 219, "Û", [85, 99, 105, 114, 99]),
    HTMLEscapeMap("THORN", 222, "Þ", [84, 72, 79, 82, 78]),
    HTMLEscapeMap("szlig", 223, "ß", [115, 122, 108, 105, 103]),
    HTMLEscapeMap("acirc", 226, "â", [97, 99, 105, 114, 99]),
    HTMLEscapeMap("aring", 229, "å", [97, 114, 105, 110, 103]),
    HTMLEscapeMap("aelig", 230, "æ", [97, 101, 108, 105, 103]),
    HTMLEscapeMap("ecirc", 234, "ê", [101, 99, 105, 114, 99]),
    HTMLEscapeMap("icirc", 238, "î", [105, 99, 105, 114, 99]),
    HTMLEscapeMap("ocirc", 244, "ô", [111, 99, 105, 114, 99]),
    HTMLEscapeMap("ucirc", 251, "û", [117, 99, 105, 114, 99]),
    HTMLEscapeMap("thorn", 254, "þ", [116, 104, 111, 114, 110]),
    HTMLEscapeMap("OElig", 338, "Œ", [79, 69, 108, 105, 103]),
    HTMLEscapeMap("oelig", 339, "œ", [111, 101, 108, 105, 103]),
    HTMLEscapeMap("tilde", 732, "˜", [116, 105, 108, 100, 101]),
    HTMLEscapeMap("ndash", 8211, "–", [110, 100, 97, 115, 104]),
    HTMLEscapeMap("mdash", 8212, "—", [109, 100, 97, 115, 104]),
    HTMLEscapeMap("lsquo", 8216, "‘", [108, 115, 113, 117, 111]),
    HTMLEscapeMap("rsquo", 8217, "’", [114, 115, 113, 117, 111]),
    HTMLEscapeMap("sbquo", 8218, "‚", [115, 98, 113, 117, 111]),
    HTMLEscapeMap("ldquo", 8220, "“", [108, 100, 113, 117, 111]),
    HTMLEscapeMap("rdquo", 8221, "”", [114, 100, 113, 117, 111]),
    HTMLEscapeMap("bdquo", 8222, "„", [98, 100, 113, 117, 111]),
    HTMLEscapeMap("Alpha", 913, "Α", [65, 108, 112, 104, 97]),
    HTMLEscapeMap("Gamma", 915, "Γ", [71, 97, 109, 109, 97]),
    HTMLEscapeMap("Delta", 916, "Δ", [68, 101, 108, 116, 97]),
    HTMLEscapeMap("Theta", 920, "Θ", [84, 104, 101, 116, 97]),
    HTMLEscapeMap("Kappa", 922, "Κ", [75, 97, 112, 112, 97]),
    HTMLEscapeMap("Sigma", 931, "Σ", [83, 105, 103, 109, 97]),
    HTMLEscapeMap("Omega", 937, "Ω", [79, 109, 101, 103, 97]),
    HTMLEscapeMap("alpha", 945, "α", [97, 108, 112, 104, 97]),
    HTMLEscapeMap("gamma", 947, "γ", [103, 97, 109, 109, 97]),
    HTMLEscapeMap("delta", 948, "δ", [100, 101, 108, 116, 97]),
    HTMLEscapeMap("theta", 952, "θ", [116, 104, 101, 116, 97]),
    HTMLEscapeMap("kappa", 954, "κ", [107, 97, 112, 112, 97]),
    HTMLEscapeMap("sigma", 963, "σ", [115, 105, 103, 109, 97]),
    HTMLEscapeMap("omega", 969, "ω", [111, 109, 101, 103, 97]),
    HTMLEscapeMap("upsih", 978, "ϒ", [117, 112, 115, 105, 104]),
    HTMLEscapeMap("prime", 8242, "′", [112, 114, 105, 109, 101]),
    HTMLEscapeMap("Prime", 8243, "″", [80, 114, 105, 109, 101]),
    HTMLEscapeMap("oline", 8254, "‾", [111, 108, 105, 110, 101]),
    HTMLEscapeMap("frasl", 8260, "⁄", [102, 114, 97, 115, 108]),
    HTMLEscapeMap("image", 8465, "ℑ", [105, 109, 97, 103, 101]),
    HTMLEscapeMap("trade", 8482, "™", [116, 114, 97, 100, 101]),
    HTMLEscapeMap("crarr", 8629, "↵", [99, 114, 97, 114, 114]),
    HTMLEscapeMap("exist", 8707, "∃", [101, 120, 105, 115, 116]),
    HTMLEscapeMap("empty", 8709, "∅", [101, 109, 112, 116, 121]),
    HTMLEscapeMap("nabla", 8711, "∇", [110, 97, 98, 108, 97]),
    HTMLEscapeMap("notin", 8713, "∉", [110, 111, 116, 105, 110]),
    HTMLEscapeMap("minus", 8722, "−", [109, 105, 110, 117, 115]),
    HTMLEscapeMap("radic", 8730, "√", [114, 97, 100, 105, 99]),
    HTMLEscapeMap("infin", 8734, "∞", [105, 110, 102, 105, 110]),
    HTMLEscapeMap("asymp", 8776, "≈", [97, 115, 121, 109, 112]),
    HTMLEscapeMap("equiv", 8801, "≡", [101, 113, 117, 105, 118]),
    HTMLEscapeMap("oplus", 8853, "⊕", [111, 112, 108, 117, 115]),
    HTMLEscapeMap("lceil", 8968, "⌈", [108, 99, 101, 105, 108]),
    HTMLEscapeMap("rceil", 8969, "⌉", [114, 99, 101, 105, 108]),
    HTMLEscapeMap("clubs", 9827, "♣", [99, 108, 117, 98, 115]),
    HTMLEscapeMap("diams", 9830, "♦", [100, 105, 97, 109, 115]),
]

let unicodeHTMLEscapeMapNameLength_6: [HTMLEscapeMap] = [
    HTMLEscapeMap("curren", 164, "¤", [99, 117, 114, 114, 101, 110]),
    HTMLEscapeMap("brvbar", 166, "¦", [98, 114, 118, 98, 97, 114]),
    HTMLEscapeMap("plusmn", 177, "±", [112, 108, 117, 115, 109, 110]),
    HTMLEscapeMap("middot", 183, "·", [109, 105, 100, 100, 111, 116]),
    HTMLEscapeMap("frac14", 188, "¼", [102, 114, 97, 99, 49, 52]),
    HTMLEscapeMap("frac12", 189, "½", [102, 114, 97, 99, 49, 50]),
    HTMLEscapeMap("frac34", 190, "¾", [102, 114, 97, 99, 51, 52]),
    HTMLEscapeMap("iquest", 191, "¿", [105, 113, 117, 101, 115, 116]),
    HTMLEscapeMap("Agrave", 192, "À", [65, 103, 114, 97, 118, 101]),
    HTMLEscapeMap("Aacute", 193, "Á", [65, 97, 99, 117, 116, 101]),
    HTMLEscapeMap("Atilde", 195, "Ã", [65, 116, 105, 108, 100, 101]),
    HTMLEscapeMap("Ccedil", 199, "Ç", [67, 99, 101, 100, 105, 108]),
    HTMLEscapeMap("Egrave", 200, "È", [69, 103, 114, 97, 118, 101]),
    HTMLEscapeMap("Eacute", 201, "É", [69, 97, 99, 117, 116, 101]),
    HTMLEscapeMap("Igrave", 204, "Ì", [73, 103, 114, 97, 118, 101]),
    HTMLEscapeMap("Iacute", 205, "Í", [73, 97, 99, 117, 116, 101]),
    HTMLEscapeMap("Ntilde", 209, "Ñ", [78, 116, 105, 108, 100, 101]),
    HTMLEscapeMap("Ograve", 210, "Ò", [79, 103, 114, 97, 118, 101]),
    HTMLEscapeMap("Oacute", 211, "Ó", [79, 97, 99, 117, 116, 101]),
    HTMLEscapeMap("Otilde", 213, "Õ", [79, 116, 105, 108, 100, 101]),
    HTMLEscapeMap("Oslash", 216, "Ø", [79, 115, 108, 97, 115, 104]),
    HTMLEscapeMap("Ugrave", 217, "Ù", [85, 103, 114, 97, 118, 101]),
    HTMLEscapeMap("Uacute", 218, "Ú", [85, 97, 99, 117, 116, 101]),
    HTMLEscapeMap("Yacute", 221, "Ý", [89, 97, 99, 117, 116, 101]),
    HTMLEscapeMap("agrave", 224, "à", [97, 103, 114, 97, 118, 101]),
    HTMLEscapeMap("aacute", 225, "á", [97, 97, 99, 117, 116, 101]),
    HTMLEscapeMap("atilde", 227, "ã", [97, 116, 105, 108, 100, 101]),
    HTMLEscapeMap("ccedil", 231, "ç", [99, 99, 101, 100, 105, 108]),
    HTMLEscapeMap("egrave", 232, "è", [101, 103, 114, 97, 118, 101]),
    HTMLEscapeMap("eacute", 233, "é", [101, 97, 99, 117, 116, 101]),
    HTMLEscapeMap("igrave", 236, "ì", [105, 103, 114, 97, 118, 101]),
    HTMLEscapeMap("iacute", 237, "í", [105, 97, 99, 117, 116, 101]),
    HTMLEscapeMap("ntilde", 241, "ñ", [110, 116, 105, 108, 100, 101]),
    HTMLEscapeMap("ograve", 242, "ò", [111, 103, 114, 97, 118, 101]),
    HTMLEscapeMap("oacute", 243, "ó", [111, 97, 99, 117, 116, 101]),
    HTMLEscapeMap("otilde", 245, "õ", [111, 116, 105, 108, 100, 101]),
    HTMLEscapeMap("divide", 247, "÷", [100, 105, 118, 105, 100, 101]),
    HTMLEscapeMap("oslash", 248, "ø", [111, 115, 108, 97, 115, 104]),
    HTMLEscapeMap("ugrave", 249, "ù", [117, 103, 114, 97, 118, 101]),
    HTMLEscapeMap("uacute", 250, "ú", [117, 97, 99, 117, 116, 101]),
    HTMLEscapeMap("yacute", 253, "ý", [121, 97, 99, 117, 116, 101]),
    HTMLEscapeMap("Scaron", 352, "Š", [83, 99, 97, 114, 111, 110]),
    HTMLEscapeMap("scaron", 353, "š", [115, 99, 97, 114, 111, 110]),
    HTMLEscapeMap("thinsp", 8201, " ", [116, 104, 105, 110, 115, 112]),
    HTMLEscapeMap("dagger", 8224, "†", [100, 97, 103, 103, 101, 114]),
    HTMLEscapeMap("Dagger", 8225, "‡", [68, 97, 103, 103, 101, 114]),
    HTMLEscapeMap("permil", 8240, "‰", [112, 101, 114, 109, 105, 108]),
    HTMLEscapeMap("lsaquo", 8249, "‹", [108, 115, 97, 113, 117, 111]),
    HTMLEscapeMap("rsaquo", 8250, "›", [114, 115, 97, 113, 117, 111]),
    HTMLEscapeMap("Lambda", 923, "Λ", [76, 97, 109, 98, 100, 97]),
    HTMLEscapeMap("lambda", 955, "λ", [108, 97, 109, 98, 100, 97]),
    HTMLEscapeMap("sigmaf", 962, "ς", [115, 105, 103, 109, 97, 102]),
    HTMLEscapeMap("hellip", 8230, "…", [104, 101, 108, 108, 105, 112]),
    HTMLEscapeMap("weierp", 8472, "℘", [119, 101, 105, 101, 114, 112]),
    HTMLEscapeMap("forall", 8704, "∀", [102, 111, 114, 97, 108, 108]),
    HTMLEscapeMap("lowast", 8727, "∗", [108, 111, 119, 97, 115, 116]),
    HTMLEscapeMap("there4", 8756, "∴", [116, 104, 101, 114, 101, 52]),
    HTMLEscapeMap("otimes", 8855, "⊗", [111, 116, 105, 109, 101, 115]),
    HTMLEscapeMap("lfloor", 8970, "⌊", [108, 102, 108, 111, 111, 114]),
    HTMLEscapeMap("rfloor", 8971, "⌋", [114, 102, 108, 111, 111, 114]),
    HTMLEscapeMap("spades", 9824, "♠", [115, 112, 97, 100, 101, 115]),
    HTMLEscapeMap("hearts", 9829, "♥", [104, 101, 97, 114, 116, 115]),
]

let unicodeHTMLEscapeMapNameLength_7: [HTMLEscapeMap] = [
    HTMLEscapeMap("Epsilon", 917, "Ε", [69, 112, 115, 105, 108, 111, 110]),
    HTMLEscapeMap("Omicron", 927, "Ο", [79, 109, 105, 99, 114, 111, 110]),
    HTMLEscapeMap("Upsilon", 933, "Υ", [85, 112, 115, 105, 108, 111, 110]),
    HTMLEscapeMap("epsilon", 949, "ε", [101, 112, 115, 105, 108, 111, 110]),
    HTMLEscapeMap("omicron", 959, "ο", [111, 109, 105, 99, 114, 111, 110]),
    HTMLEscapeMap("upsilon", 965, "υ", [117, 112, 115, 105, 108, 111, 110]),
    HTMLEscapeMap("alefsym", 8501, "ℵ", [97, 108, 101, 102, 115, 121, 109]),
]

let unicodeHTMLEscapeMapNameLength_8: [HTMLEscapeMap] = [
    HTMLEscapeMap("thetasym", 977, "ϑ", [116, 104, 101, 116, 97, 115, 121, 109]),
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
        var buffer = [unichar](repeating: 0, count: utf16.count)
        NSString(string: self).getCharacters(&buffer)
        
        var end = buffer.endIndex
        let ampersand = unichar(UInt8(ascii: "&"))
        let semicolon = unichar(UInt8(ascii: ";"))
        let sharp = unichar(UInt8(ascii: "#"))
        let hexPrefixes = ["X", "x"].map { unichar(UInt8(ascii: $0)) }
        
        let f = true
        
        while let begin = buffer.prefix(upTo: end).reversed().index(of: ampersand).map({ buffer.index(before: $0.base) }) {
            defer { end = begin }
            // if we don't find a semicolon in the range, we don't have a sequence
            guard let semicolonIndex = buffer[begin..<end].index(of: semicolon) else { continue }
            let range = begin...semicolonIndex
            // a squence must be longer than 3 (&lt;) and less than 11 (&thetasym;)
            guard 4...10 ~= range.count else { continue }
            let character: unichar?
            if buffer[begin + 1] == sharp {
                let char2 = buffer[begin + 2]
                if hexPrefixes.contains(char2) {
                    // Hex escape squences &#xa3;
                    if f {
//                        character = hexStream2UnicodeChars2(array: buffer[begin + 3..<semicolonIndex], length: (begin + 3..<semicolonIndex).count)
                        character = hexStream2UnicodeChars(utf16Storage: buffer[begin + 3..<semicolonIndex], length: (begin + 3..<semicolonIndex).count)
                    } else {
                        let hexString = String(utf16Storage: buffer[begin + 3..<semicolonIndex])
                        character = unichar(hexString, radix: 16)
                    }
                } else {
                    // Decimal Sequences &#123;
                    if f {
                        character = decimalStream2UnicodeChars(utf16Storage: buffer[begin + 2..<semicolonIndex])
                    } else {
                        let decimalString = String(utf16Storage: buffer[begin + 2..<semicolonIndex])
                        character = unichar(decimalString)
                    }
                }
            } else {
                // "standard" sequences
                let escapedNameRange = begin + 1..<semicolonIndex
                if f {
                    character = matchUnicodeChars(utf16Storage: buffer[escapedNameRange])
                } else {
                    let escapedName = String(utf16Storage: buffer[escapedNameRange])
                    character = tableMap[escapedNameRange.count]?[escapedName]
                }
            }
            if let character = character {
                buffer[range] = [character]
            }
        }
        
        return String(utf16Storage: buffer)
    }
    
    private init<T>(utf16Storage: T) where T: ContiguousStorage, T.Iterator.Element == unichar {
        self = utf16Storage.withUnsafeBufferPointer {
            String(utf16CodeUnits: $0.baseAddress!, count: $0.count)
        }
    }
}

private protocol ContiguousStorage: Sequence {
    func withUnsafeBufferPointer<R>(_ body: (UnsafeBufferPointer<Iterator.Element>) throws -> R) rethrows -> R
}

extension Array: ContiguousStorage {}
extension ArraySlice: ContiguousStorage {}
extension ContiguousArray: ContiguousStorage {}

private func hexStream2UnicodeChars2(array: [unichar], length: Int) -> unichar? {
    return nil
}

private func hexStream2UnicodeChars<T>(utf16Storage: T, length: Int) -> unichar? where T: ContiguousStorage, T.Iterator.Element == unichar {
    return utf16Storage.withUnsafeBufferPointer {
        let unichars = $0.baseAddress!
        var u = UInt16(0)
        if $0.count > 4 { return nil }
        let basis: [UInt16] = [4096, 256, 16, 1]
        for j in 0..<$0.count {
            if (48...57) ~= unichars[j] {
                let v = basis[(4 - $0.count + j)] * (unichars[j] - 48)
                u = u + v
            } else if (65...70) ~= unichars[j] {
                let v = basis[(4 - $0.count + j)] * (unichars[j] - 65 + 10)
                u = u + v
            } else if (97...102) ~= unichars[j] {
                let v = basis[(4 - $0.count + j)] * (unichars[j] - 97 + 10)
                u = u + v
            } else {
                return nil
            }
        }
        return u
    }
}

private func decimalStream2UnicodeChars<T>(utf16Storage: T) -> unichar? where T: ContiguousStorage, T.Iterator.Element == unichar {
    return utf16Storage.withUnsafeBufferPointer {
        let unichars = $0.baseAddress!
        var u = UInt16(0)
        if $0.count > 5 { return nil }
        let basis: [UInt16] = [10000, 1000, 100, 10, 1]
        for j in 0..<$0.count {
            if (48...57) ~= unichars[j] {
                let v = basis[(4 - $0.count + j)] * (unichars[j] - 48)
                u = u + v
            } else {
                return nil
            }
        }
        return u
    }
}

private func matchUnicodeChars<T>(utf16Storage: T) -> unichar? where T: ContiguousStorage, T.Iterator.Element == unichar {
    return utf16Storage.withUnsafeBufferPointer {
        let unichars = $0.baseAddress!
        if let t = getTable(length: $0.count) {
            for i in 0..<t.count {
                var match = true
                for j in 0..<$0.count {
                    if t[i].nameUnicodes[j] == unichars[j] {
                    } else {
                        match = false
                        break
                    }
                }
                if match {
                    return t[i].code
                }
            }
        }
        return nil
    }
}

private func escapeMap(from array: [HTMLEscapeMap]) -> [String:unichar] {
    var map = [String: unichar](minimumCapacity: array.count)
    array.forEach {
        map[$0.name] = $0.character.utf16.first!
    }
    return map
}

private let tableMap: [Int:[String:unichar]] = [
    2: escapeMap(from:unicodeHTMLEscapeMapNameLength_2),
    3: escapeMap(from:unicodeHTMLEscapeMapNameLength_3),
    4: escapeMap(from:unicodeHTMLEscapeMapNameLength_4),
    5: escapeMap(from:unicodeHTMLEscapeMapNameLength_5),
    6: escapeMap(from:unicodeHTMLEscapeMapNameLength_6),
    7: escapeMap(from:unicodeHTMLEscapeMapNameLength_7),
    8: escapeMap(from:unicodeHTMLEscapeMapNameLength_8),
]

extension String {
    public var unescapeHTML_: String {
        var length = self.characters.count
        let buffer = UnsafeMutablePointer<unichar>.allocate(capacity: length)
        defer { buffer.deallocate(capacity: length) }
        let temp = UnsafeMutablePointer<unichar>.allocate(capacity: length)
        defer { temp.deallocate(capacity: length) }
        (self as NSString).getCharacters(buffer)
        
        var range = length

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
    }
}
