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

#import "DRBSelectionSort.h"

/**
 
 Psuedocode:
 
 for i = 1 to A.length - 1
    currentElement = A[i]
    // find minimum element
    minElement = A[i]
    for j = currentElement to A.length
        minElement = MIN(minElement, A[j])
    swap (minElement, currentElement)
 
 - Find the smallest element of A and exchange it with the element in A[1]
 - Then find the second smallest element of A and exchange it with A[2]
 - Continue in this manner for the first n-1 elements of A

 */

@implementation DRBSelectionSort

+ (NSMutableArray *)sortedArrayFromArray:(NSMutableArray *)arrayToSort {
    
    if (arrayToSort.count <= 1) {
        return arrayToSort;
    }
    
    for (NSUInteger i = 0; i<arrayToSort.count - 1; i++) {
        NSUInteger minIndex = i;
        for (NSUInteger j = i; j<arrayToSort.count; j++) {
            minIndex = [arrayToSort[minIndex] compare:arrayToSort[j]] == NSOrderedAscending ? minIndex : j;
        }
        [arrayToSort exchangeObjectAtIndex:i withObjectAtIndex:minIndex];
    }
    return arrayToSort;
}

@end
