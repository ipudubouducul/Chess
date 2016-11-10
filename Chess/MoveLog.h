//
//  MoveLog.h
//  Chess
//
//  Created by Zi_Wang on 2016-11-09.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Piece.h"
#import "MovingPosition.h"

@interface MoveLog : NSObject

-(void) initLog;
-(void) standardMove : (Piece*) piece : (MovingPosition*) destination : (bool) isTakingPiece : (bool) isCheckingKing;
-(void) rockMove : (Piece*) king : (MovingPosition*) destination;

-(bool) priseEnPassant : (Piece*) pawn : (MovingPosition*) destination;
-(bool) pawnPromotion : (Piece*) pawn : (MovingPosition*) destination;

-(NSString*) convertXPosIntoString : (Piece*) piece;
-(NSString*) convertYPosIntoString : (Piece*) piece;

-(NSString*) convertXPosIntoStringDestination :(MovingPosition *) destination;
-(NSString*) convertYPosIntoStringDestination :(MovingPosition *) destination;

@end
