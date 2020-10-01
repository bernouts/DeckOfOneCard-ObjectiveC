//
//  BJSCardController.h
//  DeckOfOneCardObjC
//
//  Created by Brenden Smith on 9/29/20.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BJSCard.h"

NS_ASSUME_NONNULL_BEGIN

@interface BJSCardController : NSObject

+ (void)drawANewCard:(NSInteger )numberOfCards completion:(void(^) (NSArray<BJSCard *> *_Nullable cards))completion;

+ (void)fetchCardImage:(BJSCard *)card completion:(void (^) (UIImage *_Nullable image))completion;

@end

NS_ASSUME_NONNULL_END
