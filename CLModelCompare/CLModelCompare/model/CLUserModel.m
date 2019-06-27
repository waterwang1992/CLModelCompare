//
//  CLUserModel.m
//  CLModelCompare
//
//  Created by 周冯婷 on 2019/3/21.
//  Copyright © 2019年 周冯婷. All rights reserved.
//

#import "CLUserModel.h"

@implementation CLUserModel

+ (BOOL)propertyIsIgnored:(NSString *)propertyName {
    if ([propertyName isEqualToString:@"customDelegate"]) {
        return YES;
    }
    return [super propertyIsIgnored:propertyName];
}


#pragma mark - mj

+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    return  @{@"name":@"dictName[1][2].dictName2"};

}



// + (NSDictionary *)mj_replacedKeyFromPropertyName{
//     return @{@"name":@[@"dictName[1][2]", @"dictName2"]};
// }


@end
