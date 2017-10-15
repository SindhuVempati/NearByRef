//
//  ArrayClass.h
//  NearBy
//
//  Created by sv1013 on 27/01/15.
//  Copyright (c) 2015 Commscope. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArrayClass : NSObject
{
    NSArray *locArray;
    NSArray *imageArray;
    NSArray *mainImgArray;
    NSArray *placeArray;
    NSArray *latLongArray;
}
-(NSArray*)locationNames;

-(NSArray*)removeall;
-(NSArray*)mainListImages;


-(NSArray*)golconda;
-(NSArray*)balaji;
-(NSArray*)birlaMandir;
-(NSArray*)botanicalPark;
-(NSArray*)charminar;
-(NSArray*)chowmohall;
-(NSArray*)durgam;
-(NSArray*)hitechcity;
-(NSArray*)hussain;
-(NSArray*)kbr;
-(NSArray*)museum;
-(NSArray*)nehruzoo;
-(NSArray*)nizam;
-(NSArray*)osman;
-(NSArray*)salarjung;
-(NSArray*)shameerpet;
-(NSArray*)taramati;

-(NSArray*)locLatitudes;
-(NSArray*)locLongitudes;

-(NSArray*)Imageset;

-(NSArray*)locUrls;






@end
