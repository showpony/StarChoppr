//
//  ViewController.h
//  StarRatingDemo
//
//  Created by Matthew Martindale on 6/24/13.
//  Copyright (c) 2013 Matthew Martindale. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StarChoppr.h"

@interface ViewController : UIViewController

@property (nonatomic, retain) IBOutlet UISlider *starSlider;
@property (nonatomic, retain) IBOutlet UILabel *ratingLabel;
@property (nonatomic, retain) IBOutlet UIImageView *starRatingImageView;

@property (nonatomic, retain) IBOutlet UIButton *button1;
@property (nonatomic, retain) IBOutlet UIButton *button2;
@property (nonatomic, retain) IBOutlet UIButton *button3;
@property (nonatomic, retain) IBOutlet UIButton *button4;
@property (nonatomic, retain) IBOutlet UIButton *button5;

- (IBAction)updateRating:(id)sender;

@end
