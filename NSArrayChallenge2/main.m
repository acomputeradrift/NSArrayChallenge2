//
//  main.m
//  NSArrayChallenge2
//
//  Created by Jamie on 2018-07-07.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    @autoreleasepool {
        // Read in words file as a huge string (ignoring the possibility of an error)
        NSString *wordsString =
        [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                  encoding:NSUTF8StringEncoding
                                     error:NULL];
        // Break it into an array of strings
        NSArray *words = [wordsString componentsSeparatedByString:@"\n"];
        
 //-------------------------------------------------------------------------------------
        // Read in proper names file as a huge string (ignoring the possibility of an error)
        NSString *nameString =
        [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                  encoding:NSUTF8StringEncoding
                                     error:NULL];
        // Break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
 //--------------------------------------------------------------------------------------
        //[myArray objectAtIndex:i]
        // Go through the array one string at a time
        
        for (NSString *n in words) {
              // NSLog(@"%@", n);
            if ([n isEqual:names[0]])
            {
            NSLog(@"We have a match: %@ with %@", n, names[0]);
             
            // Look for the string "aa" in a case-insensitive manner
            //NSRange r = [n rangeOfString:((void)("%@"), names) options:NSCaseInsensitiveSearch];
            }
            else {
                NSLog(@"%@ and %@ do not match", n, names[0]);
            }
        }
        
            }
     return 0;
        }




//first pull in the words dictionary into an array
//then pull in the proper names dictionary into an array
//compare the two to pull out the words that are not Proper names by case sensitive search into new array notProper
//( if properNames array location 1 = words location 1 then add to notProper array at next location)
//if PN location 2 = word location 1 then
//compare proper to not proper for matches and add to new array
