//
//  CLUserModel.h
//  CLModelCompare
//
//  Created by 周冯婷 on 2019/3/21.
//  Copyright © 2019年 周冯婷. All rights reserved.
//

#import <JSONModel/JSONModelLib.h>
#import "CLAssetModel.h"
#import "MJExtension.h"

NS_ASSUME_NONNULL_BEGIN

@interface CLUserModel : JSONModel
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) BOOL isMarry;
@property (nonatomic, strong) CLAssetModel *assets;
@property (nonatomic, weak) id <AbstractJSONModelProtocol, NSCopying>customDelegate;
@end

NS_ASSUME_NONNULL_END
