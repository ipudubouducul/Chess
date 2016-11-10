//
//  Tour.h
//  Chess
//
//  Created by Etudiant on 16-10-25.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Piece.h"

@interface Tour : Piece

-(void) initialiserNom;

-(void) setHasMoved : (bool) value;
-(bool) hasMoved;

@end
