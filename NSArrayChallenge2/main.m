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
        //create an mutable array with only non proper names
        
        NSMutableArray *commonall = [NSMutableArray array];
        [commonall addObjectsFromArray:words];
        [commonall removeObjectsInArray:names];
        
 //-------------------------------------------------------------------------------------------
        // Go through the array one string at a time
        
        for (NSString *w in commonall)
        {
            for (NSString *n in names)
            {
                if ([w caseInsensitiveCompare:n] == NSOrderedSame)
                {
                    NSLog(@"Name:%@ = word:%@", n, w);
                }
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
