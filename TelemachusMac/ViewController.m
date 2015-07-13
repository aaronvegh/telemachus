//
//  ViewController.m
//  TelemachusMac
//
//  Created by Aaron Vegh on 2015-07-09.
//  Copyright © 2015 Aaron Vegh. All rights reserved.
//

#import "ViewController.h"
#import "NSImageView+Telemachus.h"

@interface ViewController () <NSTableViewDataSource, NSTableViewDelegate>

@property (readwrite, strong) NSArray * imageArray;
@property (weak, nonatomic) IBOutlet NSTableView * tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.imageArray = @[
                        @"http://i150.photobucket.com/albums/s85/michelleNpete/BaBas/awesome-beautiful-blue-eyes-cat-cute-Favimcom-110476.jpg",
                        @"http://i794.photobucket.com/albums/yy228/jade95_2010/PHOTOGRAPHY-VARIED/cat-face.jpg",
                        @"http://i415.photobucket.com/albums/pp236/Keefers_/Keffers%20Animals/DSC00549.jpg",
                        @"http://i415.photobucket.com/albums/pp236/Keefers_/Keffers%20Animals/funny-cats-a10.jpg",
                        @"http://i415.photobucket.com/albums/pp236/Keefers_/Keffers%20Animals/1669501g8hvdviejo.jpg",
                        @"http://i1188.photobucket.com/albums/z412/MARIAMAGNOLIA1/266908715386383481_j237LY7P_c.jpg",
                        @"http://i1188.photobucket.com/albums/z412/MARIAMAGNOLIA1/tumblr_lurvee67p91r20hi2o1_500.jpg",
                        @"http://i1188.photobucket.com/albums/z412/MARIAMAGNOLIA1/554455_388247034527582_129275020424786_1425796_844601066_n.jpg",
                        @"http://i1188.photobucket.com/albums/z412/MARIAMAGNOLIA1/67031d0c5d19fe1c.jpg",
                        @"http://i1188.photobucket.com/albums/z412/MARIAMAGNOLIA1/266908715386382779_OQUuL7pX_c.jpg",
                        @"http://i1022.photobucket.com/albums/af341/iveliq100/iveliq100002/1385834_529732533782859_797935878_n_zps1347b5a0.jpg",
                        @"http://i1022.photobucket.com/albums/af341/iveliq100/iveliq100002/1622351-bigthumbnail_zps09593bad.jpg",
                        @"http://i973.photobucket.com/albums/ae220/missdeviousone/cute%20animals/11.jpg",
                        @"http://i415.photobucket.com/albums/pp236/Keefers_/Keffers%20Animals/file0012.jpg",
                        @"http://i1054.photobucket.com/albums/s499/vadimzbanok/1327.jpg"
                        ];
}


- (NSInteger)numberOfRowsInTableView:(nonnull NSTableView *)tableView
{
    return self.imageArray.count;
}

- (NSView*)tableView:(nonnull NSTableView *)tableView viewForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSTableCellView * cell = [tableView makeViewWithIdentifier:@"cell" owner:self];

    NSImage * placeholderImage = [NSImage imageNamed:@"placeholder"];
    [cell.imageView loadImage:self.imageArray[row] withPlaceholder:placeholderImage];
    
    return cell;
}




@end
