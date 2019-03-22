//
//  CLAssetModel.m
//  CLModelCompare
//
//  Created by 周冯婷 on 2019/3/21.
//  Copyright © 2019年 周冯婷. All rights reserved.
//

#import "CLAssetModel.h"

@implementation CLAssetModel

+ (NSDictionary *)mj_objectClassInArray{
    return @{@"list":[CLAssetItem class]};
}
@end
