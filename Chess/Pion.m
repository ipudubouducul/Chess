//
//  Pion.m
//  Chess
//
//  Created by Etudiant on 16-10-25.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import "Pion.h"

@implementation Pion

@synthesize nom, color, xPosition, yPosition;

-(void) initialiserNom
{
    nom = @"PION";
}

-(bool) isValidMove:(int)line :(int)column
{
    int newXPos = column;
    int newYPos = line;
    
    if ([color  isEqual: @"black"]) {
        return [self blackPawn : line : column] ;
    } else {
        return [self whitePawn: line : column];
    }
}

-(bool) blackPawn:(int)line :(int)column
{
    bool stdMove = ((line - yPosition == -1) || (line == 6 && line - yPosition == -2));
    
    return (stdMove);
}

-(bool) whitePawn:(int)line :(int)column
{
    bool stdMove = ((line - yPosition == 1) || (line == 1 && line - yPosition == 2));
    
    return (stdMove);
}

@end
