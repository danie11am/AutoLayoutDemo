//
//  ViewController.m
//  AutoLayoutDemo
//
//  Created by Daniel Lam on 24/09/2014.
//  Copyright (c) 2014 Daniel Lam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    [self setupViews];
}

- (void)setupViews
{
    self.blueView = [[UIView alloc] initWithFrame: CGRectMake(0, 0, 50, 50)];
    self.redView = [[UIView alloc] initWithFrame: CGRectMake(50, 50, 50, 50)];

    self.blueView.backgroundColor = [UIColor blueColor];
    self.redView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview: self.blueView];
    [self.view addSubview: self.redView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
