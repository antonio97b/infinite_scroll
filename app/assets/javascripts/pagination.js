$(function() {
  if ($('#infinite-scrolling').size() > 0) {
    return $(window).on('scroll', function() {
      var more_posts_url;
      more_posts_url = $('.pagination .next_page').attr('href');
      if (more_posts_url && $(window).scrollTop() > $(document).height() - $(window).height() - 250) {
        $('.pagination').html('<p>Loading...</p>');
        $.getScript(more_posts_url);
      }
      return;
    });
  }
});