/*
 The MIT License (MIT)
 
 Copyright (c) 2014 Daniel Beard
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */

#import <Foundation/Foundation.h>

/**
 
 Insertion Sort 
 
 - Efficient method of sorting a smaller number of elements
 - Sorts input array in place
 - Best case: Array is already sorted
 - Worst case: O(n^2)
 
 - Description: Treat the left part of the array as sorted. Start with one element,
    move right by one element and insert into the sorted part of the array.
    Repeat until the entire array is sorted.
 
 */

@interface DRBInsertionSort : NSObject

/**
 Sorts an array using insertion sort
 @param arrayToSort - NSMutableArray to be sorted, in which the objects implement respond to the compare: selector
 @return the same array in ascending order
 */
+ (NSMutableArray *)sortedArrayFromArray:(NSMutableArray *)arrayToSort;

@end
