//
//  ListePieces.m
//  Chess
//
//  Created by Zi_Wang on 2016-11-03.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import "ListePieces.h"

@implementation ListePieces

@synthesize blackPieces, whitePieces;

-(void) initBlackPieces {
    blackPieces = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 8; i++) {
        Pion *pion = [[Pion alloc] init];
        
        [pion setColor:@"black"];
        [pion setID : i + 1];
        [pion setXPosition : i];
        [pion setYPosition : 1];
        
        [blackPieces addObject: pion];
    }
    
    for (int i = 0; i < 2; i++) {
        Tour *tour = [[Tour alloc] init];
        
        [tour setColor:@"black"];
        [tour setYPosition : 0];
        [tour setID : i + 1];
        if (i == 0) {
            [tour setXPosition : 0];
        } else {
            [tour setXPosition : 7];
        }
        
        [blackPieces addObject: tour];
        /***********************************************************/
        Chevalier *chevalier = [[Chevalier alloc] init];
        
        [chevalier setColor:@"black"];
        [chevalier setID : i + 1];
        [chevalier setYPosition : 0];
        if (i == 0) {
            [chevalier setXPosition : 1];
        } else {
            [chevalier setXPosition : 6];
        }
        [blackPieces addObject: chevalier];
        /***********************************************************/
        Fou *fou = [[Fou alloc] init];
        
        [fou setColor:@"black"];
        [fou setID : i + 1];
        [fou setYPosition : 0];
        if (i == 0) {
            [fou setXPosition : 2];
        } else {
            [fou setXPosition : 5];
        }
        [blackPieces addObject: fou];
    }
    /***********************************************************/
    Roi *roi = [[Roi alloc] init];
    
    [roi setColor:@"black"];
    [roi setID : 1];
    [roi setYPosition : 0];
    [roi setXPosition : 4];
    [blackPieces addObject: roi];
    /***********************************************************/
    Dame *dame = [[Dame alloc] init];
    
    [dame setColor:@"black"];
    [dame setID : 1];
    [dame setYPosition : 0];
    [dame setXPosition : 3];
    [blackPieces addObject: dame];
}

-(void) initWhitePieces {
    whitePieces = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 8; i++) {
        Pion *pion = [[Pion alloc] init];
        
        [pion setColor:@"white"];
        [pion setID : i + 1];
        [pion setXPosition : i];
        [pion setYPosition : 6];
        
        [blackPieces addObject: pion];
    }
    
    for (int i = 0; i < 2; i++) {
        Tour *tour = [[Tour alloc] init];
        
        [tour setColor:@"white"];
        [tour setYPosition : 7];
        [tour setID : i + 1];
        if (i == 0) {
            [tour setXPosition : 0];
        } else {
            [tour setXPosition : 7];
        }
        
        [blackPieces addObject: tour];
        /***********************************************************/
        Chevalier *chevalier = [[Chevalier alloc] init];
        
        [chevalier setColor:@"white"];
        [chevalier setID : i + 1];
        [chevalier setYPosition : 7];
        if (i == 0) {
            [chevalier setXPosition : 1];
        } else {
            [chevalier setXPosition : 6];
        }
        [blackPieces addObject: chevalier];
        /***********************************************************/
        Fou *fou = [[Fou alloc] init];
        
        [fou setColor:@"white"];
        [fou setID : i + 1];
        [fou setYPosition : 7];
        if (i == 0) {
            [fou setXPosition : 2];
        } else {
            [fou setXPosition : 5];
        }
        [blackPieces addObject: fou];
    }
    /***********************************************************/
    Roi *roi = [[Roi alloc] init];
    
    [roi setColor:@"white"];
    [roi setID : 1];
    [roi setYPosition : 7];
    [roi setXPosition : 4];
    [blackPieces addObject: roi];
    /***********************************************************/
    Dame *dame = [[Dame alloc] init];
    
    [dame setColor:@"white"];
    [dame setID : 1];
    [dame setYPosition : 7];
    [dame setXPosition : 3];
    [blackPieces addObject: dame];
}
/*
 NSMutableArray* instances = [[NSMutableArray alloc] init];
 [instances addObject: foo];
 [instances addObject: bar];
 // etc. mutable arrays grow as you add elements to them
 
 [[instances objectAtIndex: i] setVar: 10];
 */

@end
