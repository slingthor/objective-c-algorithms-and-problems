//
//  LinkedListElem.h
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkedListElem : NSObject
@property (strong,nonatomic) LinkedListElem *Next;
@property (assign, nonatomic) int Value;

- (instancetype)initWithNext:(LinkedListElem*)aNext Value:(int)aValue;

@end
