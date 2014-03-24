
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZURuntimeCategoryClient.h"
#import "MOZURuntimeCategoryResource.h"



@interface MOZURuntimeCategoryResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZURuntimeCategoryResource


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
Retrieves a list of categories according to any specified filter criteria and sort options.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. You can filter product category search results by any of its properties, including its position in the category hierarchy. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). <b>For example - "filter=IsDisplayed+eq+true"</b>
@param pageSize Used to create paged results from a query. Specifies the number of results to display on each page. Maximum: 200.
@param sortBy 
@param startIndex 
*/

- (void)categoriesWithFilter:(NSString *)filter startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZURuntimeCategoryPagedCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZURuntimeCategoryClient clientForGetCategoriesOperationWithFilter:filter startIndex:startIndex pageSize:pageSize sortBy:sortBy userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of a single category.
@param allowInactive If true, allow inactive categories to be retrieved in the category list response. If false, the categories retrieved will not include ones marked inactive.
@param categoryId Unique identifier for the storefront container used to organize products.
*/

- (void)categoryWithCategoryId:(NSInteger)categoryId allowInactive:(NSNumber *)allowInactive userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZURuntimeCategory *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZURuntimeCategoryClient clientForGetCategoryOperationWithCategoryId:categoryId allowInactive:allowInactive userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the list of product categories that appear on the storefront organized in a hierarchical format. Hidden categories do not appear in the list.
*/

- (void)categoryTreeWithUserClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZURuntimeCategoryCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZURuntimeCategoryClient clientForGetCategoryTreeOperationWithUserClaims:userClaims];
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