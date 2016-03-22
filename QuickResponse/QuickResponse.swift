//
//  QuickResponse.swift
//  QuickResponse
//
//  Created by Tatsuya Tobioka on 3/22/16.
//  Copyright © 2016 Tatsuya Tobioka. All rights reserved.
//

import Foundation

public struct QuickResponse {
    let message: String
    let level: CorrectionLevel
    let scale: CGFloat
    
    public func scaled(scale: CGFloat) -> QuickResponse {
        return QuickResponse(message: message, level: level, scale: scale)
    }
    
    public func leveled(level: CorrectionLevel) -> QuickResponse {
        return QuickResponse(message: message, level: level, scale: scale)
    }
    
    public var ciImage: CIImage {
        let filter = CIFilter(
            name: "CIQRCodeGenerator",
            withInputParameters: [
                "inputMessage": message.dataUsingEncoding(NSUTF8StringEncoding)!,
                "inputCorrectionLevel": level.rawValue,
            ]
        )
        
        let transform = CGAffineTransformMakeScale(scale, scale)
        let ciImage = filter!.outputImage!.imageByApplyingTransform(transform)
        
        return ciImage
    }
    
    public var uiImage: UIImage {
        return UIImage(CIImage: ciImage, scale: 1.0, orientation: .Up)
    }
    
    public var cgImage: CGImage {
        let context = CIContext()
        return context.createCGImage(ciImage, fromRect: ciImage.extent)
    }

    public var code: UIImage {
        return uiImage
    }
    
    static public func code(message: String) -> UIImage {
        return QuickResponse(message: message).code
    }
}

extension QuickResponse {
    public init(message: String) {
        self.init(message: message, level: .H, scale: 1.0)
    }
}
