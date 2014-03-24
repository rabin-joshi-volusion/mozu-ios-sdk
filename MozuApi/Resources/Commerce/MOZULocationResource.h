
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAPIContext.h"

#import "MOZUAuthTicket.h"
#import "MOZULocationCollection.h"
#import "MOZULocation.h"


@interface MOZULocationResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext *apiContext;

- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**

@param code 
*/

- (void)locationWithCode:(NSString *)code userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZULocation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param code 
@param locationUsageType 
*/

- (void)locationInUsageTypeWithLocationUsageType:(NSString *)locationUsageType code:(NSString *)code userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZULocation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param filter 
@param locationUsageType 
@param pageSize 
@param sortBy 
@param startIndex 
*/

- (void)locationsInUsageTypeWithLocationUsageType:(NSString *)locationUsageType startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZULocationCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

*/

- (void)directShipLocationWithUserClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZULocation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param code 
*/

- (void)inStorePickupLocationWithCode:(NSString *)code userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZULocation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param filter 
@param pageSize 
@param sortBy 
@param startIndex 
*/

- (void)inStorePickupLocationsWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZULocationCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end