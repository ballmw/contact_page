'use strict';

/* Served dynamically */
var settings = {
    urlbase: 'http://localhost:3000/',
    token: 'abc'
}


angular.module('thirdParty.remoteControllers', []).config(['$httpProvider', function ($http) {
        $http.defaults.headers.common['Custom-Origin'] = window.location.protocol + "//" + window.location.host

    }]).
    config(function ($sceDelegateProvider) {
        $sceDelegateProvider.resourceUrlWhitelist([
            // Allow same origin resource loads.
            'self',
            // Allow loading from our assets domain.  Notice the difference between * and **.
            settings.urlbase + '**']);
    }).
    controller('Api.ContactForm', ['$scope', '$http', function ($scope, $http) {
        $scope.form = {
            token: settings.token
        };
        $scope.submit = function () {
            console.log('submitted');
            $http.post(settings.urlbase + 'api/form', angular.toJson($scope.form));
        }
    }])
;