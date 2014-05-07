//
//  ToDoItem.h
//  ToDoList
//
//  Created by Jason Liu on 5/7/14.
//
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;               // Name of item
@property BOOL completed;                   // Whether item is completed
@property (readonly) NSDate *creationDate;  // Creation date

@end
