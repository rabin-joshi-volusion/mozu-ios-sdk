
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



@protocol MOZUAdminMasterCatalog
@end


/**
	Properties of a master catalog associated with a tenant.
*/
@interface MOZUAdminMasterCatalog : JSONModel<MOZUAdminMasterCatalog>

/**
The unique identifier of the master catalog associated with the entity.
*/
@property(nonatomic) NSInteger id;

/**
The name of the master catalog.
*/
@property(nonatomic) NSString* name;

/**
The mode this master catalog uses for product updates. Possible values are "Pending" which saves product updates as a draft until they are published, and "Live" which publishes all product updates immediately.
*/
@property(nonatomic) NSString* productPublishingMode;

@end

