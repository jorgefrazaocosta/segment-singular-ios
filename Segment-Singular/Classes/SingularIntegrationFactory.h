//
//  SingularIntegrationFactory.h
//  Segment-Singular-iOS
//
//  Created by Eyal Rabinovich on 29/05/2019.
//  Copyright © 2019 Singular Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#if defined(__has_include) && __has_include(<Analytics/SEGIntegration.h>)
#import <Analytics/SEGIntegrationFactory.h>
#elif defined(__has_include) && __has_include(<Segment/SEGIntegration.h>)
#import <Segment/SEGIntegrationFactory.h>
#else
#import "SEGIntegrationFactory.h"
#endif

NS_ASSUME_NONNULL_BEGIN

@interface SingularIntegrationFactory : NSObject<SEGIntegrationFactory>
+ (instancetype)instance;
@end

NS_ASSUME_NONNULL_END
