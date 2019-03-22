//
//  CLAssetModel.h
//  CLModelCompare
//
//  Created by 周冯婷 on 2019/3/21.
//  Copyright © 2019年 周冯婷. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLAssetItem.h"
#import "MJExtension.h"

NS_ASSUME_NONNULL_BEGIN

@interface CLAssetModel : NSObject
@property (nonatomic, assign) float totalAmount;
@property (nonatomic, copy) NSArray <CLAssetItem *> *list;
@end

NS_ASSUME_NONNULL_END
