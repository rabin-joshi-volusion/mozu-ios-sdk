
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



@protocol MOZUAppDevPackage
@end


/**
	Properties of a development or release package of theme asset or application configuration files.
*/
@interface MOZUAppDevPackage : JSONModel<MOZUAppDevPackage>

@property(nonatomic) NSInteger applicationVersionId;

@property(nonatomic) NSInteger assetFileCount;

@property(nonatomic) NSInteger id;

@property(nonatomic) BOOL isDeleted;

@property(nonatomic) BOOL isLocked;

@property(nonatomic) BOOL isReleasePackage;

@property(nonatomic) NSString* name;

@property(nonatomic) NSString* userId;

@property(nonatomic) AuditInfo auditInfo;

@end

