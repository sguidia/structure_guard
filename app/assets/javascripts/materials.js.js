// Generated by CoffeeScript 1.7.1
var ready;

ready = function() {
  var area_objs, count_objs, current, length_objs, material_type, select;
  material_type = $('#material-type-container');
  if (material_type) {
    select = material_type.find('select');
    current = select.find(':selected');
    area_objs = $('.show-area');
    length_objs = $('.show-length');
    count_objs = $('.show-count');
    if (current.val() === "area" || material_type.text() === "area") {
      area_objs.each(function() {
        return $(this).fadeIn(200);
      });
    } else if (current.val() === "length" || material_type.text() === "length") {
      length_objs.each(function() {
        return $(this).fadeIn(200);
      });
    } else if (current.val() === "count" || material_type.text() === "count") {
      count_objs.each(function() {
        return $(this).fadeIn(200);
      });
    }
    return select.change(function() {
      var chosen;
      chosen = $(this).find(':selected');
      if (chosen.val() === "area") {
        area_objs.each(function() {
          return $(this).fadeIn(200);
        });
        length_objs.each(function() {
          $(this).hide();
          return $(this).find('input').val('');
        });
        return count_objs.each(function() {
          $(this).hide();
          return $(this).find('input').val('');
        });
      } else if (chosen.val() === "length") {
        area_objs.each(function() {
          $(this).hide();
          return $(this).find('input').val('');
        });
        length_objs.each(function() {
          return $(this).fadeIn(200);
        });
        return count_objs.each(function() {
          $(this).hide();
          return $(this).find('input').val('');
        });
      } else if (chosen.val() === "count") {
        area_objs.each(function() {
          $(this).hide();
          return $(this).find('input').val('');
        });
        length_objs.each(function() {
          $(this).hide();
          return $(this).find('input').val('');
        });
        return count_objs.each(function() {
          return $(this).fadeIn(200);
        });
      } else {
        area_objs.each(function() {
          $(this).hide();
          return $(this).find('input').val('');
        });
        length_objs.each(function() {
          $(this).hide();
          return $(this).find('input').val('');
        });
        return count_objs.each(function() {
          $(this).hide();
          return $(this).find('input').val('');
        });
      }
    });
  }
};

$(document).ready(ready);

$(document).on('page:load', ready);

//# sourceMappingURL=materials.js.map
