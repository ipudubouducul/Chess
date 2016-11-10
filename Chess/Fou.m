//
//  Fou.m
//  Chess
//
//  Created by Etudiant on 16-10-25.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import "Fou.h"

@implementation Fou

@synthesize nom, color, xPosition, yPosition;

-(void) initialiserNom
{
    nom = @"FOU";
}

-(bool) isValidMove:(int)line :(int)column
{
    int xDisplacement = abs(line - yPosition);
    int yDisplacement = abs(column - xPosition);
    
    return (xDisplacement == yDisplacement);
}

@end
