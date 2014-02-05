//
//  ViewController.m
//  Fibonacci
//
//  Created by Rohit Kharat on 2/4/14.
//  Copyright (c) 2014 Rohit Kharat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self fibonacciIterative:10];
    [self callFibonacciRecursive:10];
}

-(void) fibonacciIterative: (int)n
{
    if (n == 0)
    {
        NSLog(@"0");
    }
    else if (n == 1)
    {
        NSLog(@"0 \n1");
    }
    else
    {
        NSLog(@"0 \n1");
        int a = 0;
        int b = 1;
        for (int i = 1; i < n ; i++)
        {
            int nextNumber = a + b;
            NSLog(@"%d ", nextNumber );
            a = b;
            b = nextNumber;
        }
    }
}

-(void) callFibonacciRecursive:(int)n
{
    for (int i = 0; i<=10; i++) {
        NSLog(@"%d ", [self FibonacciRecursive:i]);
    }
}


-(int) FibonacciRecursive: (int)n
{
    
    if (n == 0)
    {
        return 0;
    }
    else if (n == 1)
    {
        return 1;
    }
    else
    {
            return [self FibonacciRecursive:(n-1)] + [self FibonacciRecursive:(n-2)];
    }
    return n;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
