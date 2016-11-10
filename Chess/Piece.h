//
//  Piece.h
//  Chess
//
//  Created by Etudiant on 16-10-27.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Piece : NSObject

@property NSString *nom;
@property int pieceID;
@property NSString *color;
@property int xPosition;
@property int yPosition;

-(void) setNom : (NSString*) nom;
-(NSString*) getNom;

-(void) setID : (int) value;
-(int) getID;

-(void) setCouleur : (NSString*) valeur;
-(NSString*) getCouleur;

-(void) setPosition: (int)line : (int)column;
-(int) getXPosition;
-(int) getYPosition;

-(bool) isValidMove : (int) line : (int) column;
-(bool) hasBlockedPath : (int) line : (int) column;

@end
