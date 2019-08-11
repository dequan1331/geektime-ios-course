//
//  GTNormalTableViewCell.h
//  SampleApp
//
//  Created by dequanzhu on 2019.
//  Copyright © 2019 dequanzhu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class GTListItem;

/**
 点击删除按钮
 */
@protocol GTNormalTableViewCellDelegate <NSObject>
- (void)tableViewCell:(UITableViewCell *)tableViewCell clickDeleteButton:(UIButton *)deleteButton;
@end

/**
 新闻列表cell
 */
@interface GTNormalTableViewCell : UITableViewCell

@property (nonatomic, weak, readwrite) id<GTNormalTableViewCellDelegate> delegate;

- (void)layoutTableViewCellWithItem:(GTListItem *)item;

@end

NS_ASSUME_NONNULL_END
