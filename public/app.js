(function () {
    'use strict';

    angular
        .module('Trainly', ['ngRoute', 'ngCookies'])
        .config(config)
        .run(run);

    config.$inject = ['$routeProvider', '$locationProvider'];
    function config($routeProvider, $locationProvider) {
        $routeProvider
            .when('/', {
                controller: 'HomeController',
                templateUrl: 'views/home/templates/home.view.client.html',
                controllerAs: 'model'
            })

            .when('/login', {
                controller: 'LoginController',
                templateUrl: 'views/login/templates/login.view.client.html',
                controllerAs: 'model'
            })

            .when('/register', {
                controller: 'RegisterController',
                templateUrl: 'views/register/templates/register.view.client.html',
                controllerAs: 'model'
            })

            .when("/report/facultyrating",{
                templateUrl:'views/customreport/templates/faculty-rating.view.client.html',
                controller: 'customReportCtl',
                controllerAs:'model'
            })

            .when("/report/facultycoursecatalog",{
                templateUrl:'views/customreport/templates/faculty-course-catalog.view.client.html',
                controller: 'customReportCtl',
                controllerAs:'model'
            })

            .when("/report/enrollmentrelatedtopic",{
                templateUrl:'views/customreport/templates/enrollment-course-topic-report.view.client.html',
                controller: 'customReportCtl',
                controllerAs:'model'
            })

            .when("/report/coursequestions",{
                templateUrl:'views/customreport/templates/faculty-unanswered-questions.view.client.html',
                controller: 'customReportCtl',
                controllerAs:'model',
            })
            .when("/report/quizanswers",{
                templateUrl:'views/customreport/templates/course-quiz-answer.view.client.html',
                controller: 'customReportCtl',
                controllerAs:'model',
            })

            .when("/admin/faculty/pending",{
                templateUrl:'views/admintasks/templates/faculty-validate.view.client.html',
                controller: 'adminTaskCtl',
                controllerAs:'model',
            })

            .when("/student/account/history",{
                templateUrl:'views/studenttasks/templates/account-history.view.client.html',
                controller: 'studentTaskCtl',
                controllerAs:'model',
            })

            .when("/student/course/list",{
                templateUrl:'views/studenttasks/templates/student-courses-list.view.client.html',
                controller: 'studentTaskCtl',
                controllerAs:'model',
            })

            .when("/student/course/enroll",{
                templateUrl:'views/studenttasks/templates/student-enroll.view.client.html',
                controller: 'studentTaskCtl',
                controllerAs:'model',
            })

            .when("/student/course/material",{
                templateUrl:'views/studenttasks/templates/student-course-material.view.client.html',
                controller: 'studentTaskCtl',
                controllerAs:'model',
            })

            .when("/student/course/certificate/:certificateCourseId",{
                templateUrl:'views/studenttasks/templates/student-certificate.view.client.html',
                controller: 'studentTaskCtl',
                controllerAs:'model',
            })

            .otherwise({ redirectTo: '/login' });
    }

    run.$inject = ['$rootScope', '$location', '$cookies', '$http'];

    function run($rootScope, $location, $cookies, $http) {
        // keep user logged in after page refresh
        $rootScope.globals = $cookies.getObject('globals') || {};
        if ($rootScope.globals.currentUser) {
            $http.defaults.headers.common['Authorization'] = 'Basic ' + $rootScope.globals.currentUser.authdata;
        }

        $rootScope.$on('$locationChangeStart', function (event, next, current) {
            // redirect to login page if not logged in and trying to access a restricted page
            var restrictedPage = $.inArray($location.path(), ['/login', '/register']) === -1;
            var loggedIn = $rootScope.globals.currentUser;
            if (restrictedPage && !loggedIn) {
                $location.path('/login');
            }
        });
    }

})();

