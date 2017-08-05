//
//  LinkedList.h
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedListElem.h"

@interface LinkedList : NSObject
@property(strong, nonatomic) LinkedListElem *Head;

- (void) AddElem:(int)Value;
- (NSString *) description;
@end
