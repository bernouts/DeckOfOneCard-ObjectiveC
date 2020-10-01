//
//  BJSCard.h
//  DeckOfOneCardObjC
//
//  Created by Brenden Smith on 9/29/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BJSCard : NSObject

@property (nonatomic, copy, readonly) NSString *suit;
@property (nonatomic, copy) NSString *imageString;

- (instancetype)initWithCard:(NSString *)suit
                 imageString:(NSString *)imageString;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
