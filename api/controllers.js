angular.module('contrapunto.controllers', [])

    .controller('MainController', function($scope, $http, $location, $timeout, ngProgressFactory){
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 2000);

        $http.get("api/php/portada.php").success(function (response){
            $scope.columnistas = response.columnistas;
            $scope.actualidades = response.actualidades;
            $scope.tribunas = response.tribunas;
            $scope.negocios = response.negocios;
            $scope.coyunturas = response.coyunturas;
            $scope.analisiss = response.analisiss;
            $scope.libertades = response.libertades;
            $scope.sociedades = response.sociedades;
            $scope.academias = response.academias;
            $scope.resenas = response.resenas;
            $scope.deportes = response.deportes;
            $scope.periodismos = response.periodismos;
            $scope.politicas = response.politicas;
            $scope.internacionales = response.internacionales;
            $scope.culturas = response.culturas;
            $scope.anecdotas = response.anecdotas;
            $scope.entrevistas = response.entrevistas;
            $scope.rompiendos = response.rompiendos;
            $scope.editoriales = response.editoriales;
            $scope.contratabues = response.contratabues;
            $scope.especiales = response.especiales;
            $scope.fotogalerias = response.fotogalerias;
            $scope.caricaturas = response.caricaturas;
            $scope.controles = response.controles;

        });

            

    })
    .controller('OpinionController', function($scope, $http, $location, $timeout, ngProgressFactory){
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);

        $http.get("api/php/opinion.php").success(function (response){
            $scope.editoriales = response.editoriales;
            $scope.caricaturas = response.caricaturas;
            $scope.tribunas = response.tribunas;
            $scope.libertades = response.libertades;
            $scope.academias = response.academias;
            $scope.columnistas = response.columnistas;
            $scope.politicas = response.politicas;
            $scope.internacionales = response.internacionales;
            $scope.culturas = response.culturas;
            $scope.sociedades = response.sociedades;
            $scope.economias = response.economias;
        });
    })

    .controller('PoliticaController', function($scope, $http, $location, $timeout, ngProgressFactory){
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);

        $http.get("api/php/politica.php").success(function (response){
            $scope.politicas = response.politicas;
            $scope.gobiernos = response.gobiernos;
            $scope.partidos = response.partidos;
        });
    })

    .controller('InternacionalesController', function($scope, $http, $location, $timeout, ngProgressFactory){
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);

        $http.get("api/php/internacionales.php").success(function (response){
            $scope.centroamericas = response.centroamericas;
            $scope.latinoamericas = response.latinoamericas;
            $scope.globales = response.globales;
        });
    })

    .controller('SociedadController', function($scope, $http, $location, $timeout, ngProgressFactory){
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);

        $http.get("api/php/sociedad.php").success(function (response){
            $scope.ambientes = response.ambientes;
            $scope.violencias = response.violencias;
            $scope.saludes = response.saludes;
            $scope.dds = response.dds;
            $scope.educaciones = response.educaciones;
            $scope.migraciones = response.migraciones;
            $scope.generos = response.generos;
            $scope.periodismos = response.periodismos;
            $scope.tabues = response.tabues;
            $scope.judiciales = response.judiciales;
        });
    })

    .controller('EconomiaController', function($scope, $http, $location, $timeout, ngProgressFactory){
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);

        $http.get("api/php/economia.php").success(function (response){
            $scope.negocios = response.negocios;
            $scope.coyunturas = response.coyunturas;
            $scope.mundos = response.mundos;
            $scope.mercados = response.mercados;
            $scope.analisiss = response.analisiss;
            $scope.bolsas = response.bolsas;
            $scope.intereses = response.intereses;
            $scope.divisas = response.divisas;
            $scope.datos = response.datos;
        });
    })

    .controller('CulturaController', function($scope, $http, $location, $timeout, ngProgressFactory){
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);

        $http.get("api/php/cultura.php").success(function (response){
            $scope.contratabues = response.contratabues;
            $scope.resenas = response.resenas;
            $scope.artes = response.artes;
            $scope.literaturas = response.literaturas;
            $scope.anecdotas = response.anecdotas;
        });
    })

    .controller('DeportesController', function($scope, $http, $location, $timeout, ngProgressFactory){
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);

        $http.get("api/php/deportes.php").success(function (response){
            $scope.cronicas = response.cronicas;
            $scope.aconteceres = response.aconteceres;
        });
    })

    .controller('PostController', function($scope, $http, $location, $timeout, ngProgressFactory){
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);
    });