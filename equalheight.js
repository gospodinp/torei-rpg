//equal height plugin
$.fn.max = function(selector) {
    return Math.max.apply(null, this.map(function(index, el) {return selector.apply(el);}).get() );
}

$(window).load(function(){
    equalHeight();
});

$(window).resize(function(){
    $('.content-box').css('height', '');
    equalHeight();
});

function equalHeight(){
    if ( $( window ).width() > 768 ) {
        $('.content-box').height(function () {
            var maxHeight = $(this).closest('.level2').find('.content-box').max( function () {
                return $(this).height();
            });
            return maxHeight;
            });
    }
    else {
        $('.content-box').css('height', '');
    }
}
