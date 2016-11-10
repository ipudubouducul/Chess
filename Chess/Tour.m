//
//  Tour.m
//  Chess
//
//  Created by Etudiant on 16-10-25.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import "Tour.h"

@implementation Tour
{
    bool hasMoved;
}

@synthesize nom, color, xPosition, yPosition;

-(void) initialiserNom
{
    nom = @"TOUR";
}

-(void) setHasMoved:(bool)value
{
    hasMoved = value;
}

-(bool) hasMoved
{
    return hasMoved;
}

-(bool) isValidMove:(int)line :(int)column
{
    if (line == yPosition && column != xPosition) {
        return true;
    }
    
    if (line != yPosition && column == xPosition) {
        return true;
    }
    
    return false;
}

@end
