//
//  CLAssetItem.h
//  CLModelCompare
//
//  Created by 周冯婷 on 2019/3/21.
//  Copyright © 2019年 周冯婷. All rights reserved.
//

#import <JSONModel/JSONModelLib.h>

NS_ASSUME_NONNULL_BEGIN

@interface CLAssetItem : JSONModel
@property (nonatomic, copy) NSString *symbol;
@property (nonatomic, assign) float amount;
@end

NS_ASSUME_NONNULL_END
