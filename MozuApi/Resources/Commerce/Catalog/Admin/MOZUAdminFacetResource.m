
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdminFacetClient.h"
#import "MOZUAdminFacetResource.h"



@interface MOZUAdminFacetResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZUAdminFacetResource


- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a facet specified by its unique identifier and displays its properties.
@param facetId Unique identifier of the facet to retrieve.
@param validate Validates that the product category associated with a facet is active. System-supplied and read only.
*/

- (void)facetWithDataViewMode:(MOZUDataViewMode)dataViewMode facetId:(NSInteger)facetId validate:(NSNumber *)validate userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAdminFacet *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAdminFacetClient clientForGetFacetOperationWithDataViewMode:dataViewMode facetId:facetId validate:validate userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves a list of the facets defined for the specified category.
@param categoryId Unique identifier of the category associated with the facets to retrieve.
@param includeAvailable If true, returns a list of the attributes and categories associated with a product type that have not been defined as a facet for the category.
@param validate Validates that the product category associated with a facet is active. System-supplied and read only.
*/

- (void)facetCategoryListWithDataViewMode:(MOZUDataViewMode)dataViewMode categoryId:(NSInteger)categoryId includeAvailable:(NSNumber *)includeAvailable validate:(NSNumber *)validate userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUFacetSet *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAdminFacetClient clientForGetFacetCategoryListOperationWithDataViewMode:dataViewMode categoryId:categoryId includeAvailable:includeAvailable validate:validate userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new category, price, or attribute facet. Supply the category or attribute source to use for the facet values.
@param body Properties of the new facet to create. Required properties: Source, FacetType, IsHidden, and CategoryId.
*/

- (void)addFacetWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminFacet *)body userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAdminFacet *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAdminFacetClient clientForAddFacetOperationWithDataViewMode:dataViewMode body:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Modifies one or more properties of a defined facet.
@param body Properties of the defined facet to modify. Required properties: Source, FacetType, IsHidden, and CategoryId.
@param facetId Unique identifier of the facet to modify.
*/

- (void)updateFacetWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminFacet *)body facetId:(NSInteger)facetId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAdminFacet *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAdminFacetClient clientForUpdateFacetOperationWithDataViewMode:dataViewMode body:body facetId:facetId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the facet specified by its unique identifier.
@param facetId Unique identifier of the facet to delete.
*/

- (void)deleteFacetByIdWithDataViewMode:(MOZUDataViewMode)dataViewMode facetId:(NSInteger)facetId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAdminFacetClient clientForDeleteFacetByIdOperationWithDataViewMode:dataViewMode facetId:facetId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end