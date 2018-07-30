#   **** Part 1 - Bike Tracking ****

#   A new bike sharing service, called SF Bike Share, wants to track bikes as they are checked out.

#   For example, when Bike 1 is checked out, they store it in an array, like:

#   [ 1 ]

#   And when it is returned, they store it in the array again, like:

#   [ 1, 1 ]

#   In other words, a bike that is returned will always have a second entry in the array.

#   For example:

#   [1, 2, 7, 2, 1, 1, 1, 2, 1, 2, 1]

#   Means that:

#   Bike 1 was checked out and returned 3 times.

#   Bike 2 was checked out and returned 2 times.

#   Bike 7 was checked out, but not yet returned.

#   Write a function that returns all bikes that are currently checked out.


#  **** Part 2 - Object Design ****

 # Design SF Bike Share.

  #* SF Bike Share consists of many Bikes.

  #* New Bikes should be able to be created and added to SF Bike Share.

  #* Bikes should be able to be checked out and returned.

  #* The function for seeing checked out bikes from Part 1 should be part of SF Bike Share.

  #* On each Bike, you should be able to track how many times it has been checked out and returned. From the example in Part 1, this means that Bike 1 would show 3, Bike 2 would show 2, and Bike 7 would show 0.

  #* To test your design, create Bike 1, Bike 2, and Bike 7. Then check out and return Bike 1 three times, Bike 2 two times. Check out but do not return Bike 7.
