//
//  SingularIntegrationFactory.h
//  Segment-Singular-iOS
//
//  Created by Eyal Rabinovich on 29/05/2019.
//  Copyright © 2019 Singular Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#if defined(__has_include) && __has_include(<Analytics/SEGAnalytics.h>)
#import <Analytics/SEGIntegrationFactory.h>
#else
@import Segment;
#endif

@interface SingularIntegrationFactory : NSObject<SEGIntegrationFactory>
+ (instancetype)instance;
@end
