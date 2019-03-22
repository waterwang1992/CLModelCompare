//
//  CLJSONReader.m
//  CLModelCompare
//
//  Created by 周冯婷 on 2019/3/21.
//  Copyright © 2019年 周冯婷. All rights reserved.
//

#import "CLJSONReader.h"

@implementation CLJSONReader

- (NSDictionary *)assetsDict {
    NSString *jsonPath = [[NSBundle mainBundle] pathForResource:@"assets" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:jsonPath];
    NSError *error = nil;
    id result = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    if (error == nil && [result isKindOfClass:[NSDictionary class]]) {
        return result;
    }
    return nil;
}

@end
