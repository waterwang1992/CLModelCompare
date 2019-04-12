//
//  CLAssetModel.m
//  CLModelCompare
//
//  Created by 周冯婷 on 2019/3/21.
//  Copyright © 2019年 周冯婷. All rights reserved.
//

#import "CLAssetModel.h"

@implementation CLAssetModel

#pragma mark - mj

+ (NSDictionary *)mj_objectClassInArray{
    return @{@"list":[CLAssetItem class]};
}

#pragma mark - jsonModel

+ (Class)classForCollectionProperty:(NSString *)propertyName{
    if ([propertyName isEqualToString:@"list"]) {
        return [CLAssetItem class];
    }
    return [super classForCollectionProperty:propertyName];
}
@end
