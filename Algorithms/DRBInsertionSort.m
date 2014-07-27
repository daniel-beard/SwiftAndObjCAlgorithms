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

#import "DRBInsertionSort.h"

@implementation DRBInsertionSort

/**
 
 Psuedocode:
 
 for j = 2 to A.length
    key = A[j]
    // Insert A[j] into the sorted sequence A[1..j-1]
    i = j - 1
    while i>0 and A[i] > key
        A[i+1] = A[i]
        i = i - 1
    A[i+1] = key
 
 - Starting at the second element in the array, consider all elements to the left of j sorted
 - Insert the element at j into the sorted subarray to the left of j
 - Continue until there are no more elements to the right of j
 - All elements are now sorted
 
 */

+ (NSMutableArray *)sortedArrayFromArray:(NSMutableArray *)arrayToSort {
    
    if (arrayToSort.count <= 1) {
        return arrayToSort;
    }
    
    for (NSUInteger j = 1; j<arrayToSort.count; j++) {
        id key = arrayToSort[j];
        // Insert A[j] into the sorted sequence A[1..j-1]
        NSInteger i = j - 1;
        while (i >= 0 && [arrayToSort[i] compare:key] == NSOrderedDescending) {
            arrayToSort[i+1] = arrayToSort[i];
            i--;
        }
        arrayToSort[i+1] = key;
    }
    return arrayToSort;
}

@end
