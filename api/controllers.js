angular.module('contrapunto.controllers', [])

    .controller('MainController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual,$anchorScroll){
        $anchorScroll();
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 2000);
        $scope.fecha = fechaActual;
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
    .controller('OpinionController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual, $anchorScroll){
        $anchorScroll();
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);
        $scope.fecha = fechaActual;
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
            $scope.subsecciones = response.subsecciones;
        });
    })

    .controller('PoliticaController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual,$anchorScroll){
        $anchorScroll();
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);
        $scope.fecha = fechaActual;
        $http.get("api/php/politica.php").success(function (response){
            $scope.politicas = response.politicas;
            $scope.gobiernos = response.gobiernos;
            $scope.partidos = response.partidos;
            $scope.subsecciones = response.subsecciones;
        });
    })

    .controller('InternacionalesController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual,$anchorScroll){
        $anchorScroll();
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);
        $scope.fecha = fechaActual;
        $http.get("api/php/internacionales.php").success(function (response){
            $scope.centroamericas = response.centroamericas;
            $scope.latinoamericas = response.latinoamericas;
            $scope.globales = response.globales;
            $scope.subsecciones = response.subsecciones;
        });
    })

    .controller('SociedadController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual,$anchorScroll){
        $anchorScroll();
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);
        $scope.fecha = fechaActual;
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
            $scope.subsecciones = response.subsecciones;
        });
    })

    .controller('EconomiaController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual, $anchorScroll){
        $anchorScroll();
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);
        $scope.fecha = fechaActual;
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
            $scope.subsecciones = response.subsecciones;
        });
    })

    .controller('CulturaController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual,$anchorScroll){
        $anchorScroll();
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);
        $scope.fecha = fechaActual;
        $http.get("api/php/cultura.php").success(function (response){
            $scope.contratabues = response.contratabues;
            $scope.resenas = response.resenas;
            $scope.artes = response.artes;
            $scope.literaturas = response.literaturas;
            $scope.anecdotas = response.anecdotas;
            $scope.subsecciones = response.subsecciones;
        });
    })

    .controller('DeportesController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual,$anchorScroll){
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);
        $scope.fecha = fechaActual;
        $anchorScroll();
        $http.get("api/php/deportes.php").success(function (response){
            $scope.cronicas = response.cronicas;
            $scope.aconteceres = response.aconteceres;
            $scope.subsecciones = response.subsecciones;
        });
    })

    .controller('SubseccionController', function($scope, $http, $routeParams, $location, $timeout, ngProgressFactory, fechaActual, $anchorScroll){
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);
        $scope.fecha = fechaActual;
       var seccion = $routeParams.seccion;
       var subseccion = $routeParams.subseccion;
       $scope.currentPage = 1;
       $scope.pageSize = 4;
       $scope.maxSize = 15;
       $anchorScroll();
       $http.post("api/php/subseccion.php?seccion="+seccion+"&subseccion="+subseccion,{'selectSeccion':seccion}).success(function(data,status,headers,config,response){

                $http.get("api/php/subseccion.php?seccion="+seccion+"&subseccion="+subseccion).success(function(response){

                    $scope.contenidos = response.contenidos;
                    $scope.error = response.error;
                    $scope.secinfo = response.secinfo;
                    $scope.subinfo = response.subinfo;
                    $scope.subsecciones = response.subsecciones;
                });

       });
    })

    .controller('PostController', function($scope, $http, $location, $timeout, ngProgressFactory, $routeParams, fechaActual, $anchorScroll){
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);

        var seccion = $routeParams.seccion;
        var subseccion = $routeParams.subseccion;
        var titulo = $routeParams.titulo;
        var id = $routeParams.id;
        $anchorScroll();
        $scope.fecha = fechaActual;

         $http.post("api/php/post.php?seccion="+seccion+"&subseccion="+subseccion+"&id="+id,{'selectSeccion':seccion}).success(function(data,status,headers,config,response){

                $http.get("api/php/post.php?seccion="+seccion+"&subseccion="+subseccion+"&id="+id).success(function(response){

                    $scope.contenido = response.contenido;
                    $scope.error = response.error;
                    $scope.secinfo = response.secinfo;
                    $scope.subinfo = response.subinfo;
                    $scope.subsecciones = response.subsecciones;

                });

       });
    })

    .controller('BuscarController', function($scope, $http, $location, $timeout, ngProgressFactory, $routeParams, $anchorScroll){
        $anchorScroll();
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);
    });
