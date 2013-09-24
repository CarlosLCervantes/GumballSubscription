$ ->
	$("div.item").on "mouseover", (e) ->
		$this = $(e.target)
		$("div.details-icon", $(this)).show();
		$("a.i-want-it", $(this)).show();
	$("div.item").on "mouseout", (e) ->
		$this = $(e.target)
		$("div.details-icon", $(this)).hide();
		$("a.i-want-it", $(this)).hide();
	#$(".owl-carousel").owlCarousel(items: 3, autoPlay: true, navigation: false, pagination: false)
	#$(".owl-carousel").each () ->
	$(".i-want-it").bind "click", (e) ->
		e.preventDefault()
		$self = $(e.target)
		id = $self.data("id")
		url = $self.data("url")
		alert("You want item #{id}")
		$.ajax
			type: "POST"
			url: url
			data: {id: id}
			success: (data) ->
				#data = $.parseJSON(data)
				alert(data.location)
				if(data.location)
					window.location = data.location
			dataType: "json"

	$("div.carousel-container").each () ->
		$owl_container = $(this)
		$owl = $(".owl-carousel", $owl_container)
		window.setTimeout () ->
			$owl.owlCarousel(items: 4, autoPlay: false, navigation: false, pagination: false)
		, 150
		$owl_container.bind "mouseover", (e) -> $("div.carousel-button", $owl_container).show()
		$owl_container.bind "mouseout", (e) -> $("div.carousel-button", $owl_container).hide()
		$("div.left-button", $owl_container).bind "click", (e) ->
			$owl.trigger('owl.prev');
		$("div.right-button", $owl_container).bind "click", (e) ->
			$owl.trigger('owl.next');