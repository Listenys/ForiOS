//
//  ModelController.h
//  Lone
//
//  Created by ListenS on 17/9/21.
//  Copyright © 2017年 ListenS. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end

