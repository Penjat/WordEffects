//
//  main.m
//  WordEffects
//
//  Created by Spencer Symington on 2019-01-07.
//  Copyright © 2019 Penjat. All rights reserved.
//

#import <Foundation/Foundation.h>

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
            
            printf("Input a number to modify your text");
            fgets(inputChars, 255, stdin);
            
            NSString *inputNumber = [NSString stringWithUTF8String:inputChars];
            NSNumber *modValue = @([inputNumber integerValue]);
            
            //if([modValue  isEqual: @1]){
            if([inputNumber isEqualToString:@"1\n"]){
                printf("it was 1\n");
                NSLog(@"%@", [inputString uppercaseString]);
                
            }else if([inputNumber isEqualToString:@"2\n"]){
                printf("it was 2\n");
                NSLog(@"%@", [inputString lowercaseString]);
                
            }else if([inputNumber isEqualToString:@"3\n"]){
                printf("it was 3\n");
                NSNumber *nsintFromString = @([inputString integerValue]);
                NSLog(@"%@", nsintFromString);
                
            }else if([inputNumber isEqualToString:@"4\n"]){
                printf("it was 4\n");
                
                NSLog(@"%@", [inputString stringByAppendingString:@", eh?"]);
                
            }
            else if([inputNumber isEqualToString:@"5\n"]){
                printf("it was 5\n");
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
                
                
            }else if([inputNumber isEqualToString:@"6\n"]){
                printf("it was 6\n");
                
                NSLog(@"%@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@""]);
                
            }
            else if([inputNumber isEqualToString:@"7\n"]){
                //letter count
                printf("it was 7\n");
                
                NSLog(@"the letter count is %lu", [inputString length]-1);
                
            }else{
                return 0;
            }
            
        }
    }
    return 0;
}
