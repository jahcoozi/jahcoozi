angular.module('myApp.directive.test', [])
    .controller('Controller', ['$scope', function ($scope) {
        $scope.naomi = {
            name: 'Naomi',
            address: '1600 Amphitheatre'
        };
        $scope.igor = {
            name: 'Igor',
            address: '123 Somewhere'
        };
    }])
    .directive('myCustomer', function () {
        return {
            restrict: 'E',
            scope: {
                customerinfo: '='
            },
            replace: true,
            transclude: true,
            link: function (scope, element, attrs) {
                // console.log(attrs.id);  if id is placed on element
                element.click(function () {
                    alert('clicked');
                });
            },
            controller: function ($scope) {
                alert($scope.customerinfo);
            },
            templateUrl: './app/shared/sample-module/sampleTemplate.html'
        };
    });