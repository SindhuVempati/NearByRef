//
//  ArrayClass.m
//  NearBy
//
//  Created by sv1013 on 27/01/15.
//  Copyright (c) 2015 Commscope. All rights reserved.
//

#import "ArrayClass.h"

@implementation ArrayClass


-(NSArray*)locationNames
{
    
    locArray = @[@"Balaji",
                 @"Birla Mandir",
                 @"BotanicalPark",
                 @"Charminar",
                 @"Chowmahalla Palace",
                 @"DurgamCheruvu",
                 @"Golconda",
                 @"HitechCity",
                 @"Hussain Sagar",
                 @"KBR Park",
                 @"Museum",
                 @"Nehru Zoo",
                 @"Nizam Museum",
                 @"OsmanSagar",
                 @"Salarjung",
                 @"Shamirpet lake",
                 @"Taramati"];
    
    return locArray;
}


-(NSArray*)mainListImages
{
    
    mainImgArray = @[@"Bal3.jpg",
                     @"Birla-Mandir.jpg",
                     @"BotanicalPark.jpg",
                     @"Charminar.jpg",
                     @"Chowmahalla-palace.jpg",
                     @"Durgam-Cheruvu.jpg",
                     @"Golconda.jpg",
                     @"HitechCity.jpg",
                     @"HussainSagar.jpg",
                     @"KBR-Park.jpg",
                     @"Museum.jpg",
                     @"NehruZoo.jpg",
                     @"Nizam.jpg",
                     @"OsmanSagar.jpg",
                     @"Salarjung.jpg",
                     @"Shamirpet lake.jpg",
                     @"Taramati.jpg"];
        
    return mainImgArray;
}
-(NSArray*)removeall
{
    
    return locArray;
}
-(NSArray*)golconda
{
    placeArray = @[@"Gol1.jpg",@"Gol2.jpg",@"Gol3.jpg",@"Gol4.jpg",@"Gol5.jpg"];
    return placeArray;
}
-(NSArray*)balaji
{
    placeArray =@[@"Bal1.jpg",@"Bal2.jpg",@"Bal3.jpg",@"Bal4.jpg",@"Bal5.jpg"];
    return placeArray;
}
-(NSArray*)birlaMandir
{
    placeArray = @[@"BM1.jpg",@"BM2.jpg",@"BM3.jpg",@"BM4.jpg",@"BM5.jpg"];
    return placeArray;
}
-(NSArray*)botanicalPark
{
    placeArray = @[@"BP1.jpg",@"BP2.jpg",@"BP3.jpg",@"BP4.jpg",@"BP5.jpg"];
    return placeArray;
}
-(NSArray*)charminar
{
    placeArray = @[@"Char1.jpg",@"Char2.jpg",@"Char3.jpg",@"Char4.jpg",@"Char5.jpg"];
    return placeArray;
}
-(NSArray*)chowmohall
{
    placeArray = @[@"CM1.jpg",@"CM2.jpg",@"CM3.jpg",@"CM4.jpg",@"CM5.jpg"];
    return placeArray;
}
-(NSArray*)durgam
{
    placeArray = @[@"DC1.jpg",@"DC2.jpg",@"DC3.jpg",@"DC4.jpg",@"DC5.jpg"];
    return placeArray;
}
-(NSArray*)hitechcity
{
    placeArray = @[@"CT1.jpg",@"CT2.jpg",@"CT3.jpg",@"CT4.jpg",@"CT5.jpg"];
    return placeArray;
}
-(NSArray*)hussain
{
    placeArray =@[@"HSL1.jpg",@"HSL2.jpg",@"HSL3.jpg",@"HSL4.jpg",@"HSL5.jpg"];
    return placeArray;
}
-(NSArray*)kbr
{
    placeArray=@[@"KBR1.jpg",@"KBR2.jpg",@"KBR3.jpg",@"KBR4.jpg",@"KBR5.jpg"];
    return placeArray;
}
-(NSArray*)museum
{
    placeArray =@[@"MUS1.jpg",@"MUS2.jpg",@"MUS3.jpg",@"MUS4.jpg",@"MUS5.jpg"];
    return placeArray;
}
-(NSArray*)nehruzoo
{
    placeArray =@[@"NZ1.jpg",@"NZ2.jpg",@"NZ3.jpg",@"NZ4.jpg",@"NZ5.jpg"];
    return placeArray;
}
-(NSArray*)nizam
{
    placeArray =@[@"NZM1.jpg",@"NZM2.jpg",@"NZM3.jpg",@"NZM4.jpg",@"NZM5.jpg"];
    return placeArray;
}
-(NSArray*)osman
{
    placeArray =@[@"OSM1.jpg",@"OSM2.jpg",@"OSM3.jpg",@"OSM4.jpg",@"OSM5.jpg"];
    return placeArray;
    
}
-(NSArray*)salarjung
{
    placeArray = @[@"SJ1.jpg",@"SJ2.jpg",@"SJ3.jpg",@"SJ4.jpg",@"SJ5.jpg"];
    return placeArray;
}
-(NSArray*)shameerpet
{
    placeArray = @[@"SL1.jpg",@"SL2.jpg",@"SL3.jpg",@"SL4.jpg",@"SL5.jpg"];
    return placeArray;
}
-(NSArray*)taramati
{
    placeArray = @[@"TM1.jpg",@"TM2.jpg",@"TM3.jpg",@"TM4.jpg",@"TM5.jpg"];
    return placeArray;
}
-(NSArray*)locLatitudes
{
    
    latLongArray = @[@"17.3583",@"17.3800",@"17.4123487",@"17.361564",@"17.3606234",@"17.4313024",@"17.383309",@"17.4425685",@"17.4228755",@"17.420589",@"17.4123487",@"17.351458",@"17.365053",@"17.3743941",@"17.37151",@"17.609615",@"17.376202"];
    
    return latLongArray;
}
-(NSArray*)locLongitudes
{
    latLongArray = @[@"78.2986",@"78.4000",@"78.4080455",@"78.474664",@"78.4707697",@"78.3900694",@"78.401053",@"78.3786845",@"78.4743175",@"78.421558",@"78.4080455",@"78.447318",@"78.482104",@"78.2972269",@"78.480554",@"78.5570896",@"78.378179"];
    
    return latLongArray;
}

-(NSArray*)Imageset
{
    imageArray = @[self.balaji,self.birlaMandir,self.botanicalPark,self.charminar,self.chowmohall,self.durgam,self.golconda,self.hitechcity,self.hussain,self.kbr,self.museum,self.nehruzoo,self.nizam,self.osman,self.salarjung,self.shameerpet,self.taramati];
   
    
    return imageArray;
}

-(NSArray*)locUrls
{
    return locArray;
}








@end
