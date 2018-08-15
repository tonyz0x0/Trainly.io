(function () {

    angular
        .module('Trainly')
        .factory('AuthenticationService', AuthenticationService);

    AuthenticationService.$inject = ['$http', '$cookies', '$rootScope', '$timeout', 'UserService'];
    function AuthenticationService($http, $cookies, $rootScope, $timeout, UserService) {
        var service = {};

        service.Login = Login;
        service.SetCredentials = SetCredentials;
        service.ClearCredentials = ClearCredentials;
        service.IsUserAdmin = IsUserAdmin;
        service.IsUserFaculty = IsUserFaculty;
        service.IsUserStudent = IsUserStudent;
        service.GetCurrentUser = GetCurrentUser;

        return service;

        function Login(username, password, callback) {
           $http.post('/api/users/authenticate', { username: username, password: password })
               .then(function onSuccess(response) {
                   callback({success:true ,data: response.data});
               }, function onError() {
                   callback({success:false, message: 'Username or password is incorrect'});
               });
        }

        function SetCredentials(userData) {
            $rootScope.globals = {
                currentUser: {
                    username: userData.Email,
                    authdata: userData.token,
                    data: userData
                }
            };

            // set default auth header for http requests
            $http.defaults.headers.common['Authorization'] = userData.token;

            // store user details in globals cookie that keeps user logged in for 1 week (or until they logout)
            var cookieExp = new Date();
            cookieExp.setDate(cookieExp.getDate() + 7);
            $cookies.putObject('globals', $rootScope.globals, { expires: cookieExp });
        }

        function ClearCredentials() {
            $rootScope.globals = {};
            $cookies.remove('globals');
            $http.defaults.headers.common.Authorization = 'Basic';
        }
        
        function IsUserAdmin() {
            return $rootScope.globals.currentUser.data.isAdmin;
        }
        
        function IsUserFaculty() {
            return $rootScope.globals.currentUser.data.isFaculty;
        }
        
        function IsUserStudent() {
            return !IsUserAdmin() && !IsUserFaculty();
        }

        function GetCurrentUser() {
            return $rootScope.globals.currentUser ? $rootScope.globals.currentUser.data : null;
        }
    }

})();