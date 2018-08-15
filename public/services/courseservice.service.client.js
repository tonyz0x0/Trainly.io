(function () {
    angular
        .module("Trainly")
        .factory('CourseService', CourseService);

    function CourseService($http) {
        var service = {};
        service.GetStudentAccountHistory = GetStudentAccountHistory;
        service.GetStudentCourseList = GetStudentCourseList;
        service.EnrollStudentCourse = EnrollStudentCourse;
        service.GetAllCourses = GetAllCourses;
        service.GetCourseMaterialStatus = GetCourseMaterialStatus;
        service.MarketCourseMaterialCompleted = MarketCourseMaterialCompleted;

        return service;

        function GetStudentAccountHistory(userid) {
           return $http.get('/api/studentcourses/history/'+userid).then(function (response) {
               return response.data;
           });
        };

        function GetStudentCourseList(userId) {
            return $http.get('/api/studentcourses/list/'+userId).then(function (response) {
                return response.data;
            });
        };
        
        function GetAllCourses() {
            return $http.get('/api/course/').then(function (response) {
                return response.data;
            });
        };

        function EnrollStudentCourse(userId,courseId) {
            var data = {UserId: userId, CourseId: courseId};
            return $http.post('/api/studentcourses/enroll/', data).then(function (response) {
                return response.data;
            }, function (response) {
                handleError(response.message);
            });
        };

        function GetCourseMaterialStatus(userId,courseId) {
            return $http.get('/api/material/'+userId+'/'+courseId).then(function (response) {
                return response.data;
            });
        };

        function MarketCourseMaterialCompleted(userId, materialId, courseId) {
            var data = {userId: userId, materialId: materialId,courseId : courseId}
            return $http.post('/api/complete/material', data).then(function (response) {
                return response.data;
            }, function (error) {
                return { success: false, message: error.data.message };
            });
        };

    }
})();