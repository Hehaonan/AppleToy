// 
//   HomeViewController.m
//   AppleToy
//   Created by hhn on 2022/11/2
//

#import "HomeViewController.h"

// 定义需要实现的接口
@interface HomeViewController ()<UITableViewDataSource,UITableViewDelegate>
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITableView *tabView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tabView.dataSource = self; // 数据代理
    tabView.delegate = self; // 事件、样式代理
    [self.view addSubview: tabView];
}

// UITableViewDataSource start

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
};

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"id"];
    if (cell) {
        //NSLog(@"cell 复用");
    } else {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
        //NSLog(@"cell 创建");
    }
    cell.textLabel.text = [NSString stringWithFormat: @"title - section:%@ - row:%@",@(indexPath.section),@(indexPath.row+1)];
    cell.detailTextLabel.text = @"UITableView";
    cell.imageView.image = [UIImage imageNamed:@"ic_launcher.png"];;
    return cell;
};

// UITableViewDelegate start

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
};

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *uiView = [UIViewController new];
    uiView.view.backgroundColor = [UIColor whiteColor];
    uiView.navigationItem.title = [NSString stringWithFormat: @"title - section:%@ - row:%@",@(indexPath.section),@(indexPath.row+1)];
    [self.navigationController pushViewController:uiView animated:YES];
}

@end
