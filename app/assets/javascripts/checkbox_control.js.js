// Generated by CoffeeScript 1.7.1
var ready;

ready = function() {
  var checkbox_control;
  checkbox_control = function() {
    checkbox_control = $('.checkbox-control');
    if (checkbox_control) {
      return checkbox_control.each(function() {
        var checkbox;
        checkbox = $(this).siblings('.checkbox');
        return $(this).click(function() {
          $(this).toggleClass('btn-default');
          $(this).toggleClass('btn-primary');
          return checkbox.prop("checked", !checkbox.prop("checked"));
        });
      });
    }
  };
  return checkbox_control();
};

$(document).ready(ready);

$(document).on('page:load', ready);

//# sourceMappingURL=checkbox_control.js.map
