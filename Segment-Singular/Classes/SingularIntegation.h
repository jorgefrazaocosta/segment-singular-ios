//
//  SingularIntegation.h
//  Segment-Singular-iOS
//
//  Created by Eyal Rabinovich on 29/05/2019.
//  Copyright © 2019 Singular Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#if defined(__has_include) && __has_include(<Analytics/SEGIntegration.h>)
#import <Analytics/SEGIntegration.h>
#elif defined(__has_include) && __has_include(<Segment/SEGIntegration.h>)
#import <Segment/SEGIntegration.h>
#else
#import "SEGIntegration.h"
#endif

NS_ASSUME_NONNULL_BEGIN

@interface SingularIntegation : NSObject<SEGIntegration>

- (id)initWithSettings:(NSDictionary *)settings;

+ (void)setSKANOptions:(BOOL)skAdNetworkEnabled isManualSkanConversionManagementMode:(BOOL)manualMode withWaitForTrackingAuthorizationWithTimeoutInterval:(NSNumber* _Nullable)waitTrackingAuthorizationWithTimeoutInterval withConversionValueUpdatedHandler:(void(^_Nullable)(NSInteger))conversionValueUpdatedHandler;

@end

NS_ASSUME_NONNULL_END
