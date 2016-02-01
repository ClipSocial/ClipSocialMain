// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var main = function(){

	$('#projetos').click(function(){
		$('#projetos > .menu').toggle('slow')
	});

	$('#patrocinadores').click(function(){
		$('#patrocinadores > .menu').toggle('slow')
	});

	$('#ong').click(function(){
        if($('#ong').hasClass('ong')){
            $('#ong').animate({width: '77.2%'}, 1000);
            $('#ong').removeClass('ong');
            $('#ong').addClass('ongv')
            $('#emp').animate({width: '10%'}, 1000);
            $('#emp').removeClass('emp');
            $('#emp').addClass('empm');
        }
        else if($('#ong').hasClass('ongv')){
            $('#ong').animate({width: '43.6%'}, 1000);
            $('#ong').removeClass('ongv');
            $('#ong').addClass('ong');
            $('#emp').animate({width: '43.6%'}, 1000);
            $('#emp').removeClass('empm');
            $('#emp').addClass('emp');  
        }
        else if($('#ong').hasClass('ongm')){
            $('#ong').animate({width: '77.2%'}, 1000);
            $('#ong').removeClass('ongm');
            $('#ong').addClass('ongv');
            $('#emp').animate({width: '10%'}, 1000);
            $('#emp').removeClass('empv');
            $('#emp').addClass('empm');
        }
    });
    
    $("#emp").click(function(){
        if($('#emp').hasClass('emp')){
            $('#emp').animate({width: '77.2%'}, 1000);
            $('#emp').removeClass('emp');
            $('#emp').addClass('empv');
            $('#ong').animate({width: '10%'}, 1000);
            $('#ong').removeClass('ong');
            $('#ong').addClass('ongm');
        }
        else if($('#emp').hasClass('empv')){
            $('#emp').animate({width: '43.6%'}, 1000);
            $('#emp').removeClass('empv');
            $('#emp').addClass('emp');
            $('#ong').animate({width: '43.6%'}, 1000);
            $('#ong').removeClass('ongm');
            $('#ong').addClass('ong');  
        }
        else if($('#emp').hasClass('empm')){
            $('#emp').animate({width: '77.2%'}, 1000);
            $('#emp').removeClass('empm');
            $('#emp').addClass('empv');
            $('#ong').animate({width: '10%'}, 1000);
            $('#ong').removeClass('ongv');
            $('#ong').addClass('ongm');
        }    
    });

	$('.cnpj-tag').click(function(){
		if($('.cnpj-form').hasClass('form-closed')){
			$('.cnpj-form').removeClass('form-closed');
			$('.cpf-form').removeClass('form-open');
			$('.cnpj-form').addClass('form-open');
			$('.cpf-form').addClass('form-closed');
			$('.cnpj-tag').removeClass('pag-closed');
			$('.cpf-tag').removeClass('pag-open');
			$('.cnpj-tag').addClass('pag-open');
			$('.cpf-tag').addClass('pag-closed');
		}
	});

	$('.cpf-tag').click(function(){
		if($('.cpf-form').hasClass('form-closed')){
			$('.cpf-form').removeClass('form-closed');
			$('.cnpj-form').removeClass('form-open');
			$('.cpf-form').addClass('form-open');
			$('.cnpj-form').addClass('form-closed');
			$('.cpf-tag').removeClass('pag-closed');
			$('.cnpj-tag').removeClass('pag-open');
			$('.cpf-tag').addClass('pag-open');
			$('.cnpj-tag').addClass('pag-closed');
		}
	});

	$('#pr').click(function(){
		if(($('.index-projetos').hasClass('index-close'))&&($('.index-sponsor').hasClass('index-open'))){
			$('.index-projetos').removeClass('index-close');
			$('.index-projetos').addClass('index-open');
			$('.index-sponsor').removeClass('index-open');
			$('.index-sponsor').addClass('index-close');
			$('#button-sponsor').removeClass('button-show');
			$('#button-sponsor').addClass('button-hidden');
			$('#button-project').removeClass('button-hidden');
			$('#button-project').addClass('button-show');
		}
		else if (($('.index-projetos').hasClass('index-close'))&&($('.index-novidades').hasClass('index-open'))) {
			$('.index-projetos').removeClass('index-close');
			$('.index-projetos').addClass('index-open');
			$('.index-novidades').removeClass('index-open');
			$('.index-novidades').addClass('index-close');
			$('#button-project').removeClass('button-hidden');
			$('#button-project').addClass('button-show');
		}
		else if (($('.index-projetos').hasClass('index-close'))&&($('.index-perfil').hasClass('index-open'))){
			$('.index-projetos').removeClass('index-close');
			$('.index-projetos').addClass('index-open');
			$('.index-perfil').removeClass('index-open');
			$('.index-perfil').addClass('index-close');
			$('#button-perfil').removeClass('button-show');
			$('#button-perfil').addClass('button-hidden');
			$('#button-project').removeClass('button-hidden');
			$('#button-project').addClass('button-show');
		}
	});

	$('#pt').click(function(){
		if(($('.index-sponsor').hasClass('index-close'))&&($('.index-projetos').hasClass('index-open'))){
			$('.index-sponsor').removeClass('index-close');
			$('.index-sponsor').addClass('index-open');
			$('.index-projetos').removeClass('index-open');
			$('.index-projetos').addClass('index-close');
			$('#button-sponsor').removeClass('button-hidden');
			$('#button-sponsor').addClass('button-show');
			$('#button-project').removeClass('button-show');
			$('#button-project').addClass('button-hidden');
		}
		else if(($('.index-sponsor').hasClass('index-close'))&&($('.index-novidades').hasClass('index-open'))){
			$('.index-sponsor').removeClass('index-close');
			$('.index-sponsor').addClass('index-open');
			$('.index-novidades').removeClass('index-open');
			$('.index-novidades').addClass('index-close');
			$('#button-sponsor').removeClass('button-hidden');
			$('#button-sponsor').addClass('button-show');
		}
		else if (($('.index-projetos').hasClass('index-close'))&&($('.index-perfil').hasClass('index-open'))){
			$('.index-sponsor').removeClass('index-close');
			$('.index-sponsor').addClass('index-open');
			$('.index-perfil').removeClass('index-open');
			$('.index-perfil').addClass('index-close');
			$('#button-sponsor').removeClass('button-hidden');
			$('#button-sponsor').addClass('button-show');
			$('#button-perfil').removeClass('button-show');
			$('#button-perfil').addClass('button-hidden');
		}
	});

	$('#nv').click(function(){
		if (($('.index-novidades').hasClass('index-close'))&&($('.index-projetos').hasClass('index-open'))){
			$('.index-novidades').removeClass('index-close');
			$('.index-novidades').addClass('index-open');
			$('.index-projetos').removeClass('index-open');
			$('.index-projetos').addClass('index-close');
			$('#button-project').removeClass('button-show');
			$('#button-project').addClass('button-hidden');
		}
		else if (($('.index-novidades').hasClass('index-close'))&&($('.index-sponsor').hasClass('index-open'))){
			$('.index-novidades').removeClass('index-close');
			$('.index-novidades').addClass('index-open');
			$('.index-sponsor').removeClass('index-open');
			$('.index-sponsor').addClass('index-close');
			$('#button-sponsor').removeClass('button-show');
			$('#button-sponsor').addClass('button-hidden');
		}
		else if (($('.index-novidades').hasClass('index-close'))&&($('.index-perfil').hasClass('index-open'))){
			$('.index-novidades').removeClass('index-close');
			$('.index-novidades').addClass('index-open');
			$('.index-perfil').removeClass('index-open');
			$('.index-perfil').addClass('index-close');
			$('#button-perfil').removeClass('button-show');
			$('#button-perfil').addClass('button-hidden');
		}

	});

	$('#pf').click(function(){
		if (($('.index-perfil').hasClass('index-close'))&&($('.index-projetos').hasClass('index-open'))){
			$('.index-perfil').removeClass('index-close');
			$('.index-perfil').addClass('index-open');
			$('.index-projetos').removeClass('index-open');
			$('.index-projetos').addClass('index-close');
			$('#button-perfil').removeClass('button-hidden');
			$('#button-perfil').addClass('button-show');
			$('#button-project').removeClass('button-show');
			$('#button-project').addClass('button-hidden');
		}
		else if (($('.index-perfil').hasClass('index-close'))&&($('.index-sponsor').hasClass('index-open'))){
			$('.index-perfil').removeClass('index-close');
			$('.index-perfil').addClass('index-open');
			$('.index-sponsor').removeClass('index-open');
			$('.index-sponsor').addClass('index-close');
			$('#button-perfil').removeClass('button-hidden');
			$('#button-perfil').addClass('button-show');
			$('#button-sponsor').removeClass('button-show');
			$('#button-sponsor').addClass('button-hidden');
		}
		else if (($('.index-perfil').hasClass('index-close'))&&($('.index-novidades').hasClass('index-open'))){
			$('.index-perfil').removeClass('index-close');
			$('.index-perfil').addClass('index-open');
			$('.index-novidades').removeClass('index-open');
			$('.index-novidades').addClass('index-close');
			$('#button-perfil').removeClass('button-hidden');
			$('#button-perfil').addClass('button-show');
		}
	});

	$('.proximo-slide').click(function() {
    	var currentSlide = $('.slide-ativo');
    	var nextSlide = currentSlide.next();

    	var currentDot = $('.slide-ativo');
    	var nextDot = currentDot.next();

    	if(!nextSlide.hasClass('escorregar')) {
      	nextSlide = $('#primeiro-slide');
      	nextDot = $('.ponto').first();
        }
    
    	currentSlide.fadeOut(600).removeClass('slide-ativo');
    	nextSlide.fadeIn(600).addClass('slide-ativo');

    	currentDot.removeClass('ponto-ativo');
    	nextDot.addClass('ponto-ativo');
  });


  	$('.slide-anterior').click(function() {
    	var currentSlide = $('.slide-ativo');
    	var prevSlide = currentSlide.prev();

    	var currentDot = $('.ponto-ativo');
    	var prevDot = currentDot.prev();

    	if(prevSlide.length === 0) {
      	prevSlide = $('.escorregar').last();
      	prevDot = $('.ponto').last();
    }
    
    	currentSlide.fadeOut(600).removeClass('slide-ativo');
    	prevSlide.fadeIn(600).addClass('slide-ativo');

    	currentDot.removeClass('ponto-ativo');
    	prevDot.addClass('ponto-ativo');
  });

  $('#tag-mensagens').click(function() {
  	  if($('#tag-mensagens').hasClass('tag-mensagem-fechada')) {
  	  	$('#tag-mensagens').animate({marginTop: '21.15em'}, 1000);
  	  	$('.caixa-de-mensagens').animate({ height: 'show'}, 1000);
  	  	$('.mensagens').animate({height: 'show'}, 1000);
  	  	$('.nova-mensagem').animate({height: 'show'}, 1000);
  	  	$('#tag-mensagens').removeClass('tag-mensagem-fechada');
  	  	$('#tag-mensagens').addClass('tag-mensagem-aberta');
  	  }
  	  else {
  	  	$('#tag-mensagens').animate({marginTop: '46.1em'}, 1000);
  	  	$('.caixa-de-mensagens').animate({ height: 'hide'}, 1000);
  	  	$('.mensagens').animate({height: 'hide'}, 1000);
  	  	$('.nova-mensagem').animate({height: 'hide'}, 1000);
  	  	$('#tag-mensagens').addClass('tag-mensagem-fechada');
  	  	$('#tag-mensagens').removeClass('tag-mensagem-aberta');
  	  }
  });

  $('.ponto').click(function(){
  	if ($('.ponto').hasClass('publico-alvo-botao')) {

  	var escorregada = $('.publico-alvo')
  	var escorregadaAtual = $('.slide-ativo');

  	escorregadaAtual.fadeOut(600).removeClass('slide-ativo');
  	escorregada.fadeIn(600).addClass('slide-ativo');

  };

  });

}

$(document).ready(main)
