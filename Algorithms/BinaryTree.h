//
//  BinaryTree.h
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTree : NSObject
- (void) add : (int) value;
- (BOOL) contains : (int) value;
- (NSArray*) getSorted;
- (NSString*) description;
@end
