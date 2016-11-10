//
//  Chevalier.m
//  Chess
//
//  Created by Etudiant on 16-10-25.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import "Chevalier.h"

@implementation Chevalier

@synthesize nom, color, xPosition, yPosition;

-(void) initialiserNom
{
    nom = @"CHEVALIER";
}

-(bool) isValidMove:(int)line :(int)column
{
    if (line == yPosition + 2 || line == yPosition - 2) {
        if (column == xPosition + 1 || column == xPosition - 1) {
            return true;
        }
    }
    
    if (line == yPosition + 1 || line == yPosition - 1) {
        if (column == xPosition + 2 || column == xPosition - 2) {
            return true;
        }
    }
    
    return false;
}

@end
