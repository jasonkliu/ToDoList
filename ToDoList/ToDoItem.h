//
//  ToDoItem.h
//  ToDoList
//
//  Created by Jason Liu on 5/7/14.
//
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
