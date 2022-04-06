function fn() {
  var env = karate.env; // get system property 'karate.env'
  // karate.log('karate.env system property was:', env);
  var apiBaseUrl = 'https://ztrain-shop.herokuapp.com';
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue',
    baseUrl: apiBaseUrl
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}