//
//  LDProductViewController.m
//  LotteryTicket
//
//  Created by guigu on 16/2/15.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDProductViewController.h"
#import "LDProductCell.h"
#import "LDProductModel.h"

@interface LDProductViewController ()

@property (nonatomic, strong) NSArray *products;

@end

@implementation LDProductViewController

static NSString * const reuseIdentifier = @"Cell";

- (NSArray *)products {
    if (!_products) {
        NSMutableArray *muArray = [NSMutableArray array];
        
        NSDictionary *dict = @{@"title":@"测试数据", @"icon":@"MorePush"};
        
        LDProductModel *productModel = [LDProductModel productWithDict:dict];
        
        [muArray addObject:productModel];
        [muArray addObject:productModel];
        [muArray addObject:productModel];
        [muArray addObject:productModel];
        [muArray addObject:productModel];
        [muArray addObject:productModel];
        [muArray addObject:productModel];
        [muArray addObject:productModel];
        [muArray addObject:productModel];

        _products = muArray;
    }
    return _products;
}

- (instancetype)init {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(80, 80);
    layout.minimumInteritemSpacing = 10;
//    layout.minimumLineSpacing = 0;
    layout.sectionInset = UIEdgeInsetsMake(layout.minimumInteritemSpacing, 0, 0, 0);
    return [super initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerNib:[UINib nibWithNibName:@"LDProductCell" bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return self.products.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LDProductCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.productModel = self.products[indexPath.item];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    LDProductModel *model = self.products[indexPath.item];
    NSLog(@"----%@------", model.title);
}
/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
