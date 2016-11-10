//
//  Echiquier.h
//  Chess
//
//  Created by Etudiant on 16-10-25.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Echiquier : NSObject

-(void) initEchiquier;
-(NSString*) getCaseID : (int) line : (int) column;
-(void) setOccupied : (int) line : (int) column : (bool) value;
-(bool) isOccupied : (int) line : (int) column;

-(void) setFromLine : (int) value;
-(void) setFromColumn :(int)value;

-(void) setToLine : (int) value;
-(void) setToColumn :(int)value;

@end
