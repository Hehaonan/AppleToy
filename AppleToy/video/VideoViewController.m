// 
//   VideoViewController.m
//   AppleToy
//   Created by hhn on 2022/11/3
//   

#import "VideoViewController.h"

@interface VideoViewController()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation VideoViewController

- (instancetype)init{
    self = [super init];
    if (self) {
        //self.view.backgroundColor = [UIColor purpleColor];
        self.tabBarItem.title = @"视频";
        self.tabBarItem.image = [UIImage imageNamed:@"video.png"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"video_selected.png"];
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
    UICollectionViewFlowLayout *flowLayout =[[UICollectionViewFlowLayout alloc] init];
    flowLayout.minimumLineSpacing = 10;
    //flowLayout.minimumInteritemSpacing = 10;
    //flowLayout.itemSize = CGSizeMake((self.view.frame.size.width - 10)/2, 200);
    
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
    collectionView.backgroundColor = [UIColor whiteColor];
    
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell_id"];
    
    collectionView.delegate = self;
    collectionView.dataSource = self;
    
    [self.view addSubview:collectionView];

}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 100;
};

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell_id" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor purpleColor];
    
    return cell;
};

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    //NSLog(@"index=%d",indexPath.item);
    
    if (indexPath.item %3 ==0) {
        return CGSizeMake((self.view.frame.size.width - 10)/2, 250);
    } else if(indexPath.item %2 ==0){
        return CGSizeMake((self.view.frame.size.width - 10)/2, 150);
    } else {
        return CGSizeMake((self.view.frame.size.width - 10)/2, 200);
    }
};

@end
