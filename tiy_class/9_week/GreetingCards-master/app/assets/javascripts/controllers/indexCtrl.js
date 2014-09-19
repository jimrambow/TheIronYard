// Dependency Injection

var IndexCtrl = function($scope) {
  $scope.title = 'Cards';

  $scope.addition = 2 + 2;
  $scope.calendarEvent = {
    name: "",
    description: ""
  }
  $scope.calendar = { name: "September",
    days: [ 
      { name: "Monday", events: [], showForm: false },
      { name: "Tuesday", events: [], showForm: false },
      { name: "Wednesday", events: [], showForm: false },
      { name: "Thursday", events: [], showForm: false },
      { name: "Friday", events: [], showForm: false }
    ]
  }
  // $scope.name = 'Howdy';
  $scope.addEvent = function(index) {
    console.log(index);
    console.log();
    console.log();
    var name = $scope.calendarEvent.name;
    var description = $scope.calendarEvent.description;
    $scope.calendar.days[index].events.push({name: name, description: description})
    $scope.calendarEvent.name = '';
    $scope.calendarEvent.description = '';
    console.log($scope.calendar);
  }

  $scope.showNewForm = function(index) {
    // underscore.js
    _.each($scope.calendar.days, function(object){
      object.showForm = false;
    })
    if($scope.calendar.days[index].showForm == false) {
      $scope.calendar.days[index].showForm = true; 
    }
    else {
      $scope.calendar.days[index].showForm = false;
    }
  }

  $scope.generateCard = function() {
    console.log("Hi");
    console.log($scope.cardTitle);
    console.log($scope.content);
    console.log($scope.to);
    console.log($scope.from);
    $scope.cardContent = {
      title: $scope.cardTitle,
      content: $scope.content,
      to: $scope.to,
      from: $scope.from
    };
  };
}