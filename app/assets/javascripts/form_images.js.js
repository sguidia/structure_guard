// Generated by CoffeeScript 1.7.1
var ready;

ready = function() {
  var form_image_container, image_field, image_view, replace_link;
  form_image_container = $(".form-image-container");
  if (form_image_container) {
    replace_link = form_image_container.find(".replace-image");
    image_view = form_image_container.find(".form-image-view");
    image_field = form_image_container.find(".form-image-field");
    return replace_link.click(function() {
      image_view.hide();
      image_field.fadeIn(200);
      return false;
    });
  }
};

$(document).ready(ready);

$(document).on('page:load', ready);

//# sourceMappingURL=form_images.js.map