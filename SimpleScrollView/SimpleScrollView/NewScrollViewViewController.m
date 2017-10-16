//
//  NewScrollViewViewController.m
//  0-SimpleScrollView
//
//  Created by Roland Tecson on 2017-10-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "NewScrollViewViewController.h"

@interface NewScrollViewViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@end

@implementation NewScrollViewViewController

// MARK: - UIViewController methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.scrollView.delegate = self;
}


// MARK: - UIScrollViewDelegate methods

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"In scrollViewDidScroll");
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"In scrollViewDidEndDecelerating");
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    NSLog(@"In scrollViewWillBeginDragging");
}

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView
                     withVelocity:(CGPoint)velocity
              targetContentOffset:(inout CGPoint *)targetContentOffset
{
    NSLog(@"In scrollViewWillEndDragging");
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    NSLog(@"In viewForZoomingInScrollView");
    return self.contentView;
}

- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView
                       withView:(UIView *)view
                        atScale:(CGFloat)scale
{
    NSLog(@"In scrollViewDidEndZooming");
}

@end
