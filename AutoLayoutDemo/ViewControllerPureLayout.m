//
//  ViewControllerPureLayout.m
//  AutoLayoutDemo
//
//  Created by Daniel Lam on 24/09/2014.
//  Copyright (c) 2014 Daniel Lam. All rights reserved.
//

#import "ViewControllerPureLayout.h"
#import "PureLayout.h"

@interface ViewControllerPureLayout ()

@end

@implementation ViewControllerPureLayout

- (void)viewDidLoad {
    [super viewDidLoad];

    // This is important - otherwise updateViewConstraints() will not be called.
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    self.view.backgroundColor = [UIColor yellowColor];

    [self setupViews];
}

- (void)setupViews
{
    self.blueView = [[UIView alloc] initForAutoLayout];
    self.redView = [[UIView alloc] initForAutoLayout];

    self.blueView.backgroundColor = [UIColor blueColor];
    self.redView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview: self.blueView];
    [self.view addSubview: self.redView];
}

- (void)updateViewConstraints
{
    [super updateViewConstraints];
    
    // Set 1 - Just the blue box. Note how red one doesn't appear at all.
//    [self.blueView autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:self.view withOffset:0];
//    [self.blueView autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.view withOffset:0];
//    [self.blueView autoCenterInSuperview];

    // Set 2 - Blue box in center. Red box on bottom-right of blue box.
    [self.blueView autoSetDimension:ALDimensionWidth toSize:100];
    [self.blueView autoSetDimension:ALDimensionHeight toSize:100];
    [self.blueView autoCenterInSuperview];
    
    [self.redView autoSetDimension:ALDimensionWidth toSize:100];
    [self.redView autoSetDimension:ALDimensionHeight toSize:100];
    [self.redView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.blueView];
    [self.redView autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:self.blueView];

    // Set 3 - Same as 2 but red box's size depends on blue's one.
//    [self.blueView autoSetDimension:ALDimensionWidth toSize:50];
//    [self.blueView autoSetDimension:ALDimensionHeight toSize:50];
//    [self.blueView autoCenterInSuperview];
//    
//    [self.redView autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:self.blueView withMultiplier:0.5];
//    [self.redView autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.blueView withMultiplier:0.5];
//    [self.redView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.blueView];
//    [self.redView autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:self.blueView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
