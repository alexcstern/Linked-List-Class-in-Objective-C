#import <Foundation/NSObject.h>
#import <stdio.h>

@interface ListNode : NSObject
{
  @private
  int number;
  ListNode * nextNode;
}

- (id) number: (int) n_value;
- (int) number;
- (id) nextNode: (ListNode*) n_node;
- (ListNode*) nextNode;
@end

@implementation ListNode

- (id) number: (int) n_value
{
  number = n_value;
  return self;
}

- (int) number
{
  return number;
}

- (id) nextNode: (ListNode*) n_node
{
  nextNode = n_node;
  return self;
}

- (ListNode*) nextNode
{
  return nextNode;
}

@end

int main (void) {

  int n;
  printf("Enter how many values to input: ");
  scanf("%d", &n);

  int i;
  int val;
  int scan;
  ListNode * prev;
  ListNode * first;
  for (i = 0; i < n; i++) {
    val = i + 1;
    printf("Enter value %d: ", val);
    scanf("%d", &scan);
    ListNode * newNode = [ListNode new];
    [newNode number: scan];
    if (i != 0) {
      [prev nextNode: newNode];
    }
    else {
      first = newNode;
    }
    prev = newNode;
  }

  int value;
  
  for (i = 0; i < n; i++) {
    value = [first number];
    printf("%d\n", value);
    first = [first nextNode];
  }

  [prev release];
  [first release];

  for (i = 0; i < n; i++) {
    first = [first nextNode];
    [first release];
  }


  
  return 0;
}
