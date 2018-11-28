function groupByKey(users, key) {
  return users.reduce(function(map, obj) {
    if (map[obj[key]]) {
      map[obj[key]].push(obj)
    } else {
      map[obj[key]] = [obj]
    }
    return map;
  }, {});
};

var users = [
  {
    id: 1,
    name: 'bob'
  },
  {
    id: 2,
    name: 'sally'
  },
  {
    id: 3,
    name: 'bob',
    age: 30
  }
];

groupByKey(users, 'name')
