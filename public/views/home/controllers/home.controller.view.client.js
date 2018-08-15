(function () {
    'use strict';

    angular
        .module('Trainly')
        .controller('HomeController', HomeController);

    function HomeController(AuthenticationService, $rootScope) {
        var model = this;

        model.currentUser = null;
        model.getInclude = getInclude;

        initController();

        function initController() {
            loadCurrentUser();
        }

        function loadCurrentUser() {
            model.currentUser = AuthenticationService.GetCurrentUser();
        }

        function getInclude() {
            if (AuthenticationService.IsUserAdmin()) {
                return "views/common/adminnav.view.client.html";
            } else if (AuthenticationService.IsUserFaculty()) {
                return "views/common/facultynav.view.client.html";
            } else {
                return "views/common/studentnav.view.client.html"
            }
        }

    }

})();