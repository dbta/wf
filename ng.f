angular.module('m',['n.i']);
angular.module('n.i',[])
  .controller('Nic',['$scope','Nis',function($s,Nis){
    $scope.ni = Nis.ni();
    $scope.$on('n:i:update',function(){
      $scope.ni.mutate();
    });
  }])
  .service('Nis',['Nif',function(Nif){
    var ni = new Nif();
    var s = {};
    s.ni = function() {
      return ni;
    };
    return s;
  }])
  .factory('Nif',['$rootScope',function($rootScope){
    var f = function() {};
    f.prototype.update = function(update) {
      $rootScope.$broadcast(update);
    };
    f.prototype.mutate = function() {};
    return f;
  }])
;
