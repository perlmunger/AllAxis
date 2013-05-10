//
//  MLViewController.m
//  AllAxis
//
//  Created by Matt Long on 5/10/13.
//  Copyright (c) 2013 Matt Long. All rights reserved.
//

#import "MLViewController.h"

#define kRotationMaxInDegrees 180.0f;

@interface MLViewController ()

@end

@implementation MLViewController

- (void)viewDidLoad
{
  [super viewDidLoad];

}

- (IBAction)sliderDidChange:(id)sender
{
  [self setTransforms];
}

- (void)setTransforms
{
  CGFloat x = [_xSlider value];
  CGFloat y = [_ySlider value];
  CGFloat z = [_zSlider value];
  
  CATransform3D transform = CATransform3DIdentity;
  transform.m34 = 1.0f/-800.0f; // perspective
  
  CGFloat rotationValue = x * kRotationMaxInDegrees;
  
  transform = CATransform3DRotate(transform, degreesToRadians(rotationValue), 1.0f, 0.0f, 0.0f);
  
  rotationValue = y * kRotationMaxInDegrees;
  
  transform = CATransform3DRotate(transform, degreesToRadians(rotationValue), 0.0f, 1.0f, 0.0f);

  rotationValue = z * kRotationMaxInDegrees;
  
  transform = CATransform3DRotate(transform, degreesToRadians(rotationValue), 0.0f, 0.0f, 1.0f);

  [[_rotationView layer] setTransform:transform];


  // You can do it this way too, but then you don't get perspective.
  
//  CGFloat rotationValue = x * 180.0f;
//
//  [[_rotationView layer] setValue:@(degreesToRadians(rotationValue)) forKeyPath:@"transform.rotation.x"];  
//  
//  rotationValue = y * 180.0f;
//  
//  [[_rotationView layer] setValue:@(degreesToRadians(rotationValue)) forKeyPath:@"transform.rotation.y"];
//  
//  rotationValue = z * 180.0f;
//  
//  [[_rotationView layer] setValue:@(degreesToRadians(rotationValue)) forKeyPath:@"transform.rotation.z"];
  
}

@end
