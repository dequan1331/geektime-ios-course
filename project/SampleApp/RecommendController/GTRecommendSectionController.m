//
//  GTRecommendSectionController.m
//  SampleApp
//
//  Created by dequanzhu on 2019.
//  Copyright © 2019 dequanzhu. All rights reserved.
//

#import "GTRecommendSectionController.h"
#import "GTScreen.h"
#import "GTVideoCoverView.h"
#import "GTListItem.h"

@interface GTRecommendSectionController ()

@property(nonatomic, copy, readwrite) GTListItem *listItem;

@end

@implementation GTRecommendSectionController

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    return CGSizeMake(SCREEN_WIDTH, 200);
}

- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {

    GTVideoCoverView *cell = [self.collectionContext dequeueReusableCellOfClass:[GTVideoCoverView class] forSectionController:self atIndex:index];
//    [cell layoutWithVideoCoverUrl:_listItem.picUrl videoUrl:@""];
    [cell layoutWithVideoCoverUrl:@"videoCover" videoUrl:@""];

    return cell;
}

#pragma mark -

- (void)didUpdateToObject:(id)object {
    if (object && [object isKindOfClass:[GTListItem class]]) {
        self.listItem = object;
    }
}

- (void)didSelectItemAtIndex:(NSInteger)index {
    //
}

@end
