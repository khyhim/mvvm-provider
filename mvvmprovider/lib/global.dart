/*
|---------------------------------------------
|   
|---------------------------------------------
|   
|  
*/

// import 'models/user.dart';

// class Global {
//   static final Global _global = new Global._internal();

//   String userToken;
//   int userId;
//   User user;

//   //  Collection track
//   List<int> _updatedCollectionIdStack = [];
//   bool _allCollectionIsUpdated = false;

//   //  Home track
//   List<int> _updatedHomeCategoryIdStack = [];
//   bool _allHomeIsUpdated = false;

//   /*
//   *   Constructor 
//   */
//   factory Global() {
//     return _global;
//   }

//   /*
//   *   Add a category into updatedCollectionIdStack
//   *
//   *   @param        categoryId        int         Category ID
//   *
//   *   @return                         void
//   */
//   addCategoryInUpdatedCollectionIdStack(int categoryId) {
//     //  Case: category ID not already in the stack
//     if (!_updatedCollectionIdStack.contains(categoryId)) {
//       _updatedCollectionIdStack.add(categoryId);
//     }

//     _allCollectionIsUpdated = true;
//   }

//   /*
//   *   Mark all collection as updated
//   *
//   *
//   *   @return                         void
//   */
//   markAllCollectionAsUpdated() {
//     _allCollectionIsUpdated = true;
//   }

//   /*
//   *   Check if the category is in updatedCollectionIdStack
//   *
//   *   @param        categoryId        int         Category ID
//   *
//   *   @return                         bool
//   */
//   bool isCategoryInUpdatedCollectionIdStack(int categoryId) {
//     //  Case: category ID already in the stack
//     if (_updatedCollectionIdStack.contains(categoryId)) {
//       _updatedCollectionIdStack.remove(categoryId);

//       return true;
//     }

//     return false;
//   }

//   /*
//   *   Check if all collection is updated
//   *
//   *
//   *   @return               bool
//   */
//   bool isAllCollectionUpdate() {
//     //  Case: all collection is updated
//     if (_allCollectionIsUpdated) {
//       _allCollectionIsUpdated = false;

//       return true;
//     }

//     return false;
//   }

//   /*
//   *   Add a category into updatedHomeCategoryIdStack
//   *
//   *   @param        categoryId        int         Category ID
//   *
//   *   @return                         void
//   */
//   addCategoryInUpdatedHomeCategoryIdStack(int categoryId) {
//     //  Case: category ID not already in the stack
//     if (!_updatedHomeCategoryIdStack.contains(categoryId)) {
//       _updatedHomeCategoryIdStack.add(categoryId);
//     }

//     _allHomeIsUpdated = true;
//   }

//   /*
//   *   Mark all collection as updated
//   *
//   *
//   *   @return                         void
//   */
//   markAllHomeAsUpdated() {
//     _allHomeIsUpdated = true;
//   }

//   /*
//   *   Check if the category is in updatedHomeCategoryIdStack
//   *
//   *   @param        categoryId        int         Category ID
//   *
//   *   @return                         bool
//   */
//   bool isCategoryInUpdatedHomeCategoryIdStack(int categoryId) {
//     //  Case: category ID already in the stack
//     if (_updatedHomeCategoryIdStack.contains(categoryId)) {
//       _updatedHomeCategoryIdStack.remove(categoryId);

//       return true;
//     }

//     return false;
//   }

//   /*
//   *   Check if all home is updated
//   *
//   *
//   *   @return               bool
//   */
//   bool isAllHomeUpdate() {
//     //  Case: all home is updated
//     if (_allHomeIsUpdated) {
//       _allHomeIsUpdated = false;

//       return true;
//     }

//     return false;
//   }

//   /*
//   *   Clear all variables
//   *
//   *   @return       void
//   */
//   clearAll() {
//     userToken = null;
//     user = null;
//     _updatedCollectionIdStack = [];
//     _allCollectionIsUpdated = false;

//     //  Home track
//     _updatedHomeCategoryIdStack = [];
//     _allHomeIsUpdated = false;
//   }

//   Global._internal();
// }

// Global global = Global();