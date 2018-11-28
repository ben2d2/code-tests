const src = require('./src.js');
const assert = require('assert');

const users = [
  { id: 1, name: 'bob' },
  { id: 2, name: 'sally' },
  { id: 3, name: 'bob', age: 30 }
];


it ('should not mutate the original list', () => {
  var usersCopy = JSON.parse(JSON.stringify(users));
  const groupByKey = src.groupBy('age')
  groupByKey(users)
  assert.deepEqual(users, usersCopy)
});


it('should return object with specified keys', () => {
  var expected = {
    bob: [
      { id: 1, name: 'bob' },
      { id: 3, name: 'bob', age: 30 }
    ],
    sally: [
      { id: 2, name: 'sally' }
    ]
  }
  const groupByKey = src.groupBy('name')
  assert.deepEqual(groupByKey(users), expected);
});


it('should return only objects with specified keys', () => {
  var expected = {
    30: [
      { id: 3, name: 'bob', age: 30 }
    ]
  }
  const groupByKey = src.groupBy('age')
  assert.deepEqual(groupByKey(users), expected);
});


it ('should exclude non-objects', () => {
  var usersWithNullObject = [
    null,
    { id: 2, name: 'sally' },
    { id: 3, name: 'bob', age: 30 }
  ];

  var expected = {
    bob: [
      { id: 3, name: 'bob', age: 30 }
    ],
    sally: [
      { id: 2, name: 'sally' }
    ]
  }

  const groupByKey = src.groupBy('name')
  assert.deepEqual(groupByKey(usersWithNullObject), expected)
});
