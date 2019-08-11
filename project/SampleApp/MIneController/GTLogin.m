//
//  GTLogin.m
//  SampleApp
//
//  Created by dequanzhu on 2019.
//  Copyright © 2019 dequanzhu. All rights reserved.
//

#import "GTLogin.h"
#import <TencentOpenAPI/QQApiInterface.h>
#import <TencentOpenAPI/TencentOAuth.h>

@interface GTLogin () <TencentSessionDelegate>
@property (nonatomic, strong, readwrite) TencentOAuth *oauth;
@property (nonatomic, copy, readwrite) GTLoginFinishBlock finishBlock;
@property (nonatomic, assign, readwrite) BOOL isLogin;
@end

@implementation GTLogin

+ (instancetype)sharedLogin {
    static GTLogin *login;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        login = [[GTLogin alloc] init];
    });
    return login;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _isLogin = NO;
        _oauth = [[TencentOAuth alloc] initWithAppId:@"222222" andDelegate:self];
    }
    return self;
}

- (BOOL)isLogin {
    //登陆态失效的逻辑
    return _isLogin;
}

- (void)loginWithFinishBlock:(GTLoginFinishBlock)finishBlock {
    
    _finishBlock = [finishBlock copy];
    
    _oauth.authMode = kAuthModeClientSideToken;
    [_oauth authorize:@[kOPEN_PERMISSION_GET_USER_INFO,
                        kOPEN_PERMISSION_GET_SIMPLE_USER_INFO,
                        kOPEN_PERMISSION_ADD_ALBUM,
                        kOPEN_PERMISSION_ADD_ONE_BLOG,
                        kOPEN_PERMISSION_ADD_SHARE,
                        kOPEN_PERMISSION_ADD_TOPIC,
                        kOPEN_PERMISSION_CHECK_PAGE_FANS,
                        kOPEN_PERMISSION_GET_INFO,
                        kOPEN_PERMISSION_GET_OTHER_INFO,
                        kOPEN_PERMISSION_LIST_ALBUM,
                        kOPEN_PERMISSION_UPLOAD_PIC,
                        kOPEN_PERMISSION_GET_VIP_INFO,
                        kOPEN_PERMISSION_GET_VIP_RICH_INFO]];
}

- (void)logOut {
    [_oauth logout:self];
    _isLogin = NO;
}

#pragma mark - delegate

- (void)tencentDidLogin {
    _isLogin = YES;
    //保存openid
    [_oauth getUserInfo];
}

- (void)tencentDidNotLogin:(BOOL)cancelled {
    if (_finishBlock) {
        _finishBlock(NO);
    }
}

- (void)tencentDidNotNetWork {

}

- (void)tencentDidLogout {
   //退出登录，需要清理下存储在本地的登录数据
}

- (void)getUserInfoResponse:(APIResponse *)response {
    NSDictionary *userInfo = response.jsonResponse;
    _nick = userInfo[@"nickname"];
    _address = userInfo[@"city"];
    _avatarUrl = userInfo[@"figureurl_qq_2"];
    if (_finishBlock) {
        _finishBlock(YES);
    }
}

#pragma mark -

- (void)shareToQQWithArticleUrl:(NSURL *)articleUrl {

    //登陆校验
    //loginWithFinishBlock

    QQApiNewsObject *newsObj = [QQApiNewsObject objectWithURL:articleUrl title:@"iOS" description:@"从0开始iOS开发" previewImageURL:nil];
    SendMessageToQQReq *req = [SendMessageToQQReq reqWithContent:newsObj];
    __unused QQApiSendResultCode sent = [QQApiInterface SendReqToQZone:req];
}

@end
