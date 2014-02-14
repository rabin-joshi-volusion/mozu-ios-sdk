/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUFacetURL.h"

@implementation MOZUFacetURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetFacetsOperationWithDocumentListName:(NSString*)documentListName propertyName:(NSString*)propertyName {
	NSString* template = @"/api/content/documentlists/{documentListName}/facets/{propertyName}";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"propertyName" : propertyName,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
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