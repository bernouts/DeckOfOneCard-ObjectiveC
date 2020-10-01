//
//  BJSCard.m
//  DeckOfOneCardObjC
//
//  Created by Brenden Smith on 9/29/20.
//

#import "BJSCard.h"

@implementation BJSCard

- (instancetype)initWithCard:(NSString *)suit imageString:(NSString *)imageString
{
    
    self = [super init];
    
    if (self)
    {
        
        _suit = suit;
        _imageString = imageString;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    
    NSString *suit = dictionary[@"suit"];
    NSString *imageString = dictionary[@"image"];
    
    return [self initWithCard:suit imageString:imageString];
}

@end
