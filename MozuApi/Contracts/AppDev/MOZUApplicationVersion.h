
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
#import "MOZUAuditInfo.h"
#import "MOZUAppDevPackage.h"



@protocol MOZUApplicationVersion
@end


/**
	Properties of a specific version of an application.
*/
@interface MOZUApplicationVersion : JSONModel<MOZUApplicationVersion>

/**
Unique identifier of the application version.
*/
@property(nonatomic) NSInteger id;

/**
The name of the application version.
*/
@property(nonatomic) NSString* name;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo* auditInfo;

/**
Properties of a development package of files for an application version.
*/
@property(nonatomic) NSArray<MOZUAppDevPackage>* devPackages;

/**
Properties of a releasable package of files for an application version.
*/
@property(nonatomic) MOZUAppDevPackage* releasePackage;

@end
