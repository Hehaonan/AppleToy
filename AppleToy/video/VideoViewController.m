// 
//   VideoViewController.m
//   AppleToy
//   Created by hhn on 2022/11/3
//   

#import "VideoViewController.h"

@interface VideoViewController()

@end

@implementation VideoViewController

- (instancetype)init{
    self = [super init];
    if (self) {
        self.view.backgroundColor = [UIColor purpleColor];
        self.tabBarItem.title = @"视频";
        self.tabBarItem.image = [UIImage imageNamed:@"video.png"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"video_selected.png"];
    }
    return self;
}

- (void)viewDidLoad{
    
}

@end
