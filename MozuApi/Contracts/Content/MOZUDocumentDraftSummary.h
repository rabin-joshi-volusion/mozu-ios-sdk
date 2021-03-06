
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



@protocol MOZUDocumentDraftSummary
@end


/**
	Summary properties of an unpublished document draft.
*/
@interface MOZUDocumentDraftSummary : JSONModel<MOZUDocumentDraftSummary>

/**
Detailed information of the date and time for the active update date for the document draft summary. This data is associated to document and content data.
*/
@property(nonatomic) NSDate * activeUpdateDate;

/**
Fully qualified name of the document type. 
*/
@property(nonatomic) NSString * documentTypeFQN;

/**
Detailed information of the date and time for the draft update date for the document draft summary. This data is associated to document and content data.
*/
@property(nonatomic) NSDate * draftUpdateDate;

/**
Unique identifier of the source product property. For a product field it will be the name of the field. For a product attribute it will be the Attribute FQN. 
*/
@property(nonatomic) NSString * id;

/**
The fully qualified name of the document list.
*/
@property(nonatomic) NSString * listFQN;

/**
The display name of the source product property. For a product field it will be the display name of the field. For a product attribute it will be the Attribute Name.
*/
@property(nonatomic) NSString * name;

/**
Whether the draft has been published.
*/
@property(nonatomic) NSString * publishType;

/**
Unique identifier of the user who last modified the item. This value is system-supplied and read-only.
*/
@property(nonatomic) NSString * updatedBy;

@end

