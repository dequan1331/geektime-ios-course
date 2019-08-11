//
//  GTRecommendViewController.m
//  SampleApp
//
//  Created by dequanzhu on 2019.
//  Copyright © 2019 dequanzhu. All rights reserved.
//

#import "GTRecommendViewController.h"
#import "GTRecommendSectionController.h"
#import "GTListLoader.h"

@interface GTRecommendViewController ()<UIScrollViewDelegate,UIGestureRecognizerDelegate,IGListAdapterDataSource>

@property(nonatomic, strong, readwrite) UICollectionView *collectionView;
@property(nonatomic, strong, readwrite) IGListAdapter *listAdapter;
@property(nonatomic, strong, readwrite) GTListLoader *listLoader;
@property (nonatomic, strong, readwrite) NSArray *dataArray;
@end

@implementation GTRecommendViewController

- (instancetype) init{
    self = [super init];
    if (self) {
        self.tabBarItem.title = @"推荐";
        self.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/like@2x.png"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/like_selected@2x.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.listLoader = [[GTListLoader alloc] init];
    
    [self.view addSubview:({
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:[UICollectionViewFlowLayout new]];
        _collectionView;
    })];
    
    _listAdapter = [[IGListAdapter alloc] initWithUpdater:[IGListAdapterUpdater new]
                                           viewController:self
                                         workingRangeSize:0];
    
    _listAdapter.dataSource = self;
    _listAdapter.scrollViewDelegate = self;
    _listAdapter.collectionView = _collectionView;
    
    __weak typeof(self)wself = self;
    [self.listLoader loadListDataWithFinishBlock:^(BOOL success, NSArray<GTListItem *> * _Nonnull dataArray) {
        __strong typeof(wself) strongSelf = wself;
        strongSelf.dataArray = dataArray;
        [strongSelf.listAdapter reloadDataWithCompletion:nil];
    }];
}

#pragma mark -

- (NSArray<id <IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter {
    return self.dataArray;
}

- (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object {
    return [GTRecommendSectionController new];
}

- (nullable UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter {
    return nil;
}

#pragma mark - UISCROLLVIEW DELEGATE

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    return YES;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    //
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    //
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    //
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    //
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    //
}

#pragma mark - SCHEME TEST

- (void)viewClick{
    
    NSURL *urlScheme = [NSURL URLWithString:@"testScheme://"];
    __unused BOOL canOpenURL = [[UIApplication sharedApplication] canOpenURL:urlScheme];
    [[UIApplication sharedApplication] openURL:urlScheme options:@{} completionHandler:^(BOOL success) {
        //
    }];
}

@end
