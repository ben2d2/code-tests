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
