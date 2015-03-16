
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

#import "MOZULocationType.h"


@interface MOZULocationTypeResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieve a list of all location types defined for the tenant.
*/

- (void)locationTypesWithCompletionHandler:(void(^)(NSArray<MOZULocationType> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the details of the location type specified in the request.
@param locationTypeCode The user-defined code that identifies the location type.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)locationTypeWithLocationTypeCode:(NSString *)locationTypeCode responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZULocationType *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new location type based on the information specified in the request.
@param body Properties of a type of physical location, such as warehouse or kiosk. Location types enable tenants to group similar locations for filtering and location usage type definition.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)addLocationTypeWithBody:(MOZULocationType *)body responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZULocationType *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates the name of a defined location type.
@param body Properties of a type of physical location, such as warehouse or kiosk. Location types enable tenants to group similar locations for filtering and location usage type definition.
@param locationTypeCode The user-defined code that identifies the location type.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateLocationTypeWithBody:(MOZULocationType *)body locationTypeCode:(NSString *)locationTypeCode responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZULocationType *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the location type specified in the request.
@param locationTypeCode The user-defined code that identifies the location type.
*/

- (void)deleteLocationTypeWithLocationTypeCode:(NSString *)locationTypeCode completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end