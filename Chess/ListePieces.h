//
//  ListePieces.h
//  Chess
//
//  Created by Zi_Wang on 2016-11-03.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Pion.h"
#import "Tour.h"
#import "Chevalier.h"
#import "Fou.h"
#import "Dame.h"
#import "Roi.h"

@interface ListePieces : NSObject

@property NSMutableArray* blackPieces;
@property NSMutableArray* whitePieces;

-(void) initPieces;
-(void) initBlackPieces;
-(void) initWhitePieces;

@end
