
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "JSONModel.h"



@protocol MOZUPreAuthorizeTransactionTypeDataContract
@end


/**
	The type of preauthorization gateway.
*/
@interface MOZUPreAuthorizeTransactionTypeDataContract : JSONModel<MOZUPreAuthorizeTransactionTypeDataContract>

/**
Description of the preauthorization transaction type.
*/
@property(nonatomic) NSString* description;

/**
Identifier of the entity.
*/
@property(nonatomic) NSInteger id;

/**
The type of preauthorization transaction.
*/
@property(nonatomic) NSString* type;

@end

