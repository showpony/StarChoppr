//
//  StarRatingImageGenerator.m
//
//  Created by Matthew Martindale on 6/23/13.
//
//

#import "StarChoppr.h"
#import "UIImage-Extensions.h"

@implementation StarChoppr

- (UIImage *)starImageFromRating:(double)rating outOfPossibleRating:(double)possible withOnStarImageNamed:(NSString *)onStarImageName andOffStarImageNamed:(NSString *)offStarImageName {
    NSLog(@"rating=%f", rating);
    
    UIImage *starOn = [UIImage imageNamed:onStarImageName];
    UIImage *starOff = [UIImage imageNamed:offStarImageName];
    double starWidth = starOn.size.width;
    double starHeight = starOn.size.height;
    int positionX = 0;
    int starsDrawn = 0;
    
    UIImageView *smallStarRatingImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, (starWidth * possible), starHeight)];
    
    UIGraphicsBeginImageContextWithOptions(smallStarRatingImage.bounds.size, NO, 0);
    
    while (starsDrawn++ < possible) {
        if (rating >= 1) {
            [starOn drawInRect:CGRectMake(positionX, 0, starWidth, starHeight)];
        }
        else {
            double ratingRoundedDown = floor(rating);
            double remainder = rating - ratingRoundedDown;
            
            [starOff drawInRect:CGRectMake(positionX, 0, starWidth, starHeight)];
            
            if (remainder > 0) {
                rating = rating-remainder;
                
                //we're drawing partial "on" stars on top of whole "off" stars.
                CGRect cropRect = CGRectMake(0, 0, (starWidth * remainder), starHeight);
                UIImage *partial = [starOn imageAtRect:cropRect];   //crop
                [partial drawInRect:CGRectMake(positionX, 0, partial.size.width, starHeight)];
            }
        }
        rating--;
        positionX += starWidth;
    }
    
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return resultImage;
}

@end
