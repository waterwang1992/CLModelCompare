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
    CLUserModel *userM = [CLUserModel mj_objectWithKeyValues:_dict];
    NSLog(@"userM:%@", [userM description]);
}

@end
