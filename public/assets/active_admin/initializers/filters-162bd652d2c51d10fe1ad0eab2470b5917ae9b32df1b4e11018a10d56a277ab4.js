(function(){$(document).on("ready page:load turbolinks:load",function(){return $(".clear_filters_btn").click(function(){var n,t,i;return t=window.location.search.slice(1).split("&"),i=/^(q\[|q%5B|q%5b|page|commit)/,window.location.search=function(){var e,r,o;for(o=[],e=0,r=t.length;e<r;e++)n=t[e],n.match(i)||o.push(n);return o}().join("&")}),$(".filter_form").submit(function(){return $(this).find(":input").filter(function(){return""===this.value}).prop("disabled",!0)}),$(".filter_form_field.select_and_search select").change(function(){return $(this).siblings("input").prop({name:"q["+this.value+"]"})})})}).call(this);