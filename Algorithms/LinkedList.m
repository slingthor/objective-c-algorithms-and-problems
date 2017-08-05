//
//  LinkedList.m
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

-(void) AddElem:(int)Value
{
    if(self.Head == nil)
    {
        self.Head = [[LinkedListElem alloc] initWithNext:nil Value:Value];
    }
    else
    {
        LinkedListElem *newElem = [[LinkedListElem alloc] initWithNext:self.Head Value:Value];
        self.Head = newElem;
    }
}

-(NSString *)description
{
    NSMutableString *mutableString = [[NSMutableString alloc] init];
    
    LinkedListElem* iterator = self.Head;
    
    while(iterator.Next != nil)
    {
        [mutableString appendString:[NSString stringWithFormat:@"%i,", iterator.Value]];
        iterator = iterator.Next;
    }
    [mutableString appendString:[NSString stringWithFormat:@"%i,", iterator.Value]];
    iterator = iterator.Next;
    if(mutableString.length > 2)
        [mutableString deleteCharactersInRange:NSMakeRange(mutableString.length-1, 1)];
    return mutableString;
}

@end
