//
//  Pion.h
//  Chess
//
//  Created by Etudiant on 16-10-25.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Piece.h"

@interface Pion : Piece

-(void) initialiserNom;

-(bool) blackPawn : (int) line : (int) column;
-(bool) whitePawn : (int) line : (int) column;

@end
