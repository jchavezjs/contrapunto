angular.module("contrapunto", ['contrapunto.controllers','contrapunto.services','angular.filter','ngRoute','ngProgress','ui.bootstrap','720kb.socialshare','ngCookies','textAngular','ngDisqus'])
    .config(function($routeProvider, $locationProvider,$disqusProvider){
        $locationProvider.html5Mode(false).hashPrefix("!");
        $disqusProvider.setShortname('contrapunto');
        $routeProvider
            .when("/", {
                controller: "MainController",
                templateUrl: "templates/main.html"
            })
            .when("/opinion", {
                controller: "OpinionController",
                templateUrl: "templates/opinion/main.html"
            })
            .when("/opinion/sondeo/:id", {
                controller: "SPostController",
                templateUrl: "templates/opinion/sondeoPost.html"
            })
            .when("/opinion/columnistas/:subseccion", {
                controller: "CSeccionController",
                templateUrl: "templates/opinion/columnas.html"
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
            .when("/opinion/sondeopatrocinado", {
                    controller: "patrocinadoController",
                    templateUrl: "templates/opinion/pagoPost.html"
            })
            .when("/opinion/caricaturas", {
                    controller: "CaricaturaController",
                    templateUrl: "templates/opinion/caricaturas.html"
            })
            .when("/opinion/caricaturas/:id", {
                    controller: "CPostController",
                    templateUrl: "templates/opinion/caricaturasPost.html"
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
                templateUrl: "templates/post.html"
            })
            .otherwise({
                redirectTo: "/"
            });

    })
    .filter('startFrom', function(){
        return function(data, start){
            return data.slice(start);
        }
    })
    .filter('urlEncode', function() {
        return function(input) {
            var patron ="?";
            var var_new = input.replace(patron,"-");
            return var_new.split(" ").join("-");
        }
    })
    .filter('iif', function(){
      return function(input, trueValue, falseValue){
        return input ? trueValue : falseValue;
      };
    })
    .filter("sanitize", ['$sce', function($sce) {
      return function(htmlCode){
      return $sce.trustAsHtml(htmlCode);
      }
    }])
