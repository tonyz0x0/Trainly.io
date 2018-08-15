(function () {
    'use strict';

    angular
        .module('Trainly')
        .controller('RegisterController', RegisterController);

    RegisterController.$inject = ['UserService', '$location', '$rootScope', 'FlashService'];
    function RegisterController(UserService, $location, $rootScope, FlashService) {
        var model = this;

        model.register = register;

        function register() {
            model.dataLoading = true;
            UserService.Create(model.user)
                .then(function (response) {
                    if (response.success) {
                        FlashService.Success('Registration successful', true);
                        $location.path('/login');
                    } else {
                        FlashService.Error(response.message);
                        model.dataLoading = false;
                    }
                });
        }
    }

})();