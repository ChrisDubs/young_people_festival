!function(t){"use strict";t.paletteColorPicker=function(e,s){var a="palette-color-picker",i=t(e),n=this,o=i.val(),r=i.attr("name"),c=t("<div>").addClass(a+"-button").attr("data-target",r),l=t("<div>").addClass(a+"-bubble"),d={custom_class:null,colors:null,position:"upside",insert:"before",clear_btn:"first",timeout:2e3};n.init=function(){n.settings=t.extend({},d,s),null===n.settings.colors&&(n.settings.colors=i.data("palette")),"string"==typeof n.settings.colors[0]&&(n.settings.colors=t.map(n.settings.colors,function(t){var e={};return e[t]=t,e})),n.settings.insert=n.settings.insert.charAt(0).toUpperCase()+n.settings.insert.slice(1),n.settings.custom_class&&l.addClass(n.settings.custom_class),t.each(n.settings.colors,function(e,s){var a=Object.keys(s)[0],i=s[a],n=t("<span>").addClass("swatch").attr({title:a,"data-color":i,"data-name":a}).css("background-color",i);a===o&&(n.addClass("active"),c.css("background",i)),n.appendTo(l)});var e=t("<span>").addClass("swatch clear").attr("title","Clear selection");"last"===n.settings.clear_btn?e.addClass("last").appendTo(l):e.prependTo(l),n.destroy=function(){c.remove(),t.removeData(i[0])},c.append(l).on("click",function(){var e=t(this);e.toggleClass("active").find("."+a+"-bubble").fadeToggle(),e.hasClass("active")&&(clearTimeout(n.timer),n.timer=setTimeout(function(){e.trigger("pcp.fadeout")},n.settings.timeout))}).on("pcp.fadeout",function(){t(this).removeClass("active").find("."+a+"-bubble").fadeOut()}).on("mouseenter","."+a+"-bubble",function(){clearTimeout(n.timer)}).on("mouseleave","."+a+"-bubble",function(){n.timer=setTimeout(function(){c.trigger("pcp.fadeout")},n.settings.timeout)}).on("click","span.swatch",function(e){var s=t(this).attr("data-color"),i=t(this).attr("data-name"),n=t("."+a+'-button[data-target="'+t(this).closest("."+a+"-button").attr("data-target")+'"]'),o=t(this).closest("."+a+"-bubble");o.find(".active").removeClass("active"),t(e.target).is(".clear")?(n.removeAttr("style"),s=""):(t(this).addClass("active"),n.css("background",s)),t('[name="'+n.attr("data-target")+'"]').val(i)})["insert"+n.settings.insert](i),("downside"===n.settings.position||i.offset().top+20<l.outerHeight())&&l.addClass("downside")},n.init()},t.fn.paletteColorPicker=function(e){return this.each(function(){"undefined"==typeof t(this).data("paletteColorPickerPlugin")&&t(this).data("paletteColorPickerPlugin",new t.paletteColorPicker(this,e))})}}(jQuery);