(function () {
    angular.module('Trainly').controller('customReportCtl',customReportCtl);

    function customReportCtl(CustomReportsService,AuthenticationService, $routeParams,$location) {
        var model = this;
        model.getEnrollmentForRelatedCourseTopicReport = getEnrollmentForRelatedCourseTopicReport;
        model.getFacultyRankedByRatingReport = getFacultyRankedByRatingReport;
        model.getFacultyCourseStudentAnswers = getFacultyCourseStudentAnswers;
        model.humanReadable = humanReadable;
        model.getInclude = getInclude;
        model.isFaculty = isFaculty;

        function init() {
            CustomReportsService.getFacultyCourseCatalogReport()
                .then(function (catalogData) {
                    model.facultyCourseCatalogReport = catalogData;
                });
            CustomReportsService.getCourseTopics()
                .then(function (topicsData) {
                   model.topics =  topicsData;
                });

            model.currentUser = AuthenticationService.GetCurrentUser();

            getFacultyCourseUnasweredQuestions(model.currentUser.UserId);
        }

        init();

        function getEnrollmentForRelatedCourseTopicReport(topic) {
            if (!topic) {
                alert("Select a course topic.");
            } else {
                CustomReportsService.getEnrollmentForRelatedCourseTopicReport(topic)
                    .then(function (enrollmentData) {
                        model.enrollmentForRelatedCourseTopicReport = enrollmentData;
                    });
            }

        };

        function getFacultyRankedByRatingReport(rating) {
            if (rating < 1 || rating > 5 || !rating) {
                FlashService.Error("Minimum rating should be in range 1 to 5");
            } else if (rating) {
                CustomReportsService.getFacultyRankedByRatingReport(rating)
                    .then(function (ratingData) {
                        model.facultyRatingReport = ratingData;
                    });
            }
        }

        function getFacultyCourseUnasweredQuestions(userid) {
            if (userid) {
                CustomReportsService.getFacultyCourseUnasweredQuestions(userid)
                    .then(function (courseQuestionsData) {
                        model.courseQuestionsReport = courseQuestionsData;
                    });
            }
        }

        function getFacultyCourseStudentAnswers(indication,minscore) {
            if (!model.currentUser.UserId) {
                alert("Faculty id is missing");
            } else {
                CustomReportsService.getFacultyCourseStudentAnswers(model.currentUser.UserId, indication, minscore)
                    .then(function (studentAnswersData) {
                        model.studentCourseAnswersReport = studentAnswersData;
                    });
            }
        };

        function humanReadable(name) {
            var words = name.match(/[A-Za-z][a-z]*/g);

            return words.map(function capitalize(word) {
                return word.charAt(0).toUpperCase() + word.substring(1);
            }).join(" ");;
        };


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

    }
})();