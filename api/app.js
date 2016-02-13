angular.module("contrapunto", ['contrapunto.controllers','contrapunto.services','angular.filter','ngRoute','ngProgress','ui.bootstrap','ngSanitize'])
    .config(function($routeProvider, $locationProvider){
        $routeProvider
            .when("/", {
                controller: "MainController",
                templateUrl: "templates/main.html"
            })
            .when("/opinion", {
                controller: "OpinionController",
                templateUrl: "templates/opinion/main.html"
            })
            .when("/politica", {
                controller: "PoliticaController",
                templateUrl: "templates/politica/main.html"
            })
            .when("/internacionales", {
                controller: "InternacionalesController",
                templateUrl: "templates/internacionales/main.html"
            })
            .when("/sociedad", {
                    controller: "SociedadController",
                    templateUrl: "templates/sociedad/main.html"
            })
            .when("/economia", {
                    controller: "EconomiaController",
                    templateUrl: "templates/economia/main.html"
            })
            .when("/cultura", {
                    controller: "CulturaController",
                    templateUrl: "templates/cultura/main.html"
            })
            .when("/deportes", {
                    controller: "DeportesController",
                    templateUrl: "templates/deportes/main.html"
            })
            .when("/opinion/sondeo", {
                    controller: "SondeoController",
                    templateUrl: "templates/opinion/sondeo.html"
            })
            .when("/opinion/caricaturas", {
                    controller: "CaricaturaController",
                    templateUrl: "templates/opinion/caricaturas.html"
            })
            .when("/autor/:id", {
                controller: "AutorController",
                templateUrl: "templates/author.html"
            })
            .when("/buscar/:query", {
                controller: "BuscarController",
                templateUrl: "templates/search.html"
            })
            .when("/:seccion/:subseccion", {
                    controller: "SubseccionController",
                    templateUrl: "templates/subseccion/main.html"
            })
            .when("/:seccion/:subseccion/:titulo/:id", {
                controller: "PostController",
                templateUrl: "templates/politica/post.html"
            })
            .otherwise({
                redirectTo: "/"
            });

        /*$locationProvider.html5Mode(true);*/
    })
    .filter('startFrom', function(){
        return function(data, start){
            return data.slice(start);
        }
    })
    .filter('urlEncode', function() {
        return function(input) {
            return input.split(" ").join("-");
        }
    })
    .filter("sanitize", ['$sce', function($sce) {
      return function(htmlCode){
      return $sce.trustAsHtml(htmlCode);
      }
    }])
