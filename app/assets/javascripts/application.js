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
//= require nouislider
	
$(document).on('page:change', function(event) {
	int();
});

function int() {
		if ($("body").hasClass( "registrations" )){
			var html5Slider = document.getElementById('age-slider');
			var selectMin = document.getElementById('user_age_min_pref');
			var selectMax = document.getElementById('user_age_max_pref');
	
			var ageMin = selectMin.options[selectMin.selectedIndex].value;
			var ageMax = selectMax.options[selectMax.selectedIndex].value;
	
			noUiSlider.create(html5Slider, {
				start: [ ageMin, ageMax ],
				connect: true,
				step: 1,
				tooltips: true,
				range: {
					'min': 19,
					'max': 99
				}
			});	
	
			html5Slider.noUiSlider.on('update', function( values, handle ) {
				var value = values[handle];
				if (handle) {
					selectMax.value = Math.round(value);
				} else {
					selectMin.value = Math.round(value);
				}
			});

			selectMin.addEventListener('change', function(){
				console.log('selectMIn: '+ this.value);
				html5Slider.noUiSlider.set([this.value, null]);
			});

			selectMax.addEventListener('change', function(){
				console.log('selectMax: '+ this.value)
				html5Slider.noUiSlider.set([null, this.value]);
			});
		}

};
	