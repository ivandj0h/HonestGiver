'use strict'

/*
|--------------------------------------------------------------------------
| Routes
|--------------------------------------------------------------------------
|
| Http routes are entry points to your web application. You can create
| routes for different URL's and bind Controller actions to them.
|
| A complete guide on routing is available here.
| http://adonisjs.com/docs/4.1/routing
|
*/
const Route = use('Route')

Route.on('/').render('index')
Route.get('profile', 'AuthController.getProfile').as('profile').middleware(['auth'])
Route.get('login', 'AuthController.getLogin').as('login')
Route.post('login', 'AuthController.postLogin').as('login')
Route.post('logout', 'AuthController.postLogout').as('logout').middleware(['auth'])

Route.get('profile/basic', 'AuthController.getProfile').as('profileBasicAuth').middleware(['auth:basic'])

Route.post('api/jwt/login', 'AuthController.postLoginJwt').as('loginJwt')
Route.post('api/jwt/refresh', 'AuthController.postRefreshTokenJwt').as('refreshTokenJwt').middleware(['auth:jwt'])
Route.post('api/jwt/logout', 'AuthController.postLogoutJwt').as('loginJwt').middleware(['auth:jwt'])
Route.get('api/jwt/profile', 'AuthController.getProfileJwt').as('profileJwt').middleware(['auth:jwt'])

Route.post('api/api/login', 'AuthController.postLoginApi').as('loginApi')
Route.post('api/api/logout', 'AuthController.postLogoutApi').as('logoutApi').middleware(['auth:api'])
Route.post('api/api/logoutAll', 'AuthController.postLogoutApiAll').as('logoutApiAll').middleware(['auth:api'])
Route.get('api/api/profile', 'AuthController.getProfileApi').as('profileApi').middleware(['auth:api'])
