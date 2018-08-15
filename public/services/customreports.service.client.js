(function () {
    angular
        .module("Trainly")
        .factory('CustomReportsService',CustomReportsService);

    function CustomReportsService($http) {

        var api = {
            getFacultyCourseCatalogReport:getFacultyCourseCatalogReport,
            getEnrollmentForRelatedCourseTopicReport:getEnrollmentForRelatedCourseTopicReport,
            getFacultyRankedByRatingReport:getFacultyRankedByRatingReport,
            getFacultyCourseUnasweredQuestions:getFacultyCourseUnasweredQuestions,
            getFacultyCourseStudentAnswers:getFacultyCourseStudentAnswers,
            getCourseTopics:getCourseTopics
        };
        return api;

        function getFacultyCourseCatalogReport() {
            var url = "/api/complexreports/1";
            return $http.get(url).then(function (response) {
                return response.data;
            });
        };

        function getEnrollmentForRelatedCourseTopicReport(topic) {
            var url = "/api/complexreports/2/:topic";
            var getUrl = url.replace(/:topic/g, topic);
            return $http.get(getUrl).then(function (response) {
                return response.data;
            });
        };

        function getFacultyRankedByRatingReport(rating) {
            var url = "/api/complexreports/3/:rating";
            var getUrl = url.replace(/:rating/g, rating);
            return $http.get(getUrl).then(function (response) {
                return response.data;
            });
        };

        function getFacultyCourseUnasweredQuestions(userid) {
            var url = "/api/complexreports/4/:userid";
            var getUrl = url.replace(/:userid/g, userid);
            return $http.get(getUrl).then(function (response) {
                return response.data;
            });
        };

        function getFacultyCourseStudentAnswers(userid, indication, minscore) {
            var url = "/api/complexreports/5/:userid/:indication/:minscore";
            var getUrl = url.replace(/:userid/g, userid)
                .replace(/:indication/g, indication)
                .replace(/:minscore/g, minscore);
            return $http.get(getUrl).then(function (response) {
                    return response.data;
            });
        };

        function getCourseTopics() {
            var url = "/api/course/all/topics";
            return $http.get(url).then(function (response) {
                return response.data;
            });
        };

    }

})();