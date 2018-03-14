//
//  main.m
//  PingPong
//
//  Created by ITMAC1 on 1/24/18.
//  Copyright © 2018 Senior Life Insurance Company. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    // Initilizing Nate & Kyle's scores to zero
    int nateScore = 0;
    int kyleScore = 0;

    // Setting minimum conditons to win the game
    int winScore = 21;
    int scoreDifference = 2;
    
    do {
        // Assigning points (0 or 1) to Nate & Kyle in each round
        nateScore = nateScore + arc4random()%2;
        kyleScore = kyleScore + arc4random()%2;
        NSLog(@"NATE: %d", nateScore);
        NSLog(@"KYLE: %d", kyleScore);
        NSLog(@"\n");
    } while (!(((nateScore >= winScore) && (nateScore >= kyleScore + scoreDifference)) || ((kyleScore >= winScore) && (kyleScore >= nateScore + scoreDifference))));
    
    if (nateScore > kyleScore) {
        NSLog(@"Congratulations NATE, You WON!!!. Your score: %d", nateScore);
    }
    
    else {
        NSLog(@"Congratulations KYLE, You WON!!!. Your score: %d", kyleScore);
    }
    
    return 0;
}
