//
//  SingularIntegrationFactory.m
//  Segment-Singular-iOS
//
//  Created by Eyal Rabinovich on 29/05/2019.
//  Copyright © 2019 Singular Labs. All rights reserved.
//

#import "SingularIntegrationFactory.h"
#import "SingularIntegation.h"

@implementation SingularIntegrationFactory

+ (instancetype)instance {
    static dispatch_once_t once;
    static SingularIntegrationFactory *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init {
    self = [super init];
    return self;
}

- (id<SEGIntegration>)createWithSettings:(NSDictionary *)settings forAnalytics:(SEGAnalytics *)analytics
{
    return [[SingularIntegation alloc] initWithSettings:settings];
}

- (nonnull NSString *)key {
    return @"Singular";
}

+(void)setSKANOptions:(BOOL)skAdNetworkEnabled isManualSkanConversionManagementMode:(BOOL)manualMode withWaitForTrackingAuthorizationWithTimeoutInterval:(NSNumber* _Nullable)waitTrackingAuthorizationWithTimeoutInterval withConversionValueUpdatedHandler:(void(^_Nullable)(NSInteger))conversionValueUpdatedHandler {
    [SingularIntegation setSKANOptions:skAdNetworkEnabled isManualSkanConversionManagementMode:manualMode withWaitForTrackingAuthorizationWithTimeoutInterval:waitTrackingAuthorizationWithTimeoutInterval withConversionValueUpdatedHandler:conversionValueUpdatedHandler];
}

@end
