/*
|----------------------------------------------------------
|  @file       env.dart is enviroment connection url base link data
|----------------------------------------------------------
|   @base_url         is url connect to part api
|   @url              url is part run connect with parth the base url
|   @default_lang     Langauge configs
|   @api_timeout      Time api connect and block app
|
*/


/*
|----------------------------------------------------------
|  url connection for production
|----------------------------------------------------------
*/
static String url = "http://api.mobilepro.xyz";


/*
|----------------------------------------------------------
|  url connection for development
|----------------------------------------------------------
*/
// static String url = "http://api.mobiledev.xyz";


/*
|----------------------------------------------------------
|  url connection for QA tesing
|----------------------------------------------------------
*/
// static String url = "http://api.mobileaqaxyz";

const env = {
  "base_url": url,
  "url": url,
  "default_lang": "en",
  "api_timeout": "30000"
};
