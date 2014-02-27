/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUPropertyTypeURLComponents.h"

@implementation MOZUPropertyTypeURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForGetPropertyTypesOperationWithPageSize:(NSNumber*)pageSize startIndex:(NSNumber*)startIndex {
	NSString* template = @"/api/content/propertytypes/?pageSize={pageSize}&startIndex={startIndex}";
	NSDictionary* params = @{
		@"pageSize" : pageSize,
		@"startIndex" : startIndex,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForGetPropertyTypeOperationWithPropertyTypeName:(NSString*)propertyTypeName {
	NSString* template = @"/api/content/propertytypes/{propertyTypeName}";
	NSDictionary* params = @{
		@"propertyTypeName" : propertyTypeName,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForPropertyValueTypesOperation {
	NSString* template = @"/api/content/propertytypes/propertyvaluetypes";
	NSDictionary* params = nil;

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


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