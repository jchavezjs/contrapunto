angular.module('contrapunto.controllers', [])

  .directive('ngSearch', function () {
  return function (scope, element, attrs) {
      element.bind("keydown keypress", function (event) {
          if(event.which === 13) {
              scope.$apply(function (){
                  scope.$eval(attrs.ngSearch);
              });

              event.preventDefault();
          }
      });
  };
  })
    .controller('MainController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual,$anchorScroll){
      $anchorScroll();

      $scope.search = function(query){
        $location.path('/buscar/' + query);
      };

      //ads
      $(document).ready(function() {
          $('#ads1').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 2000,
        });
      });
      $(document).ready(function() {
          $('#ads2').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads3').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads4').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads5').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads6').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads7').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads8').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads9').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads10').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads11').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads12').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads13').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads14').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads15').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads16').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads17').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads18').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads19').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads20').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      //ads

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
      //ads
      $(document).ready(function() {
          $('#ads1').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads2').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads3').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads4').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#adsMobile').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      //ads
      $scope.search = function(query){
        $location.path('/buscar/' + query);
      };
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
            $scope.autores = response.autores;
        });
    })

    .controller('PoliticaController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual,$anchorScroll){
      //ads
      $(document).ready(function() {
          $('#ads1').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads2').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads3').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads4').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#adsMobile').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      //ads
      $scope.search = function(query){
        $location.path('/buscar/' + query);
      };
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
      //ads
      $(document).ready(function() {
          $('#ads1').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads2').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads3').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads4').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#adsMobile').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      //ads
      $scope.search = function(query){
        $location.path('/buscar/' + query);
      };
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
      //ads
      $(document).ready(function() {
          $('#ads1').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads2').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads3').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads4').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#adsMobile').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      //ads
      $scope.search = function(query){
        $location.path('/buscar/' + query);
      };
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
      //ads
      $(document).ready(function() {
          $('#ads1').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads2').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads3').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads4').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#adsMobile').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      //ads
      $scope.search = function(query){
        $location.path('/buscar/' + query);
      };
        $anchorScroll();
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);
        $scope.fecha = fechaActual;
        var f=new Date();
        $scope.mercadofecha =  f.getDate() + "/" + (f.getMonth()+1) + "/" + f.getFullYear();
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
            $scope.mercas = response.mercas;
        });
    })

    .controller('CulturaController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual,$anchorScroll){
      //ads
      $(document).ready(function() {
          $('#ads1').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads2').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads3').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads4').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#adsMobile').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      //ads
      $scope.search = function(query){
        $location.path('/buscar/' + query);
      };
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
      //ads
      $(document).ready(function() {
          $('#ads1').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads2').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads3').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads4').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#adsMobile').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      //ads
      $scope.search = function(query){
        $location.path('/buscar/' + query);
      };
      $scope.top = function(){
        $anchorScroll();
      };
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
      //ads
      $(document).ready(function() {
          $('#ads1').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads2').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads3').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#adsMobile').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      //ads
        $scope.top = function(){
          $anchorScroll();
        };
        $scope.search = function(query){
          $location.path('/buscar/' + query);
        };
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

    .controller('SondeoController', function($scope, $http, $routeParams, $location, $timeout, ngProgressFactory, fechaActual, $anchorScroll){
        $scope.top = function(){
          $anchorScroll();
        };
        $scope.search = function(query){
          $location.path('/buscar/' + query);
        };
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
        $http.get("api/php/sondeo.php").success(function(response){
            $scope.subsecciones = response.subsecciones;
        });
    })

    .controller('CaricaturaController', function($scope, $http, $routeParams, $location, $timeout, ngProgressFactory, fechaActual, $anchorScroll){
        $scope.top = function(){
          $anchorScroll();
        };
        $scope.search = function(query){
          $location.path('/buscar/' + query);
        };
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
       $scope.pageSize = 6;
       $scope.maxSize = 15;
       $anchorScroll();
        $http.get("api/php/caricatura.php").success(function(response){
            $scope.subsecciones = response.subsecciones;
            $scope.contenidos = response.contenidos;
        });
    })

    .controller('PostController', function($scope, $http, $location, $timeout, ngProgressFactory, $routeParams, fechaActual, $anchorScroll){
      //ads
      $(document).ready(function() {
          $('#ads1').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads2').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      $(document).ready(function() {
          $('#ads3').cycle({
          fx: 'scrollHorz',
          speed:   500,
          timeout: 15000,
        });
      });
      //ads
      $scope.search = function(query){
        $location.path('/buscar/' + query);
      };
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);
      $scope.currentPage = 1;
       $scope.pageSize = 5;
       $scope.maxSize = 15;
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
                    $scope.fotogaleria = response.fotogaleria;
                });
       });
    })
    .controller('CPostController', function($scope, $http, $location, $timeout, ngProgressFactory, $routeParams, fechaActual, $anchorScroll){
      $scope.search = function(query){
        $location.path('/buscar/' + query);
      };
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);

        var id = $routeParams.id;
        $anchorScroll();
        $scope.fecha = fechaActual;

         $http.post("api/php/cpost.php?&id="+id,{'selectSeccion':id}).success(function(data,status,headers,config,response){

                $http.get("api/php/cpost.php?&id="+id).success(function(response){

                    $scope.contenido = response.contenido;
                    $scope.error = response.error;
                    $scope.secinfo = response.secinfo;
                    $scope.subinfo = response.subinfo;
                    $scope.subsecciones = response.subsecciones;
                    $scope.fotogaleria = response.fotogaleria;
                });
       });
    })

    .controller('BuscarController', function($scope, $http, $location, $timeout, ngProgressFactory, $routeParams, $anchorScroll, fechaActual){
        $anchorScroll();
        $scope.top = function(){
          $anchorScroll();
        };
        $scope.search = function(query){
          $location.path('/buscar/' + query);
        };
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);
        $scope.fecha = fechaActual;
        $scope.currentPage = 1;
        $scope.pageSize = 4;
        $scope.maxSize = 4;
        var query = $routeParams.query;
        $scope.query = query;
        if($scope.query == 'undefined'){
          $location.path('/');
        }
        $http.post("api/php/buscar.php?query="+query,{'selectSeccion':query}).success(function(data,status,headers,config,response){

               $http.get("api/php/buscar.php?query="+query).success(function(response){

                   $scope.resultados = response.resultado;
                   $scope.actualidades = response.actualidades;
                   $scope.caricatura = response.caricatura;

               });


      });
       $scope.buscar = function(busqueda){
        $location.path('/buscar/' + busqueda);
      }
    })
    .controller('AutorController', function($scope, $http, $location, $timeout, ngProgressFactory, $routeParams, $anchorScroll, fechaActual){
      $scope.search = function(query){
        $location.path('/buscar/' + query);
      };
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $scope.progressbar.setColor('#35A7FF');
        $timeout(function(){
            $scope.progressbar.complete();
            $scope.show = true;
        }, 300);
        $scope.fecha = fechaActual;
        var id = $routeParams.id;
        $scope.currentPage = 1;
        $scope.pageSize = 4;
        $scope.maxSize = 4;
        $http.post("api/php/autor.php?id="+id,{'selectSeccion':id}).success(function(data,status,headers,config,response){

               $http.get("api/php/autor.php?id="+id).success(function(response){
                  $scope.fotogalerias = response.fotogalerias;
                   $scope.autor = response.autor;
                   $scope.articulos = response.articulos;
                   $scope.actualidades = response.actualidades;
               });


      });
    });
