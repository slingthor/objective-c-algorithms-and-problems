//
//  Factorial.m
//  Algorithms
//
//  Created by Marianne Glad on 7/30/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import "Factorial.h"

@implementation Factorial

- (int) factorial : (int) num
{
    if(num > 1 )
    {
        return [self factorial:num-1]*num;
    }
    else
    {
        return 1;
    }
}

@end
