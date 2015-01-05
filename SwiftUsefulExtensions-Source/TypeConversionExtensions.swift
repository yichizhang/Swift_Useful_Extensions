/*

Copyright (c) 2014 Yichi Zhang
https://github.com/yichizhang
zhang-yi-chi@hotmail.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*/

/*

NO MORE

CGFloat( UInt( arc4random_uniform( UInt32( UInt( someCGFloat ) ) ) ) )

*/

import Foundation
import UIKit

extension String {
	var floatValue: Float {
		return (self as NSString).floatValue
	}
	
	var intValue: Int32 {
		return (self as NSString).intValue
	}
	
	var integerValue: Int {
		return (self as NSString).integerValue
	}
	
	var CGFloatValue: CGFloat {
		return CGFloat( (self as NSString).floatValue )
	}
	
	var NSStringValue: NSString {
		return (self as NSString)
	}
}

extension CGFloat {
	var UInt32Value: UInt32 {
		return UInt32(UInt(self))
	}
}

extension Double {
	var CGFloatValue: CGFloat {
		return CGFloat(self)
	}
}

extension Float {
	var CGFloatValue: CGFloat {
		return CGFloat(self)
	}
}

extension Int {
	var CGFloatValue: CGFloat {
		return CGFloat(self)
	}
}

extension UInt32 {
	var CGFloatValue: CGFloat {
		return CGFloat(UInt(self))
	}
	
}
