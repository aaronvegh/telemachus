//
//  UIImageView+Telemachus.m
//  Telemachus
//
//  Created by Aaron Vegh on 2015-07-09.
//  Copyright © 2015 Aaron Vegh. All rights reserved.
//

#import "UIImageView+Telemachus.h"
#import "Telemachus.h"

@implementation UIImageView (Telemachus)

- (void)loadImage:(NSString*)urlString withPlaceholder:(UIImage*)placeholder
{
    self.image = placeholder;
    
    [[Telemachus sharedInstance] getImage:urlString completion:^(UIImage * newImage) {
        dispatch_async(dispatch_get_main_queue(), ^{
            self.image = newImage;
        });
        
    }];
  
}


@end
