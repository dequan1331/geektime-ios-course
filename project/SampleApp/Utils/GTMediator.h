//
//  GTMediator.h
//  SampleApp
//
//  Created by dequanzhu on 2019.
//  Copyright © 2019 dequanzhu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

//常用的三种组件化方案

NS_ASSUME_NONNULL_BEGIN

@protocol GTDetailViewControllerProtocol <NSObject>

- (__kindof UIViewController *)detailViewControllerWithUrl:(NSString *)detailUrl;

@end

@interface GTMediator : NSObject

//target action
+ (__kindof UIViewController *)detailViewControllerWithUrl:(NSString *)detailUrl;

//url scheme
typedef void(^GTMediatorProcessBlock)(NSDictionary *params);
+ (void)registerScheme:(NSString *)scheme processBlock:(GTMediatorProcessBlock)processBlock;
+ (void)openUrl:(NSString *)url params:(NSDictionary *)params;

//protol class
+ (void)registerProtol:(Protocol *)proto class:(Class)cls;
+ (Class)classForProtocol:(Protocol *)proto;

@end

NS_ASSUME_NONNULL_END
