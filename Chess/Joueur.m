//
//  Joueur.m
//  Chess
//
//  Created by Etudiant on 16-10-25.
//  Copyright © 2016 Etudiant. All rights reserved.
//

#import "Joueur.h"

@implementation Joueur
{
    NSString *name;
    NSString *color;
}

-(void) setName: (NSString*) value
{
    name = value;
}

-(void) setColor:(NSString *)value
{
    color = value;
}

@end
