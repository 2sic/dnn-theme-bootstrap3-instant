/* apply css3 pie for support: box-shadow, gradients and rounded corners in IE < 10 */
$(function() {
    if (window.PIE) {
        $('#dnn_Slogan').each(function() {
            PIE.attach(this);
        });
    }
	
	/* Open all PDF links in a new window */
	$("a[href$='.pdf']").attr('target', '_blank');



    /* SIDR Off-Canvas Menu */
	$(".ly-nav-mobile-trigger").sidr({
	    name: 'nav-main-offcanvas',
	    source: "#nav-mobile",
	    renaming: false,
	    body: "form",
		//displace: false, // change to true if sidr has bugs with your layout
	    onOpen: function () { $("body").addClass("ly-disablescroll"); $("#nav-main-offcanvas").height($("body").height()); },
	    onClose: function () { $("body").removeClass("ly-disablescroll"); }
	});
	
	/* More responsiveness by using touchstart */
	$('.ly-nav-mobile-trigger').on("touchstart", function(e){
		e.preventDefault();
		$.sidr('open', 'nav-main-offcanvas');
	});
	
	$('a.ly-close').click(function(e){
		e.preventDefault();
		$.sidr("close", "nav-main-offcanvas");
	});
	$(window).resize(function () {
	    $.sidr("close", "nav-main-offcanvas");
	});
	
    $(document).on("touchmove", "form.sidr-open", function (e) {
        e.preventDefault();
    });
    $(document).on("click", "form.sidr-open", function (e) {
        e.preventDefault();
	    $.sidr("close", "nav-main-offcanvas");
	});


    /* Prevent "Overscroll" on iOS devices */
	var touchStartEvent;
	$(".sidr").on({
	    touchstart: function (e) {
	        touchStartEvent = e;
	    },
	    touchmove: function (e) {
	        var touchStart = touchStartEvent.originalEvent || touchStartEvent.originalEvent.touches[0];
	        var touchMove = e.originalEvent || e.originalEvent.touches[0];

            // Cancel event if menu is already on top or bottom
	        if ((touchMove.pageY > touchStart.pageY && this.scrollTop == 0) ||
                (touchMove.pageY < touchStart.pageY && this.scrollTop + this.offsetHeight >= this.scrollHeight))
	            e.preventDefault();
	    }
	});
	
	/* mailencrypting */
	setTimeout(function(){
		$('[data-madr1]').each(function(){
			$this = $(this);
			maddr = $this.attr('data-madr1') + '@' + $this.attr('data-madr2') + '.' + $this.attr('data-madr3');
			$this.after( '<a href="mailto:'+maddr+'">'+maddr+'</a>' );
			$this.hide();
		});
	}, 500);

	/* Go to top button */
	$('.ly-top').click(function () {
        $("html, body").animate({
            scrollTop: 0
        }, 1200, 'easeOutExpo');
        return false;
    });
});
$(window).scroll(function() {
	if($(this).scrollTop() > 200) {
		$('.ly-top').addClass('ly-top-visible');    
	} else {
		$('.ly-top').removeClass('ly-top-visible');
	}
});