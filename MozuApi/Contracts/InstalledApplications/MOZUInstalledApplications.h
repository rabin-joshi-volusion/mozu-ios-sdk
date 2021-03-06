
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
#import "MOZUInstalledApplicationsCapability.h"



@protocol MOZUInstalledApplications
@end


/**
	Properties of an app installed in a tenant.
*/
@interface MOZUInstalledApplications : JSONModel<MOZUInstalledApplications>

/**
Unique identifier of an app available in your Mozu tenant or within Mozu Dev Center. This ID is unique across all apps installed, initialized, and enabled in the Mozu Admin and those in development through the Dev Center Console.
*/
@property(nonatomic) NSString * appId;

/**
Indicates if the capability or app is enabled for the tenant/site. If true, the capability/application is enabled for the tenant. System-supplied and read-only.
*/
@property(nonatomic) NSNumber * enabled;

/**
Indicates if an app is initialized and capable of being enabled in the tenant and site. Apps will need to be installed and configured to become initialized, such as validating credentials and/or API keys with a third-party service. If true, the app is initialized and can be enabled for usage.
*/
@property(nonatomic) NSNumber * initialized;

/**
Indicates if the installed application is of type extension. If true, the application type is Extension.
*/
@property(nonatomic) NSNumber * isExtension;

/**
The URL defined for the application that represents the configuration website for the capability. This value is used by installed applications or the site.
*/
@property(nonatomic) NSString * uiConfigurationUrl;

/**
List of capabilities installed in a tenant.
*/
@property(nonatomic) NSArray<MOZUInstalledApplicationsCapability> *capabilities;

@end

