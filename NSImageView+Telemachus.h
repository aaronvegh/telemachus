//
//  NSImageView+NSImageView_Telemachus.h
//  Telemachus
//
//  Created by Aaron Vegh on 2015-07-10.
//  Copyright © 2015 Aaron Vegh. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSImageView (Telemachus)

- (void)loadImage:(NSString*)urlString withPlaceholder:(NSImage*)placeholder;

@end
