//
//  GTLocation.h
//  SampleApp
//
//  Created by dequanzhu on 2019.
//  Copyright © 2019 dequanzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 App中统一的位置信息管理
 */
@interface GTLocation : NSObject

+ (GTLocation *)locationManager;

- (void)checkLocationAuthorization;

@end

NS_ASSUME_NONNULL_END
