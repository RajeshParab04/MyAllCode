/// <reference path="angular.js" />


angular.module('AddIssueApp', [])
    .controller('AddIssuecont', ['$scope', '$http', function ($scope, $http) {
        angular.element(document).ready(function () {

            $('#summernote').summernote();
            $('[data-toggle="tooltip"]').tooltip();   
        });
        $scope.Instance = [
    { Value: "QA", Text: "QA" },
    { Value: "UAT", Text: "UAT" },
    { Value: "PRODUCTION", Text: "PRODUCTION" },
     { Value: "OTHERS", Text: "OTHERS" }
];
        $scope.selectedInstance = $scope.Instance[0];

        $scope.TypeOfIssue = [
    { Value: "Integration Job", Text: "Integration Job" },
    { Value: "Trigger", Text: "Trigger" },
    { Value: "EDS", Text: "EDS" },
     { Value: "Others", Text: "Others" }
];
        $scope.selectedTypeOfIssue = $scope.TypeOfIssue[0];


        $('#myForm').validator().on('submit', function (e) {
            if (e.isDefaultPrevented()) {
                // handle the invalid form...
            } else {
                debugger;
                var issueresolution = $('#summernote').summernote('code');
                if (issueresolution == "" || issueresolution == "<p><br></p>") {
                    $('#Msgcontent').html("<p style='color:red;'><b>Please Add Your Resolution.</b></p>");
                    $('#myModal').modal('show');
                    return false;
                }

                $http({
                    method: 'POST',
                    url: '../home/InsertIssue',
                    data: { 'Projectname': $scope.Projectname, 'TypeOfIssue': $scope.selectedTypeOfIssue.Text, 'Loggedby': $scope.Loggedby, 'Instance': $scope.selectedInstance.Text,
                        'IssueSubject': $scope.IssueSubject, 'Issuedescription': $scope.Issuedescription, 'issueresolution': issueresolution
                    }
                }).then(function successCallback(response) {
                    if (response.data == "success") {
                        $('#Msgcontent').html("<p style='color:green;'><b>Thanks for Sharing you Issue resolution.This will Help Someone.</b></p>");
                        $('#myModal').modal('show');
                    }
                    else {
                        $('#Msgcontent').html("<p style='color:red;'><b>Some Error Occured.</b></p>");
                        $('#myModal').modal('show');
                    }

                }, function errorCallback(response) {
                    alert(" Something is wrong");
                });
            }
        })

    } ]);