//
//  CLInteractor.m
//  CLModelCompare
//
//  Created by 周冯婷 on 2019/3/21.
//  Copyright © 2019年 周冯婷. All rights reserved.
//

#import "CLInteractor.h"
#import "CLUserModel.h"
#import "CLJSONReader.h"
#import "YYModel.h"

@interface CLInteractor ()
@property (nonatomic, copy) NSDictionary *dict;
@end

@implementation CLInteractor
- (instancetype)init
{
    self = [super init];
    if (self) {
        _dict = [[CLJSONReader new] assetsDict];
    }
    return self;
}

- (void)startTest{
    
    //[self testJsonModel];
    
    //[self testMJModel];
    
    [self testYYModel];
    
}

- (void)testMJModel{
    CLUserModel *userM = [CLUserModel mj_objectWithKeyValues:_dict];
    NSLog(@"userM:%@", [userM description]);
    
    objc_setAssociatedObject(self, @"haha", @"haha", OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    NSArray *subArray = objc_getAssociatedObject(self, @selector(fkjhdk123));
    
    if ([subArray isKindOfClass:[self class]]) {
        NSLog(@"haha:%@", subArray);
    };
}

- (void)testJsonModel{
    NSError *error = nil;
    CLUserModel *userM = [[CLUserModel alloc] initWithDictionary:_dict error:&error];
    NSLog(@"%@", userM.debugDescription);
    
    NSLog(@"%@",[userM toDictionary]);
    
}

- (void)testYYModel{
    CLUserModel *userM = [CLUserModel yy_modelWithJSON:_dict];
    
    NSLog(@"%@", userM);
}

@end
