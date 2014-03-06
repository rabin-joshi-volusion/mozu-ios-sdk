
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductReservationClient.h"
#import "MOZUProductReservationResource.h"



@interface MOZUProductReservationResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end


@implementation MOZUProductReservationResource


-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
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
Retrieves a list of product reservations according to any specified filter criteria and sort options.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy 
@param startIndex 
*/

-(void)productReservationsWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductReservationCollection* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUProductReservationClient clientForGetProductReservationsOperationWithDataViewMode:dataViewMode startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of a product reservation.
@param productReservationId Unique identifier of the product reservation.
*/

-(void)productReservationWithDataViewMode:(MOZUDataViewMode)dataViewMode productReservationId:(NSInteger)productReservationId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductReservation* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUProductReservationClient clientForGetProductReservationOperationWithDataViewMode:dataViewMode productReservationId:productReservationId userClaims:userClaims];
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
Creates a new product reservation for a product. This action places a hold on the product inventory for the quantity specified during the ordering process.
@param body Details of the product reservations to add.
@param skipInventoryCheck If true, skip the process to validate inventory when creating this product reservation.
*/

-(void)addProductReservationsWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductReservation>*)body skipInventoryCheck:(NSNumber *)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUProductReservation>* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUProductReservationClient clientForAddProductReservationsOperationWithDataViewMode:dataViewMode body:body skipInventoryCheck:skipInventoryCheck userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Commits a product reservation to decrement the product's inventory by the quantity specified then release the reservation once the order process completed successfully.
@param body List of unique identifiers of the reservations to commit.
*/

-(void)commitReservationsWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductReservation>*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUProductReservationClient clientForCommitReservationsOperationWithDataViewMode:dataViewMode body:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates an existing product reservation for a product.
@param body Properties of the product reservations to update.
@param skipInventoryCheck If true, skip the inventory validation process when updating this product reservation.
*/

-(void)updateProductReservationsWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductReservation>*)body skipInventoryCheck:(NSNumber *)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUProductReservation>* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUProductReservationClient clientForUpdateProductReservationsOperationWithDataViewMode:dataViewMode body:body skipInventoryCheck:skipInventoryCheck userClaims:userClaims];
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
Deletes a product reservation. For example, delete a reservation when an order is not processed to return the product quantity back to inventory.
@param productReservationId Unique identifier of the reservation.
*/

-(void)deleteProductReservationWithDataViewMode:(MOZUDataViewMode)dataViewMode productReservationId:(NSInteger)productReservationId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUProductReservationClient clientForDeleteProductReservationOperationWithDataViewMode:dataViewMode productReservationId:productReservationId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end