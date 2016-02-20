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
          $scope.banner1 = response.banner1;
          $scope.intervalo1 = $scope.banner1[0].tiempo;
          $scope.banner2 = response.banner2;
          $scope.intervalo2 = $scope.banner2[0].tiempo;
          $scope.banner3 = response.banner3;
          $scope.intervalo3 = $scope.banner3[0].tiempo;
          $scope.banner4 = response.banner4;
          $scope.intervalo4 = $scope.banner4[0].tiempo;
          $scope.banner5 = response.banner5;
          $scope.intervalo5 = $scope.banner5[0].tiempo;
          $scope.banner6 = response.banner6;
          $scope.intervalo6 = $scope.banner6[0].tiempo;
          $scope.banner7 = response.banner7;
          $scope.intervalo7 = $scope.banner7[0].tiempo;
          $scope.banner8 = response.banner8;
          $scope.intervalo8 = $scope.banner8[0].tiempo;
          $scope.banner9 = response.banner9;
          $scope.intervalo9 = $scope.banner9[0].tiempo;
          $scope.banner10 = response.banner10;
          $scope.intervalo10 = $scope.banner10[0].tiempo;
          $scope.banner11 = response.banner11;
          $scope.intervalo11 = $scope.banner11[0].tiempo;
          $scope.banner12 = response.banner12;
          $scope.intervalo12 = $scope.banner12[0].tiempo;
          $scope.banner13 = response.banner13;
          $scope.intervalo13 = $scope.banner13[0].tiempo;
          $scope.banner14 = response.banner14;
          $scope.intervalo14 = $scope.banner14[0].tiempo;
          $scope.banner15 = response.banner15;
          $scope.intervalo15 = $scope.banner15[0].tiempo;
          $scope.banner16 = response.banner16;
          $scope.intervalo16 = $scope.banner16[0].tiempo;
          $scope.banner17 = response.banner17;
          $scope.intervalo17 = $scope.banner17[0].tiempo;
          $scope.banner18 = response.banner18;
          $scope.intervalo18 = $scope.banner18[0].tiempo;
          $scope.banner19 = response.banner19;
          $scope.intervalo19 = $scope.banner19[0].tiempo;
          $scope.banner20 = response.banner20;
          $scope.intervalo20 = $scope.banner20[0].tiempo;
          $scope.bannerMovil = response.bannerMovil;
          $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
      });



    })
    .controller('OpinionController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual, $anchorScroll){
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
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            $scope.banner4 = response.banner4;
            $scope.intervalo4 = $scope.banner4[0].tiempo;
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
        });
    })

    .controller('PoliticaController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual,$anchorScroll){
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
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            $scope.banner4 = response.banner4;
            $scope.intervalo4 = $scope.banner4[0].tiempo;
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
        });
    })

    .controller('InternacionalesController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual,$anchorScroll){
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
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            $scope.banner4 = response.banner4;
            $scope.intervalo4 = $scope.banner4[0].tiempo;
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
        });
    })

    .controller('SociedadController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual,$anchorScroll){

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
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            $scope.banner4 = response.banner4;
            $scope.intervalo4 = $scope.banner4[0].tiempo;
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
        });
    })

    .controller('EconomiaController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual, $anchorScroll){

      var datos = {
        "tasasInteres":{
          "fecha": "2016-02-20"
        },
        "bolsasMundo":{
          "fecha":"2016-02-15"
        }
      };

      $scope.fechasBolsas = datos.bolsasMundo;
      $scope.fechasTasas = datos.tasasInteres;

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
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            $scope.banner4 = response.banner4;
            $scope.intervalo4 = $scope.banner4[0].tiempo;
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
        });
    })

    .controller('CulturaController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual,$anchorScroll){
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
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            $scope.banner4 = response.banner4;
            $scope.intervalo4 = $scope.banner4[0].tiempo;
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
        });
    })

    .controller('DeportesController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual,$anchorScroll){
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
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            $scope.banner4 = response.banner4;
            $scope.intervalo4 = $scope.banner4[0].tiempo;
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
        });
    })

    .controller('SubseccionController', function($scope, $http, $routeParams, $location, $timeout, ngProgressFactory, fechaActual, $anchorScroll){
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
                    $scope.banner1 = response.banner1;
                    $scope.intervalo1 = $scope.banner1[0].tiempo;
                    $scope.banner2 = response.banner2;
                    $scope.intervalo2 = $scope.banner2[0].tiempo;
                    $scope.banner3 = response.banner3;
                    $scope.intervalo3 = $scope.banner3[0].tiempo;
                    $scope.bannerMovil = response.bannerMovil;
                    $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
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
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
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
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
        });
    })

    .controller('PostController', function($scope, $http, $location, $timeout, ngProgressFactory, $routeParams, fechaActual, $anchorScroll){
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
                    $scope.banner1 = response.banner1;
                    $scope.intervalo1 = $scope.banner1[0].tiempo;
                    $scope.banner2 = response.banner2;
                    $scope.intervalo2 = $scope.banner2[0].tiempo;
                    $scope.bannerMovil = response.bannerMovil;
                    $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
                    $scope.bannerPost = response.bannerPost;
                    $scope.intervaloPost = $scope.bannerPost[0].tiempo;
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
                   $scope.banner1 = response.banner1;
                   $scope.intervalo1 = $scope.banner1[0].tiempo;
                   $scope.banner2 = response.banner2;
                   $scope.intervalo2 = $scope.banner2[0].tiempo;
                   $scope.bannerMovil = response.bannerMovil;
                   $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;

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
                   $scope.banner1 = response.banner1;
                   $scope.intervalo1 = $scope.banner1[0].tiempo;
                   $scope.banner2 = response.banner2;
                   $scope.intervalo2 = $scope.banner2[0].tiempo;
                   $scope.bannerMovil = response.bannerMovil;
                   $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
               });


      });
    });
