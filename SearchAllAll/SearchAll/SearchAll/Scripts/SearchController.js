


        angular.module('searchApp', ['ngAnimate'])
        .controller('searchCntrl', function ($scope, $http) {



            $scope.loadData = function () {


                $http.get("/SearchAll/Home/GetIssueList").success(function (data) {

                    $scope.IssueList = data;
                    angular.forEach($scope.IssueList, function (value, key) {
                        console.log(value.Subject);
                    });
                    //  console.log($scope.IssueList);
                });
            }


//            $scope.issue = [];
//            $scope.issueList = function () {

//                $scope.issue.push({ name: 'Steve Jobs', description: "dbbkfdkjgdsfhfd ffdf kkjddf fkjdfbdfgkjb" });
//                $scope.issue.push({ name: 'Steve Jobs', description: "dbbkfdkjgdsfhfd ffdf kkjddf fkjdfbdfgkjb" });
//            };

//            var obj = [{ "name": 'misko', "gender": 'male' }, { "name": 'misko', "gender": 'male'}];

//            var log = [];
//            angular.forEach(obj, function (value, key) {

//            });

        });
    