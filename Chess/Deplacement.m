//
//  Deplacement.m
//  Chess
//
//  Created by Etudiant on 16-10-20.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import "Deplacement.h"

@implementation Deplacement

-(bool) isLegalMove:(Piece *)piece
{
    int xPos = piece.getXPosition;
    int yPos = piece.getYPosition;
    
    return false;
}

-(bool) isRock:(Roi *)roi :(Tour *)tour
{
    if (roi.hasMoved && tour.hasMoved)
    {
        return true;
    }
    else
    {
        return false;
    }
}

-(bool) isTakingPieceWithPawn:(Pion *)pion :(Piece *)piece :(int)line :(int)column
{
    if ([pion.getCouleur  isEqual: @"black"] && [piece.getCouleur isEqual:@"white"])
    {
        if ((line - pion.getYPosition) == -1 && abs(column - pion.getXPosition) == 1)
        {
            return true;
        }
    } else if ([pion.getCouleur  isEqual: @"white"] && [piece.getCouleur isEqual:@"black"])
    {
        if ((line - pion.getYPosition) == 1 && abs(column - pion.getXPosition) == 1)
        {
            return true;
        }
    }
    
    return false;
}

@end
