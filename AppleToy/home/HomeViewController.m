// 
//   HomeViewController.m
//   AppleToy
//   Created by hhn on 2022/11/2
//

#import "HomeViewController.h"

@interface HomeViewController ()<UITableViewDataSource>
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];

    UITableView *tabView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tabView.dataSource = self;
    [self.view addSubview: tabView];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
};


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    cell.textLabel.text = @"title";
    cell.detailTextLabel.text = @"sub title";
    cell.imageView.image = [UIImage imageNamed:@"ic_launcher.png"];;
    return cell;
};

@end
