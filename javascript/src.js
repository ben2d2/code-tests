// Question 7
// Write a function which combines an array of objects, grouped by a key you
// provide (this key will correspond to a key found in the objects. The
// function will index the new object with the value of those keys.

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
