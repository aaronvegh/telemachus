//
//  NSImageView+NSImageView_Telemachus.m
//  Telemachus
//
//  Created by Aaron Vegh on 2015-07-10.
//  Copyright © 2015 Aaron Vegh. All rights reserved.
//

#import "NSImageView+Telemachus.h"
#import "Telemachus.h"
#import "XImage.h"

@implementation NSImageView (Telemachus)

- (void)loadImage:(NSString*)urlString withPlaceholder:(NSImage*)placeholder
{
    self.image = placeholder;
    
    [[Telemachus sharedInstance] getImage:urlString completion:^(XImage * newImage) {
        dispatch_async(dispatch_get_main_queue(), ^{
            self.image = newImage;
        });
        
    }];
    
}

@end
