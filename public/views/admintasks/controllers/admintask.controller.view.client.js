(function () {
    angular.module('Trainly').controller('adminTaskCtl', adminTaskCtl);

    function adminTaskCtl(UserService,AuthenticationService,FlashService, $routeParams, $location) {
        var model = this;

        model.ValidateAdmin = ValidateAdmin;
        model.ValidateFaculty = ValidateFaculty;
        model.getInclude = getInclude;
        model.isFaculty = isFaculty;
        model.humanReadable = humanReadable;

        function init() {
            UserService.PendingFacultyValidationRequests().then(function (pendingData) {
                model.pendingFacultyRequests = pendingData;
            });
        }

        init();

        function ValidateAdmin() {

        }

        function ValidateFaculty(authorizedUser) {
            currentUser = AuthenticationService.GetCurrentUser().Email;
            UserService.ValidateFaculty(currentUser, authorizedUser).then(function (response) {
                if (response.success) {
                    alert(response.message);
                    location.reload();

                } else {
                    alert(response.message);
                }
            });
        }


        function PendingAdminValidationRequests() {

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

        function isFaculty() {
            AuthenticationService.IsUserFaculty();
        }

        function humanReadable(name) {
            var words = name.match(/[A-Za-z][a-z]*/g);

            return words.map(function capitalize(word) {
                return word.charAt(0).toUpperCase() + word.substring(1);
            }).join(" ");;
        };



    }
})();