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

#import "DRBMergeSort.h"

/**
 
 Psuedocode:
 
 // Sorts elements in the subarray Array[p...r]
 // If p >= r, then subarray has at most 1 element, and is sorted
 MergeSort(Array, p, r)
    if p < r
        // Compute and index that partitions A[p...q] into 2 subarrays
        q = floor((p+r) / 2)
        MergeSort(A, p, q)
        MergeSort(A, q+1, r)
        Merge(A, p, q, r)
 
 // Merge the elements in the array A
 // p, q, r are indices in the array such that p <= q < r
 // Assumes that subarrays A[p..q] and A[q+1..r] are sorted. 
 // Merges them into a single sorted subarray that replaces current subarray A[p..r]
 // Sentinel - Special value to simplify code: Should be a large value so we can avoid bounds checking.
 Merge(A, p, q, r)
    n1 = q - p + 1
    n2 = r - q
    let L[1..n1 + 1] and R[1..n2 + 1] be new arrays
    for i = 1 to n1
        L[i] = A[p+i -1]
    for j = 1 to n2
        R[j] = A[q+j]
    L[n1 + 1] = sentinel
    R[n2 + 1] = sentinel
    i = 1
    j = 1
    for k = p to r
        if L[i] <= r[j]
            A[k] = L[i]
            i = i + 1
        else
            A[k] = R[j]
            j = j+1
 
 */

@implementation DRBMergeSort

+ (NSMutableArray *)sortedArrayFromArray:(NSMutableArray *)arrayToSort {
    return [self mergeSortWithArray:arrayToSort p:0 r:arrayToSort.count - 1];
}

+ (NSMutableArray *)mergeSortWithArray:(NSMutableArray *)A p:(NSInteger)p r:(NSInteger)r {
    if (p < r) {
        NSInteger q = (NSInteger)floor((p + r)/2.0);
        [self mergeSortWithArray:A p:p r:q];
        [self mergeSortWithArray:A p:q+1 r:r];
        [self mergeWithArray:A p:p q:q r:r];
    }
    return A;
}

+ (NSMutableArray *)mergeWithArray:(NSMutableArray *)A p:(NSInteger)p q:(NSInteger)q r:(NSInteger)r {
    
    // Say we have an array that contains two sorted sub arrays, with the following indexes and values
    // indexes:   0   1   2   3   4   5   6   7
    // values:  [ 2 , 5 , 7 , 9 , 1 , 2 , 4 , 7 ]
    // vars:      p           q  q+1          r
    // n1 = 4, n2 = 4
    
    NSInteger n1 = q - p + 1;
    NSInteger n2 = r - q;
    
    NSMutableArray *left = [[A subarrayWithRange:NSMakeRange(p, n1)] mutableCopy];
    NSMutableArray *right = [[A subarrayWithRange:NSMakeRange(q + 1, n2)] mutableCopy];
    
    [left addObject:@NSIntegerMax];
    [right addObject:@NSIntegerMax];
    
    NSInteger i = 0;
    NSInteger j = 0;
    for (NSInteger k = p; k <= r; k++) {
        if ([left[i] compare:right[j]] != NSOrderedDescending) { // <=
            A[k] = left[i];
            i++;
        } else { // >
            A[k] = right[j];
            j++;
        }
    }
    return A;
}

@end
