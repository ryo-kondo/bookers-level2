// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require_tree .

// $(function() {
// 	alert();
// 	$('#user_profile_image').on('change', function(e) {
// 		var reader = new FileReader();
// 		reader.onload = function(e) {
// 			$('#preview').attr('src', e.target.result);
// 		};
// 		reader.readAsDataURL(e.target.files[0]);
// 	});
// });

// $(document).on('turbolinks:load', function() {
// 	$('#self_analysis_analysis_part_id').on('change', function() {
// 		let input = $('#self_analysis_analysis_part_id').val();
// 		$.ajax({
// 			type: 'GET',
// 			url: '/public/self_analyses/part_select',
// 			data: { step_select: input },
// 			dataType: 'json'
// 		})
// 			.done(function(data) {
// 				console.log(data);
// 				$('#self_analysis_user_question_id option').remove();
// 				for (var i = 0; i < data.length; i++) {
// 					$('#self_analysis_user_question_id').append(`<option value='${data[i].step}'>step${data[i].step}</option>`);
// 					$('#user_question').text(data[0].question);
// 				}
// 			})
// 			.fail(function() {
// 				console.log('失敗');
// 			});
// 	});
// 	$('#self_analysis_user_question_id').on('change', function() {
// 		hoge();
// 	});

// 	hoge();
// 	function hoge() {
// 		let input = $('#self_analysis_user_question_id').val();
// 		$.ajax({
// 			type: 'GET',
// 			url: '/public/self_analyses/step_select',
// 			data: { question_put: input },
// 			dataType: 'json'
// 		}).done(function(data) {
// 			console.log(data);
// 			$('#user_question').text(data.question);
// 		});
// 	}
// });
