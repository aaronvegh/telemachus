//
//  UIImageView+Telemachus.h
//  Telemachus
//
//  Created by Aaron Vegh on 2015-07-09.
//  Copyright © 2015 Aaron Vegh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XImage.h"

@interface UIImageView (Telemachus)

- (void)loadImage:(NSString*)urlString withPlaceholder:(UIImage*)placeholder;

@end
