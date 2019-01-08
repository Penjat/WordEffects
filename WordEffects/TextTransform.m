//
//  TextTransform.m
//  WordEffects
//
//  Created by Spencer Symington on 2019-01-07.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import "TextTransform.h"

@implementation TextTransform

+(NSString*)TransformToEmoji:(NSString*)input{
    //transforms every letter to a random emoji
    NSArray *emojis = @[@"❤️",@"😘",@"😊",@"😀",@"😁",@"😋",@"👿",@"😹",@"😵",@"🤢",@"😪"];
    NSMutableString *emojiString = [@"" mutableCopy];
    for(int i=0;i< ([input length]-1);i++){
        int r = arc4random_uniform((int)([emojis count]));
        
        NSString *emoji = [emojis objectAtIndex:r];
        [emojiString appendString:emoji];
    }
    
    return [emojiString copy];
}

@end
