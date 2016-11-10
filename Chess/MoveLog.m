//
//  MoveLog.m
//  Chess
//
//  Created by Zi_Wang on 2016-11-09.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import "MoveLog.h"

@implementation MoveLog
{
    NSMutableArray* whiteMoves;
    NSMutableArray* blackMoves;
}

-(void) initLog
{
    whiteMoves = [[NSMutableArray alloc] init];
    blackMoves = [[NSMutableArray alloc] init];
}

-(void) standardMove:(Piece *)piece :(MovingPosition *)destination :(bool)isTakingPiece :(bool)isCheckingKing
{
    NSString* move;
    
    move = [move stringByAppendingString: [self convertXPosIntoString:piece]];
    move = [move stringByAppendingString: [self convertYPosIntoString:piece]];
    
    if (isTakingPiece)
    {
        [move stringByAppendingString: @"x"];
    }
    else
    {
        [move stringByAppendingString:@"-"];
    }
    
    move = [move stringByAppendingString:[self convertXPosIntoStringDestination:destination]];
    move = [move stringByAppendingString:[self convertYPosIntoStringDestination:destination]];
    
    if ([piece.color isEqual:@"black"])
    {
        int lastIndex = [blackMoves indexOfObject:[blackMoves lastObject]];
        [blackMoves addObject:move];
    }
    else
    {
        int lastIndex = [whiteMoves indexOfObject:[whiteMoves lastObject]];
        [whiteMoves addObject:move];
    }
}

-(void) rockMove:(Piece *)king :(MovingPosition *)destination
{
    NSString *move;
    
    if (destination.getXPosition ==     6) {
        move = @"o-o";
    } else if (destination.getXPosition == 2) {
        move = @"o-o-o";
    }
    
    if ([king.getCouleur isEqual:@"black"]) {
        [blackMoves addObject:move];
    } else {
        [whiteMoves addObject:move];
    }
}

-(bool) priseEnPassant:(Piece *)pawn :(MovingPosition *)destination
{
    /* Valide si le pion noir a avancé de 2 cases, et le pion blanc a pris le pion noir*/
    if ([[pawn getCouleur] isEqualToString:@"white"] &&
        [[[blackMoves lastObject] substringWithRange:NSMakeRange(4, 1)] isEqual: @"4"] &&
        [[[blackMoves lastObject] substringWithRange:NSMakeRange(1, 1)] isEqual: @"6"])
    {
        if ([[[blackMoves lastObject] substringWithRange:NSMakeRange(3, 1)] isEqual: [self convertXPosIntoString:pawn]])
        {
            return true;
        }
    }
    /* Valide le cas complémentaire*/
    else if ([[[whiteMoves lastObject] substringWithRange:NSMakeRange(4, 1)] isEqual: @"3"] &&
             [[[whiteMoves lastObject] substringWithRange:NSMakeRange(1, 1)] isEqual: @"1"])
    {
        if ([[[whiteMoves lastObject] substringWithRange:NSMakeRange(3, 1)] isEqual: [self convertXPosIntoString:pawn]])
        {
            return true;
        }
    }
    
    return false;
}

-(NSString*) convertXPosIntoString:(Piece *)piece
{
    switch (piece.getXPosition) {
        case 0:
            return @"A";
        case 1:
            return @"B";
        case 2:
            return @"C";
        case 3:
            return @"D";
        case 4:
            return @"E";
        case 5:
            return @"F";
        case 6:
            return @"G";
        case 7:
            return @"H";
            
        default:
            return @"";
    }
}

-(NSString*) convertYPosIntoString:(Piece *)piece
{
    switch (piece.getYPosition) {
        case 0:
            return @"1";
        case 1:
            return @"2";
        case 2:
            return @"3";
        case 3:
            return @"4";
        case 4:
            return @"5";
        case 5:
            return @"6";
        case 6:
            return @"7";
        case 7:
            return @"8";
            
        default:
            return @"";
    }
}

-(NSString*) convertXPosIntoStringDestination :(MovingPosition *) destination
{
    switch (destination.getXPosition) {
        case 0:
            return @"A";
        case 1:
            return @"B";
        case 2:
            return @"C";
        case 3:
            return @"D";
        case 4:
            return @"E";
        case 5:
            return @"F";
        case 6:
            return @"G";
        case 7:
            return @"H";
            
        default:
            return @"";
    }
}

-(NSString*) convertYPosIntoStringDestination :(MovingPosition *) destination
{
    switch (destination.getYPosition) {
        case 0:
            return @"1";
        case 1:
            return @"2";
        case 2:
            return @"3";
        case 3:
            return @"4";
        case 4:
            return @"5";
        case 5:
            return @"6";
        case 6:
            return @"7";
        case 7:
            return @"8";
            
        default:
            return @"";
    }
}

@end
