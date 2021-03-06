
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
#import "MOZUPropertyTypeCollection.h"
#import "MOZUPropertyType.h"


@interface MOZUPropertyTypeClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of the content property types.
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields Use this field to include those fields which are not included by default.
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

+ (MOZUClient *)clientForGetPropertyTypesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex responseFields:(NSString *)responseFields;

/**
Retrieves the details of the content property type.
@param propertyTypeName The name of the property type.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetPropertyTypeOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode propertyTypeName:(NSString *)propertyTypeName responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new
@param body Property type available for content. Property types are like templates that can be reused.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForCreatePropertyTypeOperationWithBody:(MOZUPropertyType *)body responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates a
@param body Property type available for content. Property types are like templates that can be reused.
@param propertyTypeName The name of the property type.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForUpdatePropertyTypeOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUPropertyType *)body propertyTypeName:(NSString *)propertyTypeName responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Delete a specific
@param propertyTypeName The name of the property type.
*/

+ (MOZUClient *)clientForDeletePropertyTypeOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode propertyTypeName:(NSString *)propertyTypeName;



@end