//
//  main.m
//  New-project_5-Calculator
//
//  Created by Geraint on 2018/4/4.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Calculator.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        Calculator *calc = [[Calculator alloc] init];
        NSNumber *addend1 = [NSNumber numberWithInteger:25];
        NSNumber *addend2 = [NSNumber numberWithInteger:10];
        NSNumber *addend3 = [NSNumber numberWithInteger:15];
       // 1、优先这种写法：
        NSLog(@"sum of %@ + %@ = %@",addend1,addend2,
              [calc sumAddend1:addend1 addend2:addend2]);
        NSLog(@"sum of %@ + %@ = %@",addend1,addend3,
              [calc sumAddend1:addend1 :addend3]);
        
        /*
        // 2、出现警告 ”PerformSelector may cause a leak because its selector is unknown“找不到与该选择器匹配的方法，那么方法就会抛出异常，因而可能导致内存泄漏。解决方法：通过向这段代码中添加 pragma 指令，去除警告
#pragma clang dingnostic push
#pragma clang dingnostic ignored "-Warc-performSelector-leaks"
        
        SEL selector1 = @selector(sumAddend1:addend2:);
        id sum1 = [calc performSelector:selector1 withObject:addend1 withObject:addend2];
        NSLog(@"Sum of %@ + %@ = %@",addend1,addend2,sum1);
        
        SEL selector2 = @selector(sumAddend1::);
        id sum2 = [calc performSelector:selector2 withObject:addend1 withObject:addend3];
        NSLog(@"Sum of %@ + %@ = %@",addend1,addend3,sum2);
#pragma clang dingnostic pop
        */
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
