//
//  ViewController.m
//  AutoLayoutDemo
//
//  Created by Daniel Lam on 24/09/2014.
//  Copyright (c) 2014 Daniel Lam. All rights reserved.
//

#import "ViewController2.h"
#import "PureLayout.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
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
    
    // Set 1
//    [self.blueView autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:self.view withOffset:0];
//    [self.blueView autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.view withOffset:0];
//    [self.blueView autoCenterInSuperview];
    
    // Set 2
    [self.blueView autoSetDimension:ALDimensionWidth toSize:100];
    [self.blueView autoSetDimension:ALDimensionHeight toSize:100];
    [self.blueView autoCenterInSuperview];
    
    [self.redView autoSetDimension:ALDimensionWidth toSize:100];
    [self.redView autoSetDimension:ALDimensionHeight toSize:100];
    [self.redView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.blueView];
    [self.redView autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:self.blueView];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
