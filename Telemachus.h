//
//  Telemachus.h
//  Telemachus
//
//  Created by Aaron Vegh on 2015-07-09.
//  Copyright © 2015 Aaron Vegh. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XImage;

@interface Telemachus : NSObject

+ (Telemachus *)sharedInstance;
- (void)getImage:(NSString*)urlString completion:(void (^)(XImage * image))completion;

@end
