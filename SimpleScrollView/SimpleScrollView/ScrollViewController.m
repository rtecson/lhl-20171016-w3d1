//
//  ScrollViewController.m
//  SimpleScrollView
//
//  Created by Roland on 2017-09-18.
//  Copyright © 2017 Roland. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController ()<UIScrollViewDelegate>
@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) UIScrollView *scrollView;
@end

@implementation ScrollViewController

// MARK: - UIViewController methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Set up scrollview and its content here if not doing
    // it in storyboard
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.scrollView];
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cats"]];
    [self.scrollView addSubview:self.imageView];
    self.scrollView.contentSize = self.imageView.bounds.size;
    self.scrollView.delegate = self;
    self.scrollView.minimumZoomScale = 0.25;
    self.scrollView.maximumZoomScale = 3.0;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidLayoutSubviews
{
    // Adjust frame of scrollview each time the view changes layout (i.e. rotating)
    self.scrollView.frame = self.view.frame;
}


// MARK: UIScrollViewDelegate methods

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
    // Must return the view for zooming in and out here
    // If this delegate method is not defined, then
    // Zoom In/Out will not work
    NSLog(@"In viewForZoomingInScrollView");
    return self.imageView;
}

@end
