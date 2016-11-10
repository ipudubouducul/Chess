//
//  MovingPosition.h
//  Chess
//
//  Created by Zi_Wang on 2016-11-02.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovingPosition : NSObject

-(void) setPosition : (int) xPosition : (int) yPosition;
-(int) getXPosition;
-(int) getYPosition;

-(bool) isLegalMove;

@end
