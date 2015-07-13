//
//  Telemachus.m
//  Telemachus
//
//  Created by Aaron Vegh on 2015-07-09.
//  Copyright © 2015 Aaron Vegh. All rights reserved.
//

#import "Telemachus.h"
#import "XImage.h"

@interface Telemachus ()

@property (readwrite, strong) NSCache * imageCache;
@property (readwrite, strong) NSURLSession * urlSession;

@end

@implementation Telemachus

+ (Telemachus *)sharedInstance
{
    static Telemachus * sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[Telemachus alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    
    self.imageCache = [NSCache new];
    self.urlSession = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    return self;
}

- (void)getImage:(NSString*)urlString completion:(void (^)(XImage * image))completion
{
    
    // check the cache in case we already have this
    if ([self.imageCache objectForKey:urlString]) {
        completion([self.imageCache objectForKey:urlString]);
    }
    else {
        NSURL * theURL = [NSURL URLWithString:urlString];
        if (theURL) {
            NSURLSessionDataTask * dataTask = [self.urlSession dataTaskWithURL:theURL completionHandler:^(NSData * __nullable data, NSURLResponse * __nullable response, NSError * __nullable error) {
                XImage * newImage = [[XImage alloc] initWithData:data];
                if (newImage) {
                    [self.imageCache setObject:newImage forKey:urlString];
                    completion(newImage);
                }
            
            }];
            [dataTask resume];
        }
        
    }
}


@end
