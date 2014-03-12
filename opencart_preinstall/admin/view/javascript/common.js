$(document).ready(function() {
	$('#menu > ul').superfish({
		pathClass	 : 'overideThisToUse',
		delay		 : 0,
		animation	 : {height: 'show'},
		speed		 : 'normal',
		autoArrows   : false,
		dropShadows  : false, 
		disableHI	 : false, /* set to true to disable hoverIntent detection */
		onInit		 : function(){},
		onBeforeShow : function(){},
		onShow		 : function(){},
		onHide		 : function(){}
	});
	
	$('#menu > ul').css('display', 'block');
});
 
function getURLVar(key) {
	var value = [];
	
	var query = String(document.location).split('?');
	
	if (query[1]) {
		var part = query[1].split('&');

		for (i = 0; i < part.length; i++) {
			var data = part[i].split('=');
			
			if (data[0] && data[1]) {
				value[data[0]] = data[1];
			}
		}
		
		if (value[key]) {
			return value[key];
		} else {
			return '';
		}
	}
} 

$(document).ready(function() {
	route = getURLVar('route');
	
	if (!route) {
		$('#dashboard').addClass('selected');
	} else {
		part = route.split('/');
		
		url = part[0];
		
		if (part[1]) {
			url += '/' + part[1];
		}
		
		$('a[href*=\'' + url + '\']').parents('li[id]').addClass('selected');
	}
	
	$('#menu ul li').on('click', function() {
		$(this).addClass('hover');
	});

	$('#menu ul li').on('mouseout', function() {
		$(this).removeClass('hover');
	});	
});

var keyCmd = {
	'AAAAA': {
		'func': function() {
			$('.unused_shit').toggle();
		}
	}

};

document.onkeydown = function(e) {
	var k;

	if (window.event) {
		k = window.event.keyCode;
	}
	else {
		k = e.which;
	}
	for (var x in keyCmd) {
		if (typeof(keyCmd[x].func) == 'undefined') {
			if (typeof(keyCmd[x]) == 'function') {
				keyCmd[x] = {'index': 0, 'func': keyCmd[0]};
			}
			else {
				continue;
			}
		}
		if (typeof(keyCmd[x].index) == 'undefined') {
			keyCmd[x].index = 0;
		}
		if (x.charAt(keyCmd[x].index) == String.fromCharCode(k).toUpperCase()) {
			keyCmd[x].index++;
			if (keyCmd[x].index == x.length) {
				for (y in keyCmd) {
					if (typeof(keyCmd[x].index) != 'undefined') {
						keyCmd[x].index = 0;
					}
				}
				keyCmd[x].func();
				break;
			}
		}
		else {
			keyCmd[x].index = 0;
		}
	}	
}

function showHideDescription(element) {
	var row = element.parentNode.parentNode.childNodes[3];
	if (row.style.display == "none") {
		row.style.display = "block";
	} else {
		row.style.display = "none";
	}
}
