//
//  Stack.h
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IStack.h"
#import "StackElem.h"

@interface Stack : NSObject<IStack>
@property(strong, nonatomic) StackElem *head;
@end
