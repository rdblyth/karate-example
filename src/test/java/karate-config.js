function() {
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  var port = 9000
  var config = { baseUrl: 'http://localhost:' + port };
  return config;
}