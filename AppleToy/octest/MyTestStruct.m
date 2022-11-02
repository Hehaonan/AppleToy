//
//  MyTestStruct.m
//  AppleToy
//
//  Created by hehaonan on 2022/8/30.
//

#import "MyTestStruct.h"

@implementation MyTestStruct

- (struct Books *) printBook:(struct Books *) book {
    // 要使用指向结构体的指针访问结构体的成员，必须使用 -> 运算符
    NSLog(@"Book title : %@\n", book->title);
    NSLog(@"Book author : %@\n", book->author);
    NSLog(@"Book subject : %@\n", book->subject);
    NSLog(@"Book book_id : %d\n", book->book_id);
    return book;
}
@end
