//
//  UnescapeHTMLSpecialCharsTests.swift
//  UnescapeHTMLSpecialCharsTests
//
//  Created by sonson on 2017/02/09.
//  Copyright © 2017年 sonson. All rights reserved.
//

import XCTest
@testable import UnescapeHTMLSpecialChars

class UnescapeHTMLSpecialCharsTests: XCTestCase {
    let testCount = 1000
    let testString2 = "hoge&copy;abcdef&#169;aaaa&#xa9;aa"
    let testString = "hoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahog"
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        print(testString.unescapeHTML)
        print(testString.gtm_stringByUnescapingFromHTML())
    }
    
    func testPerformanceOriginal() {
        self.measure {
            for _ in 0..<self.testCount {
                let _ = self.testString.unescapeHTML
            }
        }
    }
    
    func testPerformanceGoogle() {
        self.measure {
            for _ in 0..<self.testCount {
                let _ = self.testString.gtm_stringByUnescapingFromHTML()
            }
        }
    }
    
    func testImp() {
        print("&lt;this &amp; that&gt;&#65;&#x42;&#X43;".unescapeHTMLLikeObjC)
    }
    
    
    func testUnescaping() {
        let string = "&quot;&amp;&apos;&lt;&gt;&nbsp;&iexcl;&cent;&pound;&curren;&yen;"
        + "&brvbar;&sect;&uml;&copy;&ordf;&laquo;&not;&shy;&reg;&macr;&deg;"
        + "&plusmn;&sup2;&sup3;&acute;&micro;&para;&middot;&cedil;&sup1;"
        + "&ordm;&raquo;&frac14;&frac12;&frac34;&iquest;&Agrave;&Aacute;"
        + "&Acirc;&Atilde;&Auml;&Aring;&AElig;&Ccedil;&Egrave;&Eacute;"
        + "&Ecirc;&Euml;&Igrave;&Iacute;&Icirc;&Iuml;&ETH;&Ntilde;&Ograve;"
        + "&Oacute;&Ocirc;&Otilde;&Ouml;&times;&Oslash;&Ugrave;&Uacute;"
        + "&Ucirc;&Uuml;&Yacute;&THORN;&szlig;&agrave;&aacute;&acirc;&atilde;"
        + "&auml;&aring;&aelig;&ccedil;&egrave;&eacute;&ecirc;&euml;&igrave;"
        + "&iacute;&icirc;&iuml;&eth;&ntilde;&ograve;&oacute;&ocirc;&otilde;"
        + "&ouml;&divide;&oslash;&ugrave;&uacute;&ucirc;&uuml;&yacute;&thorn;"
        + "&yuml;&OElig;&oelig;&Scaron;&scaron;&Yuml;&fnof;&circ;&tilde;"
        + "&Alpha;&Beta;&Gamma;&Delta;&Epsilon;&Zeta;&Eta;&Theta;&Iota;"
        + "&Kappa;&Lambda;&Mu;&Nu;&Xi;&Omicron;&Pi;&Rho;&Sigma;&Tau;"
        + "&Upsilon;&Phi;&Chi;&Psi;&Omega;&alpha;&beta;&gamma;&delta;"
        + "&epsilon;&zeta;&eta;&theta;&iota;&kappa;&lambda;&mu;&nu;&xi;"
        + "&omicron;&pi;&rho;&sigmaf;&sigma;&tau;&upsilon;&phi;&chi;&psi;"
        + "&omega;&thetasym;&upsih;&piv;&ensp;&emsp;&thinsp;&zwnj;&zwj;"
        + "&lrm;&rlm;&ndash;&mdash;&lsquo;&rsquo;&sbquo;&ldquo;&rdquo;"
        + "&bdquo;&dagger;&Dagger;&bull;&hellip;&permil;&prime;&Prime;"
        + "&lsaquo;&rsaquo;&oline;&frasl;&euro;&weierp;&image;&real;&trade;"
        + "&alefsym;&larr;&uarr;&rarr;&darr;&harr;&crarr;&lArr;&uArr;&rArr;"
        + "&dArr;&hArr;&forall;&part;&exist;&empty;&nabla;&isin;&notin;&ni;"
        + "&prod;&sum;&minus;&lowast;&radic;&prop;&infin;&ang;&and;&or;"
        + "&cap;&cup;&int;&there4;&sim;&cong;&asymp;&ne;&equiv;&le;&ge;"
        + "&sub;&sup;&nsub;&sube;&supe;&oplus;&otimes;&perp;&sdot;&lceil;"
        + "&rceil;&lfloor;&rfloor;&lang;&rang;&loz;&spades;&clubs;&hearts;"
        + "&diams;"
        
        let chars: [unichar] = [
            34, 38, 39, 60, 62, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170,
            171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185,
            186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200,
            201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215,
            216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230,
            231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245,
            246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 338, 339, 352, 353, 376,
            402, 710, 732, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924,
            925, 926, 927, 928, 929, 931, 932, 933, 934, 935, 936, 937, 945, 946, 947,
            948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962,
            963, 964, 965, 966, 967, 968, 969, 977, 978, 982, 8194, 8195, 8201, 8204,
            8205, 8206, 8207, 8211, 8212, 8216, 8217, 8218, 8220, 8221, 8222, 8224, 8225,
            8226, 8230, 8240, 8242, 8243, 8249, 8250, 8254, 8260, 8364, 8472, 8465, 8476,
            8482, 8501, 8592, 8593, 8594, 8595, 8596, 8629, 8656, 8657, 8658, 8659, 8660,
            8704, 8706, 8707, 8709, 8711, 8712, 8713, 8715, 8719, 8721, 8722, 8727, 8730,
            8733, 8734, 8736, 8743, 8744, 8745, 8746, 8747, 8756, 8764, 8773, 8776, 8800,
            8801, 8804, 8805, 8834, 8835, 8836, 8838, 8839, 8853, 8855, 8869, 8901, 8968,
            8969, 8970, 8971, 9001, 9002, 9674, 9824, 9827, 9829, 9830
        ]
        
        let buffer = UnsafeMutablePointer<unichar>.allocate(capacity: chars.count)
        defer { buffer.deallocate(capacity: chars.count) }
        for i in 0..<chars.count {
            (buffer + i).pointee = chars[i]
        }
        guard let testString = String(bytesNoCopy: buffer, length: MemoryLayout<unichar>.size * chars.count, encoding: String.Encoding.utf16LittleEndian, freeWhenDone: false) else { XCTFail(); return }
        XCTAssert(string.unescapeHTML == testString)
        XCTAssert("&#65;&#x42;&#X43;".unescapeHTML == "ABC", "HTML unescaping failed")
        XCTAssert("" == "", "HTML unescaping failed")
        XCTAssert("&#65;&Bang;&#X43;".unescapeHTML == "A&Bang;C", "HTML unescaping failed")
        XCTAssert("&#65&Bang;&#X43;".unescapeHTML == "&#65&Bang;C", "HTML unescaping failed")
        XCTAssert("&#65;&Bang;&#X43".unescapeHTML == "A&Bang;&#X43", "HTML unescaping failed")
        XCTAssert("&#65A;".unescapeHTML == "&#65A;", "HTML unescaping failed")
        XCTAssert("&".unescapeHTML == "&", "HTML unescaping failed")
        XCTAssert("&;".unescapeHTML == "&;", "HTML unescaping failed")
        XCTAssert("&x;".unescapeHTML == "&x;", "HTML unescaping failed")
        XCTAssert("&X;".unescapeHTML == "&X;", "HTML unescaping failed")
        XCTAssert(";".unescapeHTML == ";", "HTML unescaping failed")
        XCTAssert("&lt;this &amp; that&gt;".unescapeHTML == "<this & that>", "HTML unescaping failed")
    }
}
