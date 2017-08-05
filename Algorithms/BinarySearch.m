//
//  BinarySearch.m
//  Algorithms
//
//  Created by Marianne Glad on 7/30/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch

- (int) binarySearch : (NSArray*) array wantedNum : (int) num
{
    NSUInteger high = [array count];
    NSUInteger low = 0;
    
    while(high > low)
    {
        NSUInteger middle = (high+low)/2;
        
        NSNumber* numInMiddle = array[middle];
        if(numInMiddle.intValue > num)
        {
            high = middle;
        }
        else if(numInMiddle.intValue < num)
        {
            low = middle;
        }
        else
        {
            return middle;
        }
    }
    return -1;
}

@end
