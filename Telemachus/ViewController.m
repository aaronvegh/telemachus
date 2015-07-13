//
//  ViewController.m
//  Telemachus
//
//  Created by Aaron Vegh on 2015-07-09.
//  Copyright © 2015 Aaron Vegh. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewCell.h"
#import "UIImageView+Telemachus.h"
#import "XImage.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (readwrite, strong) NSArray * imageArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.collectionView registerClass:[ImageViewCell class] forCellWithReuseIdentifier:@"cell"];
    
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

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.imageArray.count;
}

- (NSInteger)numberOfSectionsInCollectionView:(nonnull UICollectionView *)collectionView
{
    return 1;
}

- (UICollectionViewCell*)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    ImageViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    UIImage * placeholder = [UIImage imageNamed:@"placeholder"];
    [cell.imageView loadImage:self.imageArray[indexPath.row] withPlaceholder:placeholder];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
