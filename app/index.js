'use strict';
console.warn('Starting up');
const mongoose  = require('mongoose');
const redis     = require('redis');

mongoose.connect('mongodb://db');
console.log('Connected to mongo');
const client = redis.createClient({
  host: 'redis',
  port: 6379
});

client.set('test', 'test value', redis.print);

let test = client.get('test', redis.print);
console.log(test);
