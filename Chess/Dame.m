//
//  Dame.m
//  Chess
//
//  Created by Etudiant on 16-10-25.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import "Dame.h"

@implementation Dame

@synthesize nom, color, xPosition, yPosition;

-(void) initialiserNom
{
    nom = @"DAME";
}

-(bool) isValidMove:(int)line :(int)column
{
    if (line == yPosition && column != xPosition) {
        return true;
    }
    
    if (line != yPosition && column == xPosition) {
        return true;
    }
    
    int xDisplacement = abs(line - yPosition);
    int yDisplacement = abs(column - xPosition);
    if (xDisplacement == yDisplacement) {
        return true;
    }
    
    return false;
}

@end
