//
//  ViewController.m
//  StarRatingDemo
//
//  Created by Matthew Martindale on 6/24/13.
//  Copyright (c) 2013 Matthew Martindale. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize starRatingImageView, starSlider, ratingLabel;
@synthesize button1, button2, button3, button4, button5;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [ratingLabel setFrame:CGRectMake(82, 100, 156, 85)];
    ratingLabel.textAlignment = NSTextAlignmentCenter;
    [ratingLabel setFont:[UIFont systemFontOfSize:72]];    
    
    StarChoppr *starRatingImageGenerator = [[StarChoppr alloc]init];
    UIImage *temp = [starRatingImageGenerator starImageFromRating:2.5f outOfPossibleRating:5 withOnStarImageNamed:@"LargeStarOn" andOffStarImageNamed:@"LargeStarOff"];
    [starRatingImageView setImage:temp];    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction) sliderValueChanged:(UISlider *)sender {
    ratingLabel.text = [NSString stringWithFormat:@"%.1f", [sender value]];
    ratingLabel.textAlignment = NSTextAlignmentCenter;

    StarChoppr *starRatingImageGenerator = [[StarChoppr alloc]init];
    UIImage *temp = [starRatingImageGenerator starImageFromRating:[sender value] outOfPossibleRating:5 withOnStarImageNamed:@"LargeStarOn" andOffStarImageNamed:@"LargeStarOff"];
    [starRatingImageView setImage:temp];
}

- (IBAction)updateRating:(id)sender {
    
    switch ([sender tag]) {
        case 1:
            [self.starSlider setValue:1];
            break;
        case 2:
            [self.starSlider setValue:2];
            break;
        case 3:
            [self.starSlider setValue:3];
            break;
        case 4:
            [self.starSlider setValue:4];
            break;
        case 5:
            [self.starSlider setValue:5];
            break;
    }
    [self.button1 setHighlighted:NO];
    [self.button2 setHighlighted:NO];
    [self.button3 setHighlighted:NO];
    [self.button4 setHighlighted:NO];
    [self.button5 setHighlighted:NO];
    
    [self sliderValueChanged:self.starSlider];
}

- (IBAction)highlightStars:(id)sender {
    
    switch ([sender tag]) {
        case 1:
            [self.button1 setHighlighted:YES];
            break;
        case 2:
            [self.button1 setHighlighted:YES];
            [self.button2 setHighlighted:YES];
            break;
        case 3:
            [self.button1 setHighlighted:YES];
            [self.button2 setHighlighted:YES];
            [self.button3 setHighlighted:YES];
            break;
        case 4:
            [self.button1 setHighlighted:YES];
            [self.button2 setHighlighted:YES];
            [self.button3 setHighlighted:YES];
            [self.button4 setHighlighted:YES];
            break;
        case 5:
            [self.button1 setHighlighted:YES];
            [self.button2 setHighlighted:YES];
            [self.button3 setHighlighted:YES];
            [self.button4 setHighlighted:YES];
            [self.button5 setHighlighted:YES];
            break;
    }
}

@end
