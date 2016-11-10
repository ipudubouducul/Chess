//
//  Roi.m
//  Chess
//
//  Created by Etudiant on 16-10-25.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import "Roi.h"

@implementation Roi
{
    bool hasMoved;
}

@synthesize nom, color, xPosition, yPosition;

-(void) initialiserNom
{
    nom = @"ROI";
}

-(void) setHasMoved: (bool) value
{
    hasMoved = value;
}

-(bool) hasMoved
{
    return hasMoved;
}

-(bool) isValidMove:(int)line :(int)column
{
    int xDisplacement = abs(column - xPosition);
    int yDisplacement = abs(line - yPosition);
    
    if (xDisplacement >= 2 || yDisplacement >= 2) {
        return false;
    } else if (xDisplacement == 0 && yDisplacement == 0) {
        return false;
    } else {
        return true;
    }
}

@end
