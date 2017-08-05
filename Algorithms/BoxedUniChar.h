//
//  UniChar.h
//  Algorithms
//
//  Created by Marianne Glad on 7/30/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BoxedUniChar : NSObject<NSCopying>
@property (nonatomic) unichar value;

+ (BoxedUniChar*) withUniChar : (unichar) aChar;
@end
