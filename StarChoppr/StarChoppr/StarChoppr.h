//
//  StarChoppr.h
//
//  Created by Matthew Martindale on 6/23/13.
//
//


#import <Foundation/Foundation.h>
#include <math.h>


@interface StarChoppr : NSObject

- (UIImage *)starImageFromRating:(double)rating outOfPossibleRating:(double)possible withOnStarImageNamed:(NSString *)onStarImageName andOffStarImageNamed:(NSString *)offStarImageName;

@end
