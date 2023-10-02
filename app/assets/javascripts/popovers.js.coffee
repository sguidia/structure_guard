ready = ->
  $(".popover-item").each ->
    content = $(this).children(".popover-content").html()
    $(this).popover content: content
  $(".popover-expand").each ->
    $(this).click ->
      content = $(this).siblings(".popover-content").html()
      title = $(this).parents(".popover-item").data('title')
      window_width = $( document ).width();
      window_height = $( document ).height();
      top = '12px'
      if window_width > 768
        if window_width > 1024
          width = '50%'
          left = '25%'
        else
          width = '60%'
          left = '20%'
      else
        width = '90%'
        left = '5%'

      lightbox = '<div class="lightbox-container">' +
        '<div class="lightbox-content" style="width: ' + width + '; left: ' + left + '; top: ' + top + '; ">' +
            '<h3>' + title + '</h3>' +
            content +
        '</div>' +
        '</div>'
      $('body').prepend(lightbox)
      $(document).click ->
        $('.lightbox-container').remove()
      return false


$(document).ready ready
$(document).on "page:load", ready