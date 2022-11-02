//
//  MyTestStruct.h
//  AppleToy
//
//  Created by hehaonan on 2022/8/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyTestStruct : NSObject

struct Books {
   NSString *title;
   NSString *author;
   NSString *subject;
   int book_id;
};

- (struct Books *) printBook:( struct Books *) book ;

@end

NS_ASSUME_NONNULL_END
