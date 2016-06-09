var module = angular.module('ModuleName', []);

module.controller('FirstController', ['$scope', FirstController]);

function FirstController($scope)
{
	$scope.test = 'Hello world!';
};
