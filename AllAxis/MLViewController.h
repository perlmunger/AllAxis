//
//  MLViewController.h
//  AllAxis
//
//  Created by Matt Long on 5/10/13.
//  Copyright (c) 2013 Matt Long. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MLViewController : UIViewController

@property (nonatomic, weak) IBOutlet UISlider *xSlider;
@property (nonatomic, weak) IBOutlet UISlider *ySlider;
@property (nonatomic, weak) IBOutlet UISlider *zSlider;

@property (nonatomic, weak) IBOutlet UIView *rotationView;

- (IBAction)sliderDidChange:(id)sender;

- (void)setTransforms;

@end
