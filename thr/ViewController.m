//
//  ViewController.m
//  thr
//
//  Created by 冯勇 on 16/6/7.
//  Copyright © 2016年 冯勇. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int ticket;
    int count;
    NSThread *threadOne;
    NSThread *threadTwo;
    NSThread *threadThree;
    NSLock *thelock;
    BOOL ssss;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ssss = YES;
    self.view.backgroundColor = [UIColor redColor];
    ticket  = 100;
    count   = 0;
    thelock = [[NSLock alloc] init];
    threadOne = [[NSThread alloc] initWithTarget:self selector:@selector(run1) object:nil];
    [threadOne setName:@"Th-one"];
    [threadOne start];
    
    threadTwo = [[NSThread alloc] initWithTarget:self selector:@selector(run2) object:nil];
    [threadTwo setName:@"th-two"];
    [threadTwo start];
    
    threadThree = [[NSThread alloc] initWithTarget:self selector:@selector(run3) object:nil];
    [threadTwo setName:@"th-two"];
    [threadThree start];

    
//    [thelock unlock];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)run1
{
    NSLog(@"大家好");
        while (1)
        {
            [NSThread sleepForTimeInterval:0.03];
            NSLog(@"1111");
        }
    }



- (void)run2
{
}

- (void)run3
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    label.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:label];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
