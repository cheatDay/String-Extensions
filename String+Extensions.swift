//
//  String+Extensions.swift
//  MarkParsingAttributedStringTest
//
//  Created by CheatDay on 2020/03/01.
//  Copyright © 2020 CheatDay. All rights reserved.
//

import Foundation

/**
 # String Extenstion Collection for iOS Development for UIKit
 */

extension String {
    /**
     ## Get Parsed string range by promised representation (e.i *, '...)
     */
    func getRangeParsed(with mark: String) -> [NSRange] {
        guard let range = Range<String.Index>(NSRange(location: 0, length: self.count), in: self) else { return [] }
        var parsedRange: [NSRange] = []
        var isClosedMark = true
        var lowerIndex = 0
        var upperIndex = 0
        
        self.enumerateSubstrings(in: range,
                                 options: .byComposedCharacterSequences) { (subString, lRange, rRange , isInout) in
            if let subString = subString {
                if subString == mark {
                    isClosedMark = !isClosedMark
                    if !isClosedMark {
                        lowerIndex = lRange.upperBound.utf16Offset(in: self)
                    } else {
                        upperIndex = rRange.lowerBound.utf16Offset(in: self) - lowerIndex
                        parsedRange.append(NSRange(location: lowerIndex, length: upperIndex))
                    }
                }
            }
        }
        return parsedRange
    }
}
