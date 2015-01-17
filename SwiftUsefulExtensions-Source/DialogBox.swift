/*

Copyright (c) 2014 Yichi Zhang
https://github.com/yichizhang
zhang-yi-chi@hotmail.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*/

import Foundation

extension UIView {
	
	func drawDialogBoxInViewFrame(viewFrame:CGRect, triangleSize:CGSize, boxInsetX:CGFloat, boxInsetY:CGFloat){
		
		let bgColor = UIColor.whiteColor()
		let strokeColor = UIColor.blackColor()
		drawDialogBoxInViewFrame(viewFrame, triangleSize:triangleSize, trianglePosition:0.5, boxInsetX:boxInsetX, boxInsetY:boxInsetY, bgColor:bgColor, strokeColor:strokeColor)
		
	}
	
	func drawDialogBoxInViewFrame(viewFrame:CGRect, triangleSize:CGSize, trianglePosition:CGFloat, boxInsetX:CGFloat, boxInsetY:CGFloat, bgColor:UIColor, strokeColor:UIColor){
		
		let viewFrameWithInset = CGRectInset(viewFrame, boxInsetX, boxInsetY)
		var boxFrame = viewFrameWithInset
		boxFrame = CGRectMake(
			boxFrame.minX,
			boxFrame.minY,
			boxFrame.width,
			boxFrame.height - triangleSize.height
		)
		
		let start:CGPoint = CGPointMake(
			boxFrame.minX + boxFrame.width * trianglePosition - triangleSize.width * 0.5,
			boxFrame.minY + boxFrame.height
		)
		
		var bezierPath = UIBezierPath()
		
		bezierPath.moveToPoint( boxFrame.origin )
		bezierPath.addLineToPoint( CGPointMake(boxFrame.minX, boxFrame.maxY) )
		
		bezierPath.addLineToPoint( start )
		bezierPath.addLineToPoint( CGPointMake(start.x + triangleSize.width * 0.5, start.y + triangleSize.height) )
		bezierPath.addLineToPoint( CGPointMake(start.x + triangleSize.width, start.y) )
		
		bezierPath.addLineToPoint( CGPointMake(boxFrame.maxX, boxFrame.maxY) )
		bezierPath.addLineToPoint( CGPointMake(boxFrame.maxX, boxFrame.minY) )
		
		bezierPath.addLineToPoint( boxFrame.origin )
		
		bgColor.setFill()
		bezierPath.fill()
		strokeColor.setStroke()
		bezierPath.stroke()
	}
}