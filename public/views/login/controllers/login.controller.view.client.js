(function () {
    'use strict';

    angular
        .module('Trainly')
        .controller('LoginController', LoginController);

    LoginController.$inject = ['$location', 'AuthenticationService', 'FlashService'];
    function LoginController($location, AuthenticationService, FlashService) {
        var model = this;

        model.login = login;

        (function initController() {
            // reset login status
            AuthenticationService.ClearCredentials();
        })();

        function login() {
            model.dataLoading = true;
            AuthenticationService.Login(model.username, model.password, function (response) {
                if (response.success) {
                    AuthenticationService.SetCredentials(response.data);
                    $location.path('/');
                } else {
                    FlashService.Error(response.message);
                    model.dataLoading = false;
                }
            });
        };
    }

})();