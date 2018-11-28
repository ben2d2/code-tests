// Question 7
// Write a function which combines an array of objects, grouped by a key you
// provide (this key will correspond to a key found in the objects. The
// function will index the new object with the value of those keys.

// Requirements:
// The function must not mutate the original array, or any of the objects in the array.
// If the key you provided is not present in an object, exclude that from the output.
// If an element of the array is null/undefined, or not an object - exclude that from the output.
// It should handle one or more objects being attached to a key.
// Finally, write the function so it can store the key, and later be invoked with an array.

function groupBy(key) {
  return function(objectsList) {
    return objectsList.reduce(function(map, object) {
      if (object && key in object && typeof(object) === 'object') {
        (map[object[key]] = map[object[key]] || []).push(object)
      }
      return map;
    }, {});
  };
};

module.exports = { groupBy }
