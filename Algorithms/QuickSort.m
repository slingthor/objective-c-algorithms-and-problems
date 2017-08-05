//
//  QuickSort.m
//  Algorithms
//
//  Created by Marianne Glad on 8/1/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

+ (NSMutableArray*) sort : (NSMutableArray*) array
{
    return [self quickSort:array withLow:0 withHigh:[array count]];
}

+ (NSMutableArray*) quickSort : (NSMutableArray*) array withLow : (int) low withHigh : (int) high
{
    if(low < high)
    {
        int partition = [self PartitionWithArray:array withLow:low withHigh:high];
        [self quickSort:array withLow:low withHigh:partition-1];
        [self quickSort:array withLow:partition+1 withHigh:high];
    }
    return array;
}

+ (int) PartitionWithArray : (NSMutableArray*) array withLow : (int) low withHigh : (int) high
{
    int pivotValue = [array[low] intValue];
    int pivotIndex = low+1;
    for(int i = low+1; i < high; i++)
    {
        if([array[i] intValue] <= pivotValue)
        {
            [self swap:array withIndex1:pivotIndex withIndex2:i];
            pivotIndex++;
        }
    }
    [self swap:array withIndex1:low withIndex2:pivotIndex-1];
    return pivotIndex -1;
}

+ (void) swap : (NSMutableArray*) array withIndex1 : (int) index1 withIndex2 : (int) index2
{
    int temp = [array[index1] intValue];
    array[index1] = array[index2];
    array[index2] = [NSNumber numberWithInt:temp];
}

@end
