
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdminLocationInventoryClient.h"
#import "MOZUAdminLocationInventoryResource.h"


@interface MOZUAdminLocationInventoryResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@property(readwrite, nonatomic) MOZUDataViewMode dataViewMode;
@end

@implementation MOZUAdminLocationInventoryResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext dataViewMode:(MOZUDataViewMode) dataViewMode {
	if (self = [super init]) {
		self.apiContext = apiContext;
		self.dataViewMode = dataViewMode;
		return self;
	}
	else {
		return nil;
	}
}

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification {
	MOZUAPIContext* cloned = [self.apiContext cloneWith:apiContextModification];
	return [self initWithAPIContext:cloned dataViewMode:self.dataViewMode];
}

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of a product's active inventory at the location specified in the request.
@param locationCode The unique, user-defined code that identifies a location. 
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)locationInventoryWithLocationCode:(NSString *)locationCode productCode:(NSString *)productCode responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminLocationInventory *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAdminLocationInventoryClient clientForGetLocationInventoryOperationWithDataViewMode:self.dataViewMode locationCode:locationCode productCode:productCode responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves a list of all product inventory definitions for the location code specified in the request.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param locationCode The unique, user-defined code that identifies a location. 
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

- (void)locationInventoriesWithLocationCode:(NSString *)locationCode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminLocationInventoryCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAdminLocationInventoryClient clientForGetLocationInventoriesOperationWithDataViewMode:self.dataViewMode locationCode:locationCode startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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
Creates an array of product inventory definitions for the location specified in the request. When adding a new inventory definition, you must specify the productCode and stockOnHand value in each array you define. All other properties are system-supplied and read only.
@param body Properties of an inventory definition that defines the level of inventory for a specific product at a given location.
@param locationCode The unique, user-defined code that identifies a location. 
@param performUpserts Query string parameter lets the service perform an update for a new or existing record. When run, the update occurs without throwing a conflict exception that the record exists. If true, the updates completes regardless of the record currently existing. By default, if no value is specified, the service assumes this value is false.
*/

- (void)addLocationInventoryWithBody:(NSArray<MOZUAdminLocationInventory> *)body locationCode:(NSString *)locationCode performUpserts:(NSNumber *)performUpserts completionHandler:(void(^)(NSArray<MOZUAdminLocationInventory> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAdminLocationInventoryClient clientForAddLocationInventoryOperationWithDataViewMode:self.dataViewMode body:body locationCode:locationCode performUpserts:performUpserts];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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
Updates the active stock on hand inventory of products for the location code specified in the request.
@param body Properties of an adjustment to the active product inventory of a specific location.
@param locationCode The unique, user-defined code that identifies a location. 
*/

- (void)updateLocationInventoryWithBody:(NSArray<MOZULocationInventoryAdjustment> *)body locationCode:(NSString *)locationCode completionHandler:(void(^)(NSArray<MOZUAdminLocationInventory> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAdminLocationInventoryClient clientForUpdateLocationInventoryOperationWithDataViewMode:self.dataViewMode body:body locationCode:locationCode];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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
Deletes the product code inventory definition for the location specified in the request.
@param locationCode The unique, user-defined code that identifies a location. 
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

- (void)deleteLocationInventoryWithLocationCode:(NSString *)locationCode productCode:(NSString *)productCode completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAdminLocationInventoryClient clientForDeleteLocationInventoryOperationWithDataViewMode:self.dataViewMode locationCode:locationCode productCode:productCode];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end