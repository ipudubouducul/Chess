//
//  Echiquier.m
//  Chess
//
//  Created by Etudiant on 16-10-25.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import "Echiquier.h"

@implementation Echiquier
{
    NSArray *strings;
    bool isOccupied[8][8];
    
    short fromLine;
    short fromColumn;
    
    short toLine;
    short toColumn;
}

-(void) initEchiquier
{
    strings =  @[@[@"A1", @"A2", @"A3", @"A4", @"A5", @"A6", @"A7", @"A8"], @[@"B1", @"B2", @"B3", @"B4", @"B5", @"B6", @"B7", @"B8"], @[@"C1", @"C2", @"C3", @"C4", @"C5", @"C6", @"C7", @"C8"], @[@"D1", @"D2", @"D3", @"D4", @"D5", @"D6", @"D7", @"D8"], @[@"E1", @"E2", @"E3", @"E4", @"E5", @"E6", @"E7", @"E8"], @[@"F1", @"F2", @"F3", @"F4", @"F5", @"F6", @"F7", @"F8"], @[@"G1", @"G2", @"G3", @"G4", @"G5", @"G6", @"G7", @"G8"], @[@"H1", @"H2", @"H3", @"H4", @"HD5", @"H6", @"H7", @"H8"]];
}

-(NSString*) getCaseID:(int)line :(int)column
{
    return [[strings objectAtIndex:line] objectAtIndex:column];
}

-(void) setOccupied:(int)line :(int)column :(bool)value
{
    isOccupied[line][column] = value;
}

-(bool) isOccupied:(int)line :(int)column
{
    return isOccupied[line][column];
}

-(void) setFromLine:(int)value
{
    fromLine = value;
}

-(void) setFromColumn:(int)value
{
    fromColumn = value;
}

-(void) setToLine:(int)value
{
    toLine = value;
}

-(void) setToColumn:(int)value
{
    toColumn = value;
}

@end
