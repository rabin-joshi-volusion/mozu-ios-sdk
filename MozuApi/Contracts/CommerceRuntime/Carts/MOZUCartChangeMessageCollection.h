
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
#import "MOZUChangeMessage.h"



@protocol MOZUCartChangeMessageCollection
@end


/**
	Collection of messages logged or created each time the cart was modifed.
*/
@interface MOZUCartChangeMessageCollection : JSONModel<MOZUCartChangeMessageCollection>

/**
The number of commerce runtime cart change messages transactions that can exist in a collection.
*/
@property(nonatomic) NSInteger capacity;

/**
The number of messages in the collection.
*/
@property(nonatomic) NSInteger count;

/**
Container for an item in a collection.
*/
@property(nonatomic) MOZUChangeMessage *item;

@end

