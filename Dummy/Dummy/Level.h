//
//  Level.h
//  FrameworkclientApp
//
//  Created by VEENA on 14/11/20.
//

#import <Foundation/Foundation.h>
@class Character;

NS_ASSUME_NONNULL_BEGIN

@interface Level : NSObject

-(NSArray<Character *>*)allGameCharacters;

@end

NS_ASSUME_NONNULL_END
