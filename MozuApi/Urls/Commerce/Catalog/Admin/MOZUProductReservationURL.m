/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductReservationURL.h"

@implementation MOZUProductReservationURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetProductReservationsOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/catalog/admin/productreservations/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"startIndex" : @(startIndex),
		@"pageSize" : @(pageSize),
		@"sortBy" : sortBy,
		@"filter" : filter,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetProductReservationOperationWithProductReservationId:(NSInteger)productReservationId {
	NSString* template = @"/api/commerce/catalog/admin/productreservations/{productReservationId}";
	NSDictionary* params = @{
		@"productReservationId" : @(productReservationId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForAddProductReservationsOperationWithSkipInventoryCheck:(NSNumber*)skipInventoryCheck {
	NSString* template = @"/api/commerce/catalog/admin/productreservations/?skipInventoryCheck={skipInventoryCheck}";
	NSDictionary* params = @{
		@"skipInventoryCheck" : skipInventoryCheck,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForCommitReservationsOperation {
	NSString* template = @"/api/commerce/catalog/admin/productreservations/commit";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateProductReservationsOperationWithSkipInventoryCheck:(NSNumber*)skipInventoryCheck {
	NSString* template = @"/api/commerce/catalog/admin/productreservations/?skipInventoryCheck={skipInventoryCheck}";
	NSDictionary* params = @{
		@"skipInventoryCheck" : skipInventoryCheck,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeleteProductReservationOperationWithProductReservationId:(NSInteger)productReservationId {
	NSString* template = @"/api/commerce/catalog/admin/productreservations/{productReservationId}";
	NSDictionary* params = @{
		@"productReservationId" : @(productReservationId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}



@end