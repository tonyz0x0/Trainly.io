(function () {

    angular
        .module('Trainly')
        .factory('UserService', UserService);

    UserService.$inject = ['$http'];
    function UserService($http) {
        var service = {};

        service.GetAll = GetAll;
        service.GetById = GetById;
        service.GetByUsername = GetByUsername;
        service.Create = Create;
        service.Update = Update;
        service.Delete = Delete;
        service.ValidateFaculty = ValidateFaculty;
        service.ValidateAdmin = ValidateAdmin;
        service.PendingFacultyValidationRequests = PendingFacultyValidationRequests;

        return service;

        function GetAll() {
            return $http.get('/api/users').then(handleSuccess, handleError('Error getting all users'));
        }

        function GetById(id) {
            return $http.get('/api/users/' + id).then(handleSuccess, handleError('Error getting user by id'));
        }

        function GetByUsername(username) {
            return $http.get('/api/users/' + username).then(handleSuccess, handleError('Error getting user by username'));
        }

        function Create(user) {
            return $http.post('/api/users', user).then(handleSuccess, handleError('Error creating user'));
        }

        function Update(user) {
            return $http.put('/api/users/' + user.id, user).then(handleSuccess, handleError('Error updating user'));
        }

        function Delete(id) {
            return $http.delete('/api/users/' + id).then(handleSuccess, handleError('Error deleting user'));
        }
        
        function ValidateFaculty(authorizingUser, authorizedUser) {
            var data = {authorizingUser: authorizingUser, authorizedUser: authorizedUser}
            return $http.post('/api/faculty/authorize', data).then(handleSuccess, function (response) {
                handleError(response.message);
            });
        };

        function ValidateAdmin(authorizingUser, authorizedUser) {
            var data = {authorizingUser: authorizedUser, authorizedUser: authorizedUser}
            return $http.post('/api/admin/authorize', data).then(handleSuccess, handleError('Error creating user'));
        };

        function PendingFacultyValidationRequests() {
            return $http.get('/api/faculty/pending').then(function (response) {
                return response.data;
            });
        }

        // private functions

        function handleSuccess(res) {
            return res.data;
        }

        function handleError(error) {
            return function () {
                return { success: false, message: error };
            };
        }
    }

})();