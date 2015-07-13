//
//  XImage.h
//  Telemachus
//
//  Created by Aaron Vegh on 2015-07-09.
//  Copyright © 2015 Aaron Vegh. All rights reserved.
//

#import "TargetConditionals.h"

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
#import <UIKit/UIKit.h>
@interface XImage : UIImage
#else
#import <Cocoa/Cocoa.h>
@interface XImage: NSImage
#endif

@end
