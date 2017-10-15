//
//  LocationViewController.h
//  NearBy
//
//  Created by sv1013 on 09/02/15.
//  Copyright (c) 2015 Commscope. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "Place.h"

@class Place;
@interface LocationViewController : UIViewController<CLLocationManagerDelegate,MKMapViewDelegate>

@property (strong,nonatomic)NSString *strLat;
@property (strong,nonatomic)NSString *strLong;
@property (strong, nonatomic) IBOutlet MKMapView *locMapView;
@property (strong, nonatomic) MKPolyline *pathLine;
@property (strong,nonatomic) MKPolylineView *pathLineView;


@property (strong,nonatomic)Place *locationPlace;

@end
