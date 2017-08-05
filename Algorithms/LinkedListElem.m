//
//  LinkedListElem.m
//  Algorithms
//
//  Created by Marianne Glad on 7/29/1/Users/marianneglad/Documents/Algorithms_in_obj_c/Algorithms/Algorithms/LinkedListElem.m7.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import "LinkedListElem.h"

@implementation LinkedListElem

- (instancetype)initWithNext:(LinkedListElem*)aNext Value:(int)aValue
{
    self = [super init];
    if (self) {
        self.Next = aNext;
        self.Value = aValue;
    }
    return self;
}

@end
