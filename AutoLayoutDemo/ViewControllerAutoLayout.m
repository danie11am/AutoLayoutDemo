//
//  ViewControllerAutoLayout.h
//  AutoLayoutDemo
//
//  Created by Daniel Lam on 24/09/2014.
//  Copyright (c) 2014 Daniel Lam. All rights reserved.
//

#import "ViewControllerAutoLayout.h"

@interface ViewControllerAutoLayout ()

@end

@implementation ViewControllerAutoLayout

- (void)viewDidLoad {
    [super viewDidLoad];

    // This is important - otherwise updateViewConstraints() will not be called.
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    self.view.backgroundColor = [UIColor yellowColor];

    [self setupViews];
}

- (void)setupViews
{
    self.blueView = [[UIView alloc] init];
    self.redView = [[UIView alloc] init];

    self.blueView.translatesAutoresizingMaskIntoConstraints = NO;
    self.redView.translatesAutoresizingMaskIntoConstraints = NO;

    self.blueView.backgroundColor = [UIColor blueColor];
    self.redView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview: self.blueView];
    [self.view addSubview: self.redView];
}

- (void)updateViewConstraints
{
    [super updateViewConstraints];

    NSArray *allConstraints = @[
                                // Set blue box.
                                // ... to have width 100px.
                                [NSLayoutConstraint constraintWithItem: self.blueView
                                                             attribute: NSLayoutAttributeWidth
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: nil
                                                             attribute: NSLayoutAttributeNotAnAttribute
                                                            multiplier: 1.0
                                                              constant: 100
                                 ],
                                // ... to have height 100px.
                                [NSLayoutConstraint constraintWithItem: self.blueView
                                                             attribute: NSLayoutAttributeHeight
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: nil
                                                             attribute: NSLayoutAttributeNotAnAttribute
                                                            multiplier: 1.0
                                                              constant: 100
                                 ],
                                // ... to be centered in x-axis with self.view.
                                [NSLayoutConstraint constraintWithItem: self.blueView
                                                             attribute: NSLayoutAttributeCenterX
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.view
                                                             attribute: NSLayoutAttributeCenterX
                                                            multiplier: 1.0
                                                              constant: 0
                                 ],
                                // ... to be centered in y-axis with self.view.
                                [NSLayoutConstraint constraintWithItem: self.blueView
                                                             attribute: NSLayoutAttributeCenterY
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.view
                                                             attribute: NSLayoutAttributeCenterY
                                                            multiplier: 1.0
                                                              constant: 0
                                 ],
                                // Set red box.
                                // ... to have width 100px.
                                [NSLayoutConstraint constraintWithItem: self.redView
                                                             attribute: NSLayoutAttributeWidth
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: nil
                                                             attribute: NSLayoutAttributeNotAnAttribute
                                                            multiplier: 1.0
                                                              constant: 100
                                 ],
                                // ... to have height 100px.
                                [NSLayoutConstraint constraintWithItem: self.redView
                                                             attribute: NSLayoutAttributeHeight
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: nil
                                                             attribute: NSLayoutAttributeNotAnAttribute
                                                            multiplier: 1.0
                                                              constant: 100
                                 ],
                                // ... to have its top edge at same level as blue box's bottom edge.
                                [NSLayoutConstraint constraintWithItem: self.redView
                                                             attribute: NSLayoutAttributeTop
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.blueView
                                                             attribute: NSLayoutAttributeBottom
                                                            multiplier: 1.0
                                                              constant: 0
                                 ],
                                // ... to have its left edge at same level as blue box's right edge.
                                [NSLayoutConstraint constraintWithItem: self.redView
                                                             attribute: NSLayoutAttributeLeft
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.blueView
                                                             attribute: NSLayoutAttributeRight
                                                            multiplier: 1.0
                                                              constant: 0
                                 ]
                                ];

    [self.view addConstraints: allConstraints];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
