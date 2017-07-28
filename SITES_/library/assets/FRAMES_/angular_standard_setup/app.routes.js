// https://scotch.io/tutorials/angularjs-best-practices-directory-structure achitecture best
var app = angular.module("myApp", ["ngRoute", "myApp.directive.test"]);
app.config(function ($routeProvider) {
    $routeProvider
        .when("/", {
            templateUrl: "main.htm"
        })
        .when("/t", {
            templateUrl: "./app/components/sample-view/sampleView.html",
            controller: "test1"
        })
        .when("/et", {
            templateUrl: "test1.html",
            controller: "test2"
        })
        .when("/e", {
            templateUrl: "test2.html",
            controller: "test2"
        })
        .when("/s", {
            template: "<h1>Tomato</h1><p>Tomatoes contain around 95% water.</p>"
        })
        .otherwise({
            redirectTo: '/t',
            template: "<h1>None</h1><p>Nothing has been selected</p>"
        });
});


// wire controllers
app.controller("test1", function ($scope) {
    $scope.clicked = function () {
        $scope.feedback = 'here is your feed back';
        $scope.customerInfo = '2332';
    };
});
app.controller("test2", function ($scope) {
    $scope.msg = "I love testing";
});



// root-app-folder
// ├── index.html
// ├── scripts
// │   ├── controllers
// │   │   └── main.js
// │   │   └── ...
// │   ├── directives
// │   │   └── myDirective.js
// │   │   └── ...
// │   ├── filters
// │   │   └── myFilter.js
// │   │   └── ...
// │   ├── services
// │   │   └── myService.js
// │   │   └── ...
// │   ├── vendor
// │   │   ├── angular.js
// │   │   ├── angular.min.js
// │   │   ├── es5-shim.min.js
// │   │   └── json3.min.js
// │   └── app.js
// ├── styles
// │   └── ...
// └── views
//     ├── main.html
//     └── ...



// OR


// app/
// ----- shared/   // acts as reusable components or partials of our site
// ---------- sidebar/
// --------------- sidebarDirective.js
// --------------- sidebarView.html
// ---------- article/
// --------------- articleDirective.js
// --------------- articleView.html
// ----- components/   // each component is treated as a mini Angular app
// ---------- home/
// --------------- homeController.js
// --------------- homeService.js
// --------------- homeView.html
// ---------- blog/
// --------------- blogController.js
// --------------- blogService.js
// --------------- blogView.html
// ----- app.module.js
// ----- app.routes.js
// assets/
// ----- img/      // Images and icons for your app
// ----- css/      // All styles and style related files (SCSS or LESS files)
// ----- js/       // JavaScript files written for your app that are not for angular
// ----- libs/     // Third-party libraries such as jQuery, Moment, Underscore, etc.
// index.html