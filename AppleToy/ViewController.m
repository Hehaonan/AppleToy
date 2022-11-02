//
//  ViewController.m
//  AppleToy
//
//  Created by hehaonan on 2022/8/29.
//

#import "ViewController.h"
#import "MyTestStruct.h"

@interface CompareNum:NSObject
@property(nonatomic,readwrite) NSString *origin;
/* 方法声明 */
- (int)max:(int)num1 secondNumber:(int)num2;
@end

@implementation CompareNum

-(instancetype)init{
    self = [super init];
    self.origin=@"testetsafasdf";
    return self;
}

/* 返回两个数的最大值 */
- (int)max:(int)num1 secondNumber:(int)num2 {
   /* 声明局部变量 */
   int result;
   if (num1 > num2) {
      result = num1;
   } else {
      result = num2;
   }
   return result;
}

@end

//
@interface ViewController ()
@end

const int TOP = 100;

// 预处理器
#if !defined(MESSAGE)
    #define MESSAGE "message"
#endif

#define BIGGER(x,y) ((x) > (y) ? (x) : (y))

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Max between 20 and 10 is %d\n", BIGGER(20, 10));
    NSLog(@"test defined() MESSAGE=%s\n", MESSAGE);

    int  i = 17;
    float c = 3.14;  /* ascii value is 99 */
    int sum;
    sum = i + c;
    NSLog(@"Value of sum : %d\n", sum );
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
    
    UILabel *label = [[UILabel alloc] init];
    label.text = [self findMax] ;
    [label sizeToFit];
    label.center = CGPointMake(self.view.frame.size.width/2, TOP);
    [label addGestureRecognizer:tap];
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor greenColor];
    view2.frame = CGRectMake(150,150,100,100);
    [view2 addGestureRecognizer:tap];
    
    // 添加View
    [self.view addSubview:label];
    [self.view addSubview:view2];
    
    [self testPointer];
//    [self testStruct];
}

- (void) pushController {
    UIViewController *uiView = [[UIViewController alloc]init];
    uiView.view.backgroundColor = [UIColor whiteColor];
    uiView.navigationItem.title = @"标题";
    uiView.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"右侧按钮" style:UIBarButtonItemStylePlain target:self action:nil];
    [self.navigationController pushViewController:uiView animated:YES];
}

- (NSString *) findMax{
    /* 定义局部变量 */
    int a = 119;
    int b = 199;
    int ret;
    
    CompareNum *compare = [CompareNum new];
    /* 调用方法来获取最大值 */
    ret = [compare max: a secondNumber: b];
    NSLog(@"Max value is : %d\n", ret );
    compare.origin=@"add";
    NSLog(@"origin value is : %@\n", compare.origin);

    // 字符串转换
    NSString *temp = @"find max [119,199]";
    NSString *retStr = [NSString stringWithFormat: @"%d",ret];
    NSString *end = @"end";
    NSString *finlaStr = [NSString stringWithFormat: @"%@ ---> max=%@ %@",temp,retStr,end];
    return finlaStr;
}

- (void) testPointer{
    int var = 20;    /* 变量定义 */
    int *ip;         /* 指针变量声明 */
    ip = &var;       /* 在指针变量中存储 var 的地址*/
    //NSLog(@"Address of var variable: %d\n", &var); // 指针地址：1840004812
    /* 存储在指针变量中的地址 */
    //NSLog(@"Address stored in ip variable: %d\n", ip); // 指针地址：1840004812
    /* 使用指针访问该值 */
    NSLog(@"Value of *ip variable: %d\n", *ip );
    *ip = 30; // dereferencing ip依旧指向var的内存地址，但是var值会修改
    NSLog(@"Value of *ip variable: %d\n", var );
    
    //NSLog(@"Address ip is: %d\n", ip);
    //NSLog(@"Address (ip+1) is: %d\n", ip+1);// +1操作 得到下一个int类型的指针，跳过四个byte
    
    int a = 1025; // = 00000000 00000000 00000100 00000001
    int *p = &a;
    NSLog(@"p -> Address = %d , value = %d", p, *p);
    char *c ;
    c = (char*)p;
    NSLog(@"c -> Address = %d , value = %d", c, *c);// = 00000001
    NSLog(@"(c+1) -> Address = %d , value = %d", c+1, *(c+1)); // = 00000100
    
    void *p1;
    p1 = p ;
    NSLog(@"p1 -> Address = %d", p1); // 没有任何类型的映射 不到打印*p1
}

- (void) testStruct{
    struct Books book;
    book.title = @"Objective-C编程";
    book.author = @"Yiibai";
    book.subject = @"Objective-C编程教程";
    book.book_id = 11223344;
    MyTestStruct *myStruct = [MyTestStruct new];
    [myStruct printBook:&book];
}

@end

