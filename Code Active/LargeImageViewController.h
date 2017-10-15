//
//  LargeImageViewController.h
//  NearBy
//
//  Created by sv1013 on 27/01/15.
//  Copyright (c) 2015 Commscope. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "Place.h"

@class Place;
@interface LargeImageViewController : UIViewController<CLLocationManagerDelegate,MKMapViewDelegate>


@property (weak, nonatomic) IBOutlet UIImageView *locImageView;

@property (strong,nonatomic)NSString *nameTxt;
- (IBAction)actnImageSet:(UIButton *)sender;
@property (strong,nonatomic) Place *placeObject;
- (IBAction)toMap:(UIButton *)sender;


@end
