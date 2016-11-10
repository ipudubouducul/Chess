//
//  Piece.m
//  Chess
//
//  Created by Etudiant on 16-10-27.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import "Piece.h"

@implementation Piece

@synthesize nom, pieceID, color, xPosition, yPosition;

-(void) setNom:(NSString *) valeur
{
    nom = valeur;
}

-(NSString*) getNom
{
    return nom;
}

-(void) setID:(int)value
{
    pieceID = value;
}

-(int) getID
{
    return pieceID;
}

-(void) setCouleur:(NSString *)valeur
{
    color = valeur;
}

-(NSString*) getCouleur
{
    return color;
}

-(void) setPosition:(int)line :(int)column
{
    xPosition = column;
    yPosition = line;
}

-(int) getXPosition
{
    return xPosition;
}

-(int) getYPosition
{
    return yPosition;
}


@end
