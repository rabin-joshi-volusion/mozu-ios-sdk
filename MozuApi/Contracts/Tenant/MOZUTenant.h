
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
#import "MOZUTenantMasterCatalog.h"
#import "MOZUSite.h"



@protocol MOZUTenant
@end


/**
	Properties of a tenant, which the logical grouping of all a company's sites and catalogs.
*/
@interface MOZUTenant : JSONModel<MOZUTenant>

/**
The domain information associated with the tenant.
*/
@property(nonatomic) NSString* domain;

/**
Unique identifier of the Mozu tenant.
*/
@property(nonatomic) NSInteger id;

/**
If true, the tenant represents a collection of master catalogs and catalogs for a development tenant, used by a developer account to test applications and themes.
*/
@property(nonatomic) BOOL isDevTenant;

/**
The name of the tenant.
*/
@property(nonatomic) NSString* name;

/**
Collection of master catalogs associated with the tenant.
*/
@property(nonatomic) NSArray<MOZUTenantMasterCatalog>* masterCatalogs;

/**
Collection of sites associated with the tenant.
*/
@property(nonatomic) NSArray<MOZUSite>* sites;

@end
