//
//  LocationViewController.m
//  NearBy
//
//  Created by sv1013 on 09/02/15.
//  Copyright (c) 2015 Commscope. All rights reserved.
//

#import "LocationViewController.h"
#import "ArrayClass.h"

@interface LocationViewController ()

@end

@implementation LocationViewController
{
    CLLocationManager *locationManager;
    NSArray *placesArray;
 
}
@synthesize strLat,strLong,locMapView,locationPlace;

- (void)viewDidLoad {
    
    [super viewDidLoad];

    
    locationManager = [[CLLocationManager alloc]init];
    [locationManager requestWhenInUseAuthorization];
    locationManager.delegate = self;
    locationManager.desiredAccuracy =kCLLocationAccuracyBest;
    [locationManager startUpdatingLocation];
    
    locMapView.delegate = self;
    [locMapView setMapType:MKMapTypeStandard];
    [locMapView setZoomEnabled:YES];
    [locMapView setScrollEnabled:YES];
    

    
    

    
}
-(MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id<MKOverlay>)overlay
{
    if(overlay == self.pathLine)
    {
        if(nil == self.pathLineView)
        {
            self.pathLineView = [[MKPolylineView alloc] initWithPolyline:self.pathLine];
            self.pathLineView.fillColor = [UIColor blueColor];
            self.pathLineView.strokeColor = [UIColor blueColor];
            self.pathLineView.lineWidth = 5;
            
        }
        
        return self.pathLineView;
    }
    
    return nil;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error
{
    NSLog(@"Did fail with error : %@",error);
    UIAlertView *erroarAlert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Fail to get the locations" delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil];
    [erroarAlert show];
}


-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    
    CLLocation *currentlocation = [locations lastObject];
    strLat = [NSString stringWithFormat:@"%.8f",currentlocation.coordinate.latitude];
    strLong =[NSString stringWithFormat:@"%.8f",currentlocation.coordinate.longitude];
    [locationManager stopUpdatingLocation];
    
    [self drawPathFrom:self.strLat andLong:self.strLong];
}

- (void)drawPathFrom:(NSString*)currentlat andLong:(NSString*)currntlong
{
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate=CLLocationCoordinate2DMake([self.strLat doubleValue], [self.strLong doubleValue]);
    point.title = self.strLat;
    point.subtitle = self.strLong;
    [self.locMapView addAnnotation:point];
    
    
    MKPointAnnotation *point1 = [[MKPointAnnotation alloc] init];
    point1.coordinate=CLLocationCoordinate2DMake([locationPlace.placeLat doubleValue], [locationPlace.placeLong doubleValue]);
    point1.title = locationPlace.Name;
    point1.subtitle = @"Your Destination";
    [self.locMapView addAnnotation:point1];
    
    
    MKCoordinateRegion region;
    region.center.latitude = locationManager.location.coordinate.latitude;
    region.center.longitude =locationManager.location.coordinate.longitude;
    region.span.longitudeDelta = 0.005f;
    region.span.latitudeDelta = 0.005f;
    NSLog(@"%f,%f",region.center.latitude,region.center.longitude);
    [locMapView setRegion:region animated:YES];
    
    
    CLLocationCoordinate2D coordinateArray[2];
    coordinateArray[0] = CLLocationCoordinate2DMake([self.strLat doubleValue] , [self.strLong doubleValue]);
    coordinateArray[1] = CLLocationCoordinate2DMake([locationPlace.placeLat doubleValue], [locationPlace.placeLong doubleValue]);
    
    
    self.pathLine = [MKPolyline polylineWithCoordinates:coordinateArray count:2];
    [self.locMapView setVisibleMapRect:[self.pathLine boundingMapRect]]; //If you want the route to be visible
    
    [self.locMapView addOverlay:self.pathLine];

    
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 80, 80);
    [self.locMapView setRegion:[self.locMapView regionThatFits:region] animated:YES];
    
    
}


@end
