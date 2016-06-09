var starApp = angular.module('starApp', []);

starApp.controller('StarRatingController', ['$scope', StarRatingController]);

function StarRatingController($scope)
{
	$scope.rating = { current: 3, max: 5 };
};

starApp.directive('starRating', function ()
{
	return
	{
		restrict: 'A',
		template: '<ul class="rating">' +
			'<li ng-repeat="star in stars" ng-class="star" ng-click="toggle($index)">' +
			'\u2605' +
			'</li>' +
			'</ul>',
		scope:
		{
			ratingValue: '=',
			max: '='
		},
		link: function (scope, elem, attrs)
		{
			var updateStars = function ()
			{
				scope.stars = [];
				for (var i = 0; i < scope.max; i++)
				{
					scope.stars.push({ filled: i < scope.ratingValue });
				}
			};

			scope.toggle = function (index)
			{
				scope.ratingValue = index + 1;
			};

			scope.$watch('ratingValue', function (oldVal, newVal)
			{
				if (newVal)
					updateStars();
			});
		}
	}
});
