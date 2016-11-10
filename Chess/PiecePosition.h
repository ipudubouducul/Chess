//
//  PiecePosition.h
//  Chess
//
//  Created by Zi_Wang on 2016-11-09.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PiecePosition : NSObject

-(void) setPosition : (int) xValue : (int) yValue;
-(PiecePosition*) getPosition;

@end
