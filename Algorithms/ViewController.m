//
//  ViewController.m
//  Algorithms
//
//  Created by Daniel Beard on 20/07/2014.
//  Copyright (c) 2014 Daniel Beard. All rights reserved.
//

#import "ViewController.h"
#import "DRBInsertionSort.h"
#import "DRBSelectionSort.h"

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSMutableArray *array = [@[ @7, @32, @1, @12, @3, @2, @10] mutableCopy];
    NSLog(@"Insertion Sort: %@", [DRBInsertionSort sortedArrayFromArray:array]);
    
    array = [@[ @7, @32, @1, @12, @3, @2, @10] mutableCopy];
    NSLog(@"Selection Sort: %@", [DRBSelectionSort sortedArrayFromArray:array]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
