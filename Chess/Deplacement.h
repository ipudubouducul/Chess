//
//  Deplacement.h
//  Chess
//
//  Created by Etudiant on 16-10-20.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Piece.h"
#import "Roi.h"
#import "Tour.h"
#import "Pion.h"

@interface Deplacement : NSObject

-(bool) isLegalMove : (Piece*) piece;

-(bool) isRock : (Roi*) roi : (Tour*) tour;
-(bool) isTakingPieceWithPawn : (Pion*) pion : (Piece*) piece : (int) line : (int) column;

@end
