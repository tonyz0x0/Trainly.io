(function () {
    angular.module('Trainly').controller('studentTaskCtl', studentTaskCtl);

    function studentTaskCtl(UserService,AuthenticationService,FlashService, CourseService, $routeParams, $location) {
        var model = this;

        model.getInclude = getInclude;
        model.isFaculty = isFaculty;
        model.humanReadable = humanReadable
        model.StudentAccountHistory = StudentAccountHistory;
        model.StudentEnrollCourse = StudentEnrollCourse;
        model.GetCourseMaterialStatus = GetCourseMaterialStatus;
        model.MarketCourseMaterialCompleted = MarketCourseMaterialCompleted;

        function init() {
            model.currentUser = AuthenticationService.GetCurrentUser();
            StudentAccountHistory();
            StudentCourseList();
            CourseService.GetAllCourses().then(function (allCourses) {
                CourseService.GetStudentCourseList(model.currentUser.UserId)
                    .then(function (studentCourses) {
                        var courseIdMap = studentCourses.map(function (row) { return row.CourseId; });
                        var openCourses = [];
                        allCourses.forEach(function (course) {
                            if($.inArray(course.CourseId,courseIdMap) == -1){
                                openCourses.push(course);

                            };
                            model.studentOpenCourses = openCourses;
                        });
                    });
            });

            if ($routeParams.certificateCourseId) {
                model.cerificateCourse = null;
                if (!model.currentUser.UserId) {
                    alert("Student id is missing");
                } else {
                    CourseService.GetStudentAccountHistory(model.currentUser.UserId)
                        .then(function (studentAnswersData) {
                            model.studentAccountHistory = studentAnswersData;
                            var courseId = $routeParams.certificateCourseId
                            studentAnswersData.History.forEach(function (course) {
                                if (course.CourseID == courseId && course.CompletedDate) {
                                    model.cerificateCourse = course;
                                }
                            });
                        });
                }


            }

        };

        init();

        function StudentAccountHistory() {
            if (!model.currentUser.UserId) {
                alert("Student id is missing");
            } else {
                CourseService.GetStudentAccountHistory(model.currentUser.UserId)
                    .then(function (studentAnswersData) {
                        model.studentAccountHistory = studentAnswersData;
                    });
            }
        };

        function StudentCourseList() {
            if (!model.currentUser.UserId) {
                alert("Student id is missing");
            } else {
                CourseService.GetStudentCourseList(model.currentUser.UserId)
                    .then(function (studentAnswersData) {
                        model.studentCourseList = studentAnswersData;
                        var enrolledCourses = [];
                        model.studentCourseList.forEach(function (course) {
                            if (course.CurrentStatus == 'Enrolled') {
                                enrolledCourses.push(course);
                            }
                        });
                        model.studentEnrolledCourses = enrolledCourses;
                    });
            }
        };

        function StudentEnrollCourse(courseId) {
            if (!model.currentUser.UserId) {
                alert("Student id is missing");
            } else {
                CourseService.EnrollStudentCourse(model.currentUser.UserId,courseId)
                    .then(function (response) {
                        if (response.success) {
                            alert(response.message);
                            location.reload();
                        } else {
                            alert(response.message);
                        }
                    });
            }
        };

        function GetCourseMaterialStatus(courseId) {
            if (!model.currentUser.UserId) {
                alert("Student id is missing");
            } else {
                CourseService.GetCourseMaterialStatus(model.currentUser.UserId,courseId)
                    .then(function (materialData) {
                        model.studentCourseMaterialStatus = materialData;
                    });
            }
        };

        function MarketCourseMaterialCompleted(materialId,courseId) {
            if (!model.currentUser.UserId) {
                alert("Student id is missing");
            } else {
                CourseService.GetCourseMaterialStatus(model.currentUser.UserId,courseId)
                    .then(function (materialData) {
                        model.studentCourseMaterialStatus = materialData;
                    });
                CourseService.MarketCourseMaterialCompleted(model.currentUser.UserId, materialId, courseId).
                then(function (response) {
                    if (response.success) {
                        alert(response.message);
                        location.reload();

                    } else {
                        alert(response.message);
                    }
                });
            }
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

        function humanReadable(name) {
            var words = name.match(/[A-Za-z][a-z]*/g);

            return words.map(function capitalize(word) {
                return word.charAt(0).toUpperCase() + word.substring(1);
            }).join(" ");;
        };




    }
})();