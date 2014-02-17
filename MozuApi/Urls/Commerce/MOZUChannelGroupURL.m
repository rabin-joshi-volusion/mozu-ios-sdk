/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUChannelGroupURL.h"

@implementation MOZUChannelGroupURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetChannelGroupsOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/channelgroups/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"startIndex" : startIndex,
		@"pageSize" : pageSize,
		@"sortBy" : sortBy,
		@"filter" : filter,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetChannelGroupOperationWithCode:(NSString*)code {
	NSString* template = @"/api/commerce/channelgroups/{code}";
	NSDictionary* params = @{
		@"code" : code,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForCreateChannelGroupOperation {
	NSString* template = @"/api/commerce/channelgroups/";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateChannelGroupOperationWithCode:(NSString*)code {
	NSString* template = @"/api/commerce/channelgroups/{code}";
	NSDictionary* params = @{
		@"code" : code,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeleteChannelGroupOperationWithCode:(NSString*)code {
	NSString* template = @"/api/commerce/channelgroups/{code}";
	NSDictionary* params = @{
		@"code" : code,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end