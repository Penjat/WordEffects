//
//  main.m
//  WordEffects
//
//  Created by Spencer Symington on 2019-01-07.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TextTransform.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        while(true){
            // 255 unit long array of characters
            char inputChars[255];
            
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputChars);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            // print NSString object
            NSLog(@"Input was: %@", inputString);
            
            printf("Input a number (1-9) to transform your text\n");
            printf("type 0 to see the transformation options\n");
            fgets(inputChars, 255, stdin);
            
            NSString *inputNumber = [NSString stringWithUTF8String:inputChars];
            NSNumber *modValue = @([inputNumber integerValue]);
            
            //if([modValue  isEqual: @1]){
            if([modValue isEqual:@0]){
                printf(" 1 to uppercase \n 2 to lowercase \n 3 to number \n 4 to Canadian \n 5 Get some feedback \n 6 remove spaces \n 7 character count \n zero punctuation \n 9 to random emoji \n ");
                //will have to input your string again but oh well
            }else if([modValue isEqual:@1]){
                
                NSLog(@"%@", [inputString uppercaseString]);
                
            }else if([modValue isEqual:@2]){
                
                NSLog(@"%@", [inputString lowercaseString]);
                
            }else if([modValue isEqual:@3]){
                
                NSNumber *nsintFromString = @([inputString integerValue]);
                
                NSString *testString = [NSString stringWithFormat:@"%li",(long)[nsintFromString integerValue]];
                inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                
                if([testString isEqualTo:inputString]){
                    NSLog(@"the conversion was sucsessful" );
                    NSLog(@"%@", nsintFromString);
                }else{
                    NSLog(@"Not a valid number." );
                    NSLog(@"%@ %@",testString,inputString);
                }
                
                
                
            }else if([modValue isEqual:@4]){
                
                inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                inputString = [inputString stringByAppendingString:@", eh?"];
                NSLog(@"%@", inputString);
                
                
            }
            else if([modValue isEqual:@5]){
                
                //TODO will crash if length is 0
                NSString *lastChar = [inputString substringFromIndex:([inputString length] - 2)];
                NSLog(@"last char = %@",lastChar);
                //Check for ?
                
                
                if([lastChar containsString:@"?"]){
                    NSLog(@"%@",@"I don't know.");
                    
                    
                //Check for !
                }else if([lastChar containsString:@"!"]){
                    NSLog(@"%@",@"Whoa, calm down!");
                }
                
                
            }else if([modValue isEqual:@6]){
                
                
                NSLog(@"%@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@""]);
                
            }
            else if([modValue isEqual:@7]){
                //letter count
                
                
                NSLog(@"the letter count is %lu", [inputString length]-1);
                
            }else if([modValue isEqual:@8]){
                
                inputString = [inputString stringByReplacingOccurrencesOfString:@"." withString:@""];
                inputString = [inputString stringByReplacingOccurrencesOfString:@"?" withString:@""];
                inputString = [inputString stringByReplacingOccurrencesOfString:@"!" withString:@""];
                inputString = [inputString stringByReplacingOccurrencesOfString:@"," withString:@""];
                
                NSLog(@"%@", inputString);
                
            }else if([modValue isEqual:@9]){
                
                NSLog(@"%@",[TextTransform TransformToEmoji:inputString]);
                
                
                
            }else if([modValue isEqual:@10]){
                
                
                
                
                
            }else{
                return 0;
            }
            
        }
    }
    return 0;
}
