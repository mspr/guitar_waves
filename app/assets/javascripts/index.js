var module = angular.module('App', []);

module.controller('IndexController', ['$scope', '$http', IndexController]);

function IndexController($scope, $http)
{
	$http.get('./tutorials.json').success(function(data)
	{
		$scope.tutorials = data
	});
};
