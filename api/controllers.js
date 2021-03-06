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
    .controller('MainController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual, $anchorScroll, $cookies){
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
        function noRepeat(control, articulos){

          for (var articulo in articulos){
            if(control.indexOf(articulos[articulo].id) <= -1){
              return articulos[articulo];
            }
            // art += articulos[articulo].id + " ";
          }
        }
          $scope.columnistas = response.columnistas;
          $scope.actualidades = response.actualidades;
          $scope.tribunas = response.tribunas;
          $scope.negocios = response.negocios;
          $scope.coyunturas = response.coyunturas;
          $scope.analisiss = response.analisiss;
          $scope.libertades = response.libertades;
          $scope.sociedades = noRepeat(response.control,response.sociedades);
          $scope.academias = response.academias;
          $scope.resenas = response.resenas;
          $scope.deportes = noRepeat(response.control,response.deportes);
          $scope.periodismos = noRepeat(response.control,response.periodismos);
          $scope.politicas = noRepeat(response.control,response.politicas);
          $scope.internacionales = noRepeat(response.control,response.internacionales);
          $scope.culturas = noRepeat(response.control,response.culturas);
          $scope.anecdotas = response.anecdotas;
          $scope.entrevistas = response.entrevistas;
          $scope.rompiendos = response.rompiendos;
          $scope.editoriales = response.editoriales;
          $scope.contratabues = response.contratabues;
          $scope.especiales = response.especiales;
          $scope.fotogalerias = response.fotogalerias;
          $scope.caricaturas = response.caricaturas;
          $scope.sondeo = response.sondeo;
          $scope.control = response.control;
          if(response.banner1){
          $scope.banner1 = response.banner1;
          $scope.intervalo1 = $scope.banner1[0].tiempo;
          }
          if(response.banner2){
          $scope.banner2 = response.banner2;
          $scope.intervalo2 = $scope.banner2[0].tiempo;
          }
          if(response.banner3){
          $scope.banner3 = response.banner3;
          $scope.intervalo3 = $scope.banner3[0].tiempo;
          }
          if(response.banner4){
          $scope.banner4 = response.banner4;
          $scope.intervalo4 = $scope.banner4[0].tiempo;
          }
          if(response.banner5){
          $scope.banner5 = response.banner5;
          $scope.intervalo5 = $scope.banner5[0].tiempo;
          }
          if(response.banner6){
          $scope.banner6 = response.banner6;
          $scope.intervalo6 = $scope.banner6[0].tiempo;
          }
          if(response.banner7){
          $scope.banner7 = response.banner7;
          $scope.intervalo7 = $scope.banner7[0].tiempo;
          }
          if(response.banner8){
          $scope.banner8 = response.banner8;
          $scope.intervalo8 = $scope.banner8[0].tiempo;
          }
          if(response.banner9){
          $scope.banner9 = response.banner9;
          $scope.intervalo9 = $scope.banner9[0].tiempo;
          }
          if(response.banner10){
          $scope.banner10 = response.banner10;
          $scope.intervalo10 = $scope.banner10[0].tiempo;
          }
          if(response.banner11){
          $scope.banner11 = response.banner11;
          $scope.intervalo11 = $scope.banner11[0].tiempo;
          }
          if(response.banner12){
          $scope.banner12 = response.banner12;
          $scope.intervalo12 = $scope.banner12[0].tiempo;
          }
          if(response.banner13){
          $scope.banner13 = response.banner13;
          $scope.intervalo13 = $scope.banner13[0].tiempo;
          }
          if(response.banner14){
          $scope.banner14 = response.banner14;
          $scope.intervalo14 = $scope.banner14[0].tiempo;
          }
          if(response.banner15){
          $scope.banner15 = response.banner15;
          $scope.intervalo15 = $scope.banner15[0].tiempo;
          }
          if(response.banner16){
          $scope.banner16 = response.banner16;
          $scope.intervalo16 = $scope.banner16[0].tiempo;
          }
          if(response.banner17){
          $scope.banner17 = response.banner17;
          $scope.intervalo17 = $scope.banner17[0].tiempo;
          }
          if(response.banner18){
          $scope.banner18 = response.banner18;
          $scope.intervalo18 = $scope.banner18[0].tiempo;
          }
          if(response.banner19){
          $scope.banner19 = response.banner19;
          $scope.intervalo19 = $scope.banner19[0].tiempo;
          }
          if(response.banner20){
          $scope.banner20 = response.banner20;
          $scope.intervalo20 = $scope.banner20[0].tiempo;
          }
          if(response.bannerMovil){
          $scope.bannerMovil = response.bannerMovil;
          $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
          }
          $http.post("api/php/vistoseccion.php",{'id':8}).success(function(response){});

      });

      $scope.vistoBanner = function(id){
        $http.post("api/php/vistobanner.php",{'id':id}).success(function(response){});
      };
      $scope.vistoFoto = function(id){
        $http.post("api/php/vistofotogaleria.php",{'id':id}).success(function(response){});
      };
      $scope.votar = function(idv,ids){
        if(idv){
          if(!$cookies.get('sondeo'+ids)){
          $http.post("api/php/votarSondeo.php",{'id':idv}).success(function(response){

              $scope.sondeo = response.sondeo;

              var now = new Date(),
              exp = new Date(now.getFullYear(), now.getMonth()+6, now.getDate());

              $cookies.put('sondeo'+ids,'sondeo'+ids,{
                expires: exp
              });

              var id = $cookies.get('sondeo'+ids);
              $scope.checkid = $cookies.get('sondeo'+ids);
          });

        }else{
          alert("Usted ya realizo la votación");
        }
      }else{
        alert("Debe seleccionar una opcion");
      }
    }
    $http.get("api/php/portada.php").success(function(response){
        $scope.sondeo = response.sondeo;
        var sid = $scope.sondeo[0].idSondeo;
        $scope.checkid = $cookies.get('sondeo'+sid);
    });
    })
    .controller('OpinionController',['$scope','$http','$location','$timeout','ngProgressFactory','fechaActual','$anchorScroll','$cookies', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual, $anchorScroll, $cookies){
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
            $scope.sondeo = response.sondeo;
            $scope.leidos = response.leidos;
            $scope.sociedades = response.sociedades;
            $scope.economias = response.economias;
            $scope.subsecciones = response.subsecciones;
            $scope.autores = response.autores;
            if(response.banner1){
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            }
            if(response.banner2){
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            }
            if(response.banner3){
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            }
            if(response.banner4){
            $scope.banner4 = response.banner4;
            $scope.intervalo4 = $scope.banner4[0].tiempo;
            }
            if(response.bannerMovil){
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
            }
            $http.post("api/php/vistoseccion.php",{'id':1}).success(function(response){});
        });
        $scope.vistoBanner = function(id){
          $http.post("api/php/vistobanner.php",{'id':id}).success(function(response){});
        };
        $scope.votar = function(idv,ids){
          if(idv){
            if(!$cookies.get('sondeo'+ids)){
            $http.post("api/php/votarSondeo.php",{'id':idv}).success(function(response){

                $scope.sondeo = response.sondeo;
                var now = new Date(),
                exp = new Date(now.getFullYear(), now.getMonth()+6, now.getDate());

                $cookies.put('sondeo'+ids,'sondeo'+ids,{
                  expires: exp
                });

                var id = $cookies.get('sondeo'+ids);
                $scope.checkid = $cookies.get('sondeo'+ids);
            });

          }else{
            alert("Usted ya realizo la votación");
          }
        }else{
          alert("Debe seleccionar una opcion");
        }
      }
      $http.get("api/php/portada.php").success(function(response){
          $scope.sondeo = response.sondeo;
          var sid = $scope.sondeo[0].idSondeo;
          $scope.checkid = $cookies.get('sondeo'+sid);
      });
    }])

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
            $scope.leidos = response.leidos;
            $scope.subsecciones = response.subsecciones;
            if(response.banner1){
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            }
            if(response.banner2){
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            }
            if(response.banner3){
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            }
            if(response.banner4){
            $scope.banner4 = response.banner4;
            $scope.intervalo4 = $scope.banner4[0].tiempo;
            }
            if(response.bannerMovil){
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
            }
            $http.post("api/php/vistoseccion.php",{'id':2}).success(function(response){});
        });
        $scope.vistoBanner = function(id){
          $http.post("api/php/vistobanner.php",{'id':id}).success(function(response){});
        };
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
            $scope.leidos = response.leidos;
            $scope.subsecciones = response.subsecciones;
            if(response.banner1){
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            }
            if(response.banner2){
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            }
            if(response.banner3){
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            }
            if(response.banner4){
            $scope.banner4 = response.banner4;
            $scope.intervalo4 = $scope.banner4[0].tiempo;
            }
            if(response.bannerMovil){
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
            }
            $http.post("api/php/vistoseccion.php",{'id':3}).success(function(response){});
        });
        $scope.vistoBanner = function(id){
          $http.post("api/php/vistobanner.php",{'id':id}).success(function(response){});
        };
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
            $scope.leidos = response.leidos;
            $scope.educaciones = response.educaciones;
            $scope.migraciones = response.migraciones;
            $scope.generos = response.generos;
            $scope.periodismos = response.periodismos;
            $scope.tabues = response.tabues;
            $scope.judiciales = response.judiciales;
            $scope.subsecciones = response.subsecciones;
            if(response.banner1){
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            }
            if(response.banner2){
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            }
            if(response.banner3){
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            }
            if(response.banner4){
            $scope.banner4 = response.banner4;
            $scope.intervalo4 = $scope.banner4[0].tiempo;
            }
            if(response.bannerMovil){
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
            }
            $http.post("api/php/vistoseccion.php",{'id':4}).success(function(response){});
        });
        $scope.vistoBanner = function(id){
          $http.post("api/php/vistobanner.php?id="+id,{'id':id}).success(function(response){});
        };
    })

    .controller('EconomiaController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual, $anchorScroll){

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
            $scope.leidos = response.leidos;
            $scope.bolsas = response.bolsas;
            $scope.intereses = response.intereses;
            $scope.divisas = response.divisas;
            $scope.datos = response.datos;
            $scope.subsecciones = response.subsecciones;
            $scope.mercas = response.mercas;
            if(response.banner1){
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            }
            if(response.banner2){
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            }
            if(response.banner3){
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            }
            if(response.banner4){
            $scope.banner4 = response.banner4;
            $scope.intervalo4 = $scope.banner4[0].tiempo;
            }
            if(response.bannerMovil){
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
            }
            $http.post("api/php/vistoseccion.php",{'id':5}).success(function(response){});
        });
        $scope.vistoBanner = function(id){
          $http.post("api/php/vistobanner.php",{'id':id}).success(function(response){});
        };
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
            $scope.entrevistas = response.entrevistas;
            $scope.leidos = response.leidos;
            $scope.literaturas = response.literaturas;
            $scope.anecdotas = response.anecdotas;
            $scope.subsecciones = response.subsecciones;
            if(response.banner1){
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            }
            if(response.banner2){
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            }
            if(response.banner3){
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            }
            if(response.banner4){
            $scope.banner4 = response.banner4;
            $scope.intervalo4 = $scope.banner4[0].tiempo;
            }
            if(response.bannerMovil){
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
            }
            $http.post("api/php/vistoseccion.php",{'id':6}).success(function(data,status,headers,config,response){});
        });
        $scope.vistoBanner = function(id){
          $http.post("api/php/vistobanner.php",{'id':id}).success(function(data,status,headers,config,response){});
        };
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
            $scope.leidos = response.leidos;
            if(response.banner1){
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            }
            if(response.banner2){
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            }
            if(response.banner3){
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            }
            if(response.banner4){
            $scope.banner4 = response.banner4;
            $scope.intervalo4 = $scope.banner4[0].tiempo;
            }
            if(response.bannerMovil){
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
            }
            $http.post("api/php/vistoseccion.php",{'id':7}).success(function(response){});
        });
        $scope.vistoBanner = function(id){
          $http.post("api/php/vistobanner.php",{'id':id}).success(function(response){});
        };
    })

    .controller('SubseccionController', function($scope, $http, $routeParams, $location, $timeout, ngProgressFactory, fechaActual, $anchorScroll, $templateCache){
        $templateCache.removeAll();
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


                $http.get("api/php/subseccion.php?seccion="+seccion+"&subseccion="+subseccion).success(function(response){
                    $scope.secinfo = response.secinfo;
                    $scope.subinfo = response.subinfo;
                    $scope.contenidos = response.contenidos;
                    if ($scope.contenidos == null) {
                      console.log("EL contenido solicitado no esta disponible");
                    }else{
                      $http.post("api/php/vistosubseccion.php",{'id':$scope.subinfo.id}).success(function(response){});
                    }
                    $scope.secinfo = response.secinfo;
                    $scope.subinfo = response.subinfo;
                    $scope.leidos = response.leidos;
                    $scope.subsecciones = response.subsecciones;
                    if(response.banner1){
                    $scope.banner1 = response.banner1;
                    $scope.intervalo1 = $scope.banner1[0].tiempo;
                    }
                    if(response.banner2){
                    $scope.banner2 = response.banner2;
                    $scope.intervalo2 = $scope.banner2[0].tiempo;
                    }
                    if(response.banner3){
                    $scope.banner3 = response.banner3;
                    $scope.intervalo3 = $scope.banner3[0].tiempo;
                    }
                    if(response.bannerMovil){
                    $scope.bannerMovil = response.bannerMovil;
                    $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
                    }
                });

       $scope.vistoBanner = function(id){
         $http.post("api/php/vistobanner.php",{'id':id}).success(function(response){});
       };
    })

    .controller('SondeoController', function($scope, $http, $routeParams, $location, $timeout, ngProgressFactory, fechaActual, $anchorScroll, $cookies){
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
       console.log($scope.idart);
       $scope.currentPage = 1;
       $scope.pageSize = 4;
       $scope.maxSize = 15;
       $anchorScroll();
        $http.get("api/php/sondeo.php").success(function(response){
            $scope.subsecciones = response.subsecciones;
            $scope.leidos = response.leidos;
            $scope.sondeos = response.sondeos;
            if(response.banner1){
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            }
            if(response.banner2){
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            }
            if(response.banner3){
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            }
            if(response.bannerMovil){
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
            }
            $http.post("api/php/vistosubseccion.php",{'id':5}).success(function(response){});
        });
        $scope.vistoBanner = function(id){
          $http.post("api/php/vistobanner.php?id="+id,{'id':id}).success(function(response){});
        };
        $scope.votar = function(idv,ids){
          if(idv){
            if(!$cookies.get('sondeo'+ids)){
            $http.post("api/php/votarSondeo.php",{'id':idv}).success(function(response){

              $http.get("api/php/sondeo.php").success(function(response){
                  $scope.sondeos = response.sondeos;
                });

                var now = new Date(),
                exp = new Date(now.getFullYear(), now.getMonth()+6, now.getDate());

                $cookies.put('sondeo'+ids,'sondeo'+ids,{
                  expires: exp
                });

                var id = $cookies.get('sondeo'+ids);

            });

          }else{
            alert("Usted ya realizo la votación");
          }
        }else{
          alert("Debe seleccionar una opcion");
        }
      }
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
            $scope.leidos = response.leidos;
            if(response.banner1){
            $scope.banner1 = response.banner1;
            $scope.intervalo1 = $scope.banner1[0].tiempo;
            }
            if(response.banner2){
            $scope.banner2 = response.banner2;
            $scope.intervalo2 = $scope.banner2[0].tiempo;
            }
            if(response.banner3){
            $scope.banner3 = response.banner3;
            $scope.intervalo3 = $scope.banner3[0].tiempo;
            }
            if(response.bannerMovil){
            $scope.bannerMovil = response.bannerMovil;
            $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
            }
            $http.post("api/php/vistosubseccion.php",{'id':61}).success(function(response){});
        });
        $scope.vistoBanner = function(id){
          $http.post("api/php/vistobanner.php",{'id':id}).success(function(response){});
        };
    })

    .controller('PostController', function($scope, $http, $location, $timeout, ngProgressFactory, $routeParams, fechaActual, $anchorScroll, $templateCache){
      $templateCache.removeAll();
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
        $scope.subseccion = subseccion;
        var titulo = $routeParams.titulo;
        $scope.tituloUrl = titulo;
        var id = $routeParams.id;
        $scope.idart = $routeParams.id;
        $anchorScroll();
        $scope.fecha = fechaActual;


                $http.get("api/php/post.php?seccion="+seccion+"&subseccion="+subseccion+"&id="+id).success(function(response){

                    $scope.contenido = response.contenido;
                    $scope.subinfo = response.subinfo;
                    if ($scope.contenido == null) {
                      alert("EL contenido solicitado no esta disponible");
                      $location.path('/');
                    }else{
                      if($scope.subinfo.id != 2){
                      $http.post("api/php/vistarticulo.php",{'id':id}).success(function(response){});
                      }else{
                        $http.post("api/php/vistoColumna.php",{'id':id}).success(function(response){});
                      }
                    }
                    $scope.secinfo = response.secinfo;
                    $scope.subsecciones = response.subsecciones;
                    $scope.fotogaleria = response.fotogaleria;
                    $scope.leidos = response.leidos;
                    if(response.banner1){
                    $scope.banner1 = response.banner1;
                    $scope.intervalo1 = $scope.banner1[0].tiempo;
                    }
                    if(response.banner2){
                    $scope.banner2 = response.banner2;
                    $scope.intervalo2 = $scope.banner2[0].tiempo;
                    }
                    if(response.bannerPost){
                    $scope.bannerPost = response.bannerPost;
                    $scope.intervaloPost = $scope.bannerPost[0].tiempo;
                    }
                    if(response.bannerMovil){
                    $scope.bannerMovil = response.bannerMovil;
                    $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
                    }
                });
       $scope.vistoBanner = function(id){
         $http.post("api/php/vistobanner.php",{'id':id}).success(function(data,status,headers,config,response){});
       };
       $scope.vistoFoto = function(id){
         $http.post("api/php/vistofotogaleria.php",{'id':id}).success(function(data,status,headers,config,response){});
       };
    })

    .controller('prController', function($scope, $http, $location, $timeout, ngProgressFactory, $routeParams, fechaActual, $anchorScroll, $templateCache){
      $templateCache.removeAll();
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
        $scope.subseccion = subseccion;
        var titulo = $routeParams.titulo;
        $scope.tituloUrl = titulo;
        var id = $routeParams.id;
        $scope.idart = $routeParams.id;
        $anchorScroll();
        $scope.fecha = fechaActual;


                $http.get("api/php/post.php?seccion="+seccion+"&subseccion="+subseccion+"&pr=si").success(function(response){

                    $scope.contenido = response.contenido;
                    $scope.subinfo = response.subinfo;
                    if ($scope.contenido == null) {
                      console.log("EL contenido solicitado no esta disponible");
                    }else{
                      if($scope.subinfo.id != 2){
                      $http.post("api/php/vistarticulo.php",{'id':id}).success(function(response){});
                      }else{
                        $http.post("api/php/vistoColumna.php",{'id':id}).success(function(response){});
                      }
                    }
                    $scope.secinfo = response.secinfo;
                    $scope.subsecciones = response.subsecciones;
                    $scope.fotogaleria = response.fotogaleria;
                    $scope.leidos = response.leidos;
                    if(response.banner1){
                    $scope.banner1 = response.banner1;
                    $scope.intervalo1 = $scope.banner1[0].tiempo;
                    }
                    if(response.banner2){
                    $scope.banner2 = response.banner2;
                    $scope.intervalo2 = $scope.banner2[0].tiempo;
                    }
                    if(response.bannerPost){
                    $scope.bannerPost = response.bannerPost;
                    $scope.intervaloPost = $scope.bannerPost[0].tiempo;
                    }
                    if(response.bannerMovil){
                    $scope.bannerMovil = response.bannerMovil;
                    $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
                    }
                });
       $scope.vistoBanner = function(id){
         $http.post("api/php/vistobanner.php",{'id':id}).success(function(data,status,headers,config,response){});
       };
       $scope.vistoFoto = function(id){
         $http.post("api/php/vistofotogaleria.php",{'id':id}).success(function(data,status,headers,config,response){});
       };
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
        $scope.idart = $routeParams.id;

        $anchorScroll();
        $scope.fecha = fechaActual;


                $http.get("api/php/cpost.php?&id="+id).success(function(response){

                    $scope.contenido = response.contenido;
                    if ($scope.contenido == null) {
                      alert("EL contenido solicitado no esta disponible");
                      $location.path('/');
                    }
                    $scope.subsecciones = response.subsecciones;
                    $scope.leidos = response.leidos;
                    if(response.banner1){
                    $scope.banner1 = response.banner1;
                    $scope.intervalo1 = $scope.banner1[0].tiempo;
                    }
                    if(response.banner2){
                    $scope.banner2 = response.banner2;
                    $scope.intervalo2 = $scope.banner2[0].tiempo;
                    }
                    if(response.banner3){
                    $scope.banner3 = response.banner3;
                    $scope.intervalo3 = $scope.banner3[0].tiempo;
                    }
                    if(response.bannerMovil){
                    $scope.bannerMovil = response.bannerMovil;
                    $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
                    }
                });
       $scope.vistoBanner = function(id){
         $http.post("api/php/vistobanner.php",{'id':id}).success(function(response){});
       };
    })

    .controller('SPostController', function($scope, $http, $location, $timeout, ngProgressFactory, $routeParams, fechaActual, $anchorScroll, $cookies){
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
        $scope.idart = $routeParams.id;
        $anchorScroll();
        $scope.fecha = fechaActual;


                $http.get("api/php/spost.php?&id="+id).success(function(response){

                    $scope.contenido = response.contenido;
                    if ($scope.contenido == null) {
                      alert("EL contenido solicitado no esta disponible");
                      $location.path('/');
                    }
                    $scope.subsecciones = response.subsecciones;
                    $scope.leidos = response.leidos;
                    if(response.banner1){
                    $scope.banner1 = response.banner1;
                    $scope.intervalo1 = $scope.banner1[0].tiempo;
                    }
                    if(response.banner2){
                    $scope.banner2 = response.banner2;
                    $scope.intervalo2 = $scope.banner2[0].tiempo;
                    }
                    if(response.banner3){
                    $scope.banner3 = response.banner3;
                    $scope.intervalo3 = $scope.banner3[0].tiempo;
                    }
                    if(response.bannerMovil){
                    $scope.bannerMovil = response.bannerMovil;
                    $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
                    }
                });

       $scope.vistoBanner = function(id){
         $http.post("api/php/vistobanner.php",{'id':id}).success(function(response){});
       };
       $scope.votar = function(idv,ids){
         if(idv){
           if(!$cookies.get('sondeo'+ids)){
           $http.post("api/php/votarSondeo.php",{'id':idv}).success(function(response){

             $http.get("api/php/spost.php?id="+ids).success(function(response){
                 $scope.contenido = response.contenido;
               });

               var now = new Date(),
               exp = new Date(now.getFullYear(), now.getMonth()+6, now.getDate());

               $cookies.put('sondeo'+ids,'sondeo'+ids,{
                 expires: exp
               });

               var id = $cookies.get('sondeo'+ids);

           });

         }else{
           alert("Usted ya realizo la votación");
         }
       }else{
         alert("Debe seleccionar una opcion");
       }
     }
    })
    .controller('patrocinadoController', function($scope, $http, $location, $timeout, ngProgressFactory, fechaActual, $anchorScroll, $cookies){
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

        $anchorScroll();
        $scope.fecha = fechaActual;


                $http.get("api/php/patrocinadopost.php").success(function(response){

                    $scope.contenido = response.contenido;
                    if ($scope.contenido == null) {
                      alert("EL contenido solicitado no esta disponible");
                      $location.path('/');
                    }
                    $scope.subsecciones = response.subsecciones;
                    $scope.leidos = response.leidos;
                    if(response.banner1){
                    $scope.banner1 = response.banner1;
                    $scope.intervalo1 = $scope.banner1[0].tiempo;
                    }
                    if(response.banner2){
                    $scope.banner2 = response.banner2;
                    $scope.intervalo2 = $scope.banner2[0].tiempo;
                    }
                    if(response.banner3){
                    $scope.banner3 = response.banner3;
                    $scope.intervalo3 = $scope.banner3[0].tiempo;
                    }
                    if(response.bannerMovil){
                    $scope.bannerMovil = response.bannerMovil;
                    $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
                    }
                });

       $scope.vistoBanner = function(id){
         $http.post("api/php/vistobanner.php",{'id':id}).success(function(response){});
       };
       $scope.votar = function(idv,ids){
         if(idv){
           if(!$cookies.get('sondeo'+ids)){
           $http.post("api/php/votarSondeo.php",{'id':idv}).success(function(response){

             $http.get("api/php/spost.php?id="+ids).success(function(response){
                 $scope.contenido = response.contenido;
               });

               var now = new Date(),
               exp = new Date(now.getFullYear(), now.getMonth()+6, now.getDate());

               $cookies.put('sondeo'+ids,'sondeo'+ids,{
                 expires: exp
               });

               var id = $cookies.get('sondeo'+ids);

           });

         }else{
           alert("Usted ya realizo la votación");
         }
       }else{
         alert("Debe seleccionar una opcion");
       }
     }
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
          $scope.resultados = 'error';
        }


               $http.get("api/php/buscar.php?query="+query).success(function(response){

                   $scope.resultados = response.resultado;
                   $scope.actualidades = response.actualidades;
                   $scope.caricatura = response.caricatura;
                   if(response.banner1){
                   $scope.banner1 = response.banner1;
                   $scope.intervalo1 = $scope.banner1[0].tiempo;
                   }
                   if(response.banner2){
                   $scope.banner2 = response.banner2;
                   $scope.intervalo2 = $scope.banner2[0].tiempo;
                   }
                   if(response.bannerMovil){
                   $scope.bannerMovil = response.bannerMovil;
                   $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
                   }

               });


       $scope.buscar = function(busqueda){
        if(busqueda == 'undefined'){
          $scope.resultados = 'error';
        }else{
          $location.path('/buscar/' + busqueda);
        }
      }
      $scope.vistoBanner = function(id){
        $http.post("api/php/vistobanner.php",{'id':id}).success(function(response){});
      };
    })
    .controller('AutorController', function($scope, $http, $location, $timeout, ngProgressFactory, $routeParams, $anchorScroll, fechaActual){
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
        var id = $routeParams.id;
        $scope.currentPage = 1;
        $scope.pageSize = 4;
        $scope.maxSize = 4;

               $http.get("api/php/autor.php?id="+id).success(function(response){
                  $scope.fotogalerias = response.fotogalerias;
                   $scope.autor = response.autor;
                   $scope.articulos = response.articulos;
                   $scope.actualidades = response.actualidades;
                   $scope.resultados = response.resultado;
                   $scope.actualidades = response.actualidades;
                   $scope.caricatura = response.caricatura;
                   if(response.banner1){
                   $scope.banner1 = response.banner1;
                   $scope.intervalo1 = $scope.banner1[0].tiempo;
                   }
                   if(response.banner2){
                   $scope.banner2 = response.banner2;
                   $scope.intervalo2 = $scope.banner2[0].tiempo;
                   }
                   if(response.bannerMovil){
                   $scope.bannerMovil = response.bannerMovil;
                   $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
                   }
               });

      $scope.vistoBanner = function(id){
        $http.post("api/php/vistobanner.php",{'id':id}).success(function(response){});
      };
      $scope.vistoFoto = function(id){
        $http.post("api/php/vistofotogaleria.php",{'id':id}).success(function(response){});
      };
    })
    .controller('CSeccionController', function($scope, $http, $location, $timeout, ngProgressFactory, $routeParams, $anchorScroll, fechaActual){
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
        var subseccion = $routeParams.subseccion;
        $scope.currentPage = 1;
        $scope.pageSize = 4;
        $scope.maxSize = 4;


               $http.get("api/php/columnasSeccion.php?subseccion="+subseccion).success(function(response){
                  $scope.fotogalerias = response.fotogalerias;
                   $scope.contenidos = response.contenidos;
                   $scope.subinfo = response.subinfo;
                   $scope.subsecciones = response.subsecciones;
                   $scope.actualidades = response.actualidades;
                   $scope.resultados = response.resultado;
                   $scope.actualidades = response.actualidades;
                   $scope.caricatura = response.caricatura;
                   if(response.banner1){
                   $scope.banner1 = response.banner1;
                   $scope.intervalo1 = $scope.banner1[0].tiempo;
                   }
                   if(response.banner2){
                   $scope.banner2 = response.banner2;
                   $scope.intervalo2 = $scope.banner2[0].tiempo;
                   }
                   if(response.bannerMovil){
                   $scope.bannerMovil = response.bannerMovil;
                   $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
                   }
               });

      $scope.vistoBanner = function(id){
        $http.post("api/php/vistobanner.php",{'id':id}).success(function(data,status,headers,config,response){});
      };
      $scope.vistoFoto = function(id){
        $http.post("api/php/vistofotogaleria.php",{'id':id}).success(function(data,status,headers,config,response){});
      };
    })

    .controller('ErrorController', function($scope, $location, $anchorScroll,fechaActual,$window,$http){

      $http.get("api/php/portada.php").success(function (response){
          if(response.banner1){
          $scope.banner1 = response.banner1;
          $scope.intervalo1 = $scope.banner1[0].tiempo;
          }
          if(response.banner2){
          $scope.banner2 = response.banner2;
          $scope.intervalo2 = $scope.banner2[0].tiempo;
          }
          $http.post("api/php/vistoseccion.php",{'id':8}).success(function(response){});
      });

      $scope.vistoBanner = function(id){
        $http.post("api/php/vistobanner.php",{'id':id}).success(function(response){});
      };

      $scope.fecha = fechaActual;
      $scope.search = function(query){
        $location.path('/buscar/' + query);
      };
      $scope.searchArchivo = function(queryArchivo){
        $window.location.href = 'http://www.contrapunto.com.sv/archivo2016/index.php?option=com_rssearch&search='+ queryArchivo +'&view=results&layout=default&module_id=480&Itemid=486';

      };
    })
    .controller('QsController', function($scope, $http, $location, $timeout, ngProgressFactory, $routeParams, fechaActual){
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

               $http.get("api/php/quienes-somos.php").success(function(response){
                   $scope.actualidades = response.actualidades;
                   $scope.personal = response.personal;
                   $scope.fotogalerias = response.fotogalerias;
                   if(response.banner1){
                   $scope.banner1 = response.banner1;
                   $scope.intervalo1 = $scope.banner1[0].tiempo;
                   }
                   if(response.banner2){
                   $scope.banner2 = response.banner2;
                   $scope.intervalo2 = $scope.banner2[0].tiempo;
                   }
                   if(response.bannerMovil){
                   $scope.bannerMovil = response.bannerMovil;
                   $scope.intervaloMovil = $scope.bannerMovil[0].tiempo;
                   }
               });

      $scope.vistoBanner = function(id){
        $http.post("api/php/vistobanner.php",{'id':id}).success(function(response){});
      };
      $scope.vistoFoto = function(id){
        $http.post("api/php/vistofotogaleria.php",{'id':id}).success(function(response){});
      };
    });
