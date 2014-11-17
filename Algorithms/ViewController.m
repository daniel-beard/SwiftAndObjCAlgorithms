//
//  ViewController.m
//  Algorithms
//
//  Created by Daniel Beard on 20/07/2014.
//  Copyright (c) 2014 Daniel Beard. All rights reserved.
//

#import "ViewController.h"
#import "DRBBubbleSort.h"
#import "DRBInsertionSort.h"
#import "DRBSelectionSort.h"
#import "DRBMergeSort.h"
#import "Algorithms-Swift.h"

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SwiftTest *test = [[SwiftTest alloc] init];
    [test start];
    
//    NSMutableArray *array = [@[ @7, @32, @1, @12, @3, @2, @10] mutableCopy];
//    NSLog(@"Bubble Sort: %@", [DRBBubbleSort sortedArrayFromArray:array]);
//    
//    array = [@[ @7, @32, @1, @12, @3, @2, @10] mutableCopy];
//    NSLog(@"Insertion Sort: %@", [DRBInsertionSort sortedArrayFromArray:array]);
//    
//    array = [@[ @7, @32, @1, @12, @3, @2, @10] mutableCopy];
//    NSLog(@"Selection Sort: %@", [DRBSelectionSort sortedArrayFromArray:array]);
//    
//    array = [@[ @7, @32, @1, @12, @3, @2, @10] mutableCopy];
//    NSLog(@"Merge Sort: %@", [DRBMergeSort sortedArrayFromArray:array]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
