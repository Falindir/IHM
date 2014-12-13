	

    $(document).ready(function () {

        $(".tasklist").sortable({
            connectWith: ".tasklist",
            handle: ".portlet-header",
            cancel: ".portlet-toggle",
            start: function (event, ui) {
                ui.item.addClass('tilt');
            },
            stop: function (event, ui) {
                ui.item.removeClass('tilt');
            }
        });
     
        $(".portlet")
                .addClass("ui-widget ui-widget-content ui-helper-clearfix ui-corner-all")
                .find(".portlet-header")
                .addClass("ui-widget-header ui-corner-all")
                .prepend("<span class='ui-icon ui-icon-minusthick portlet-toggle'></span>");
     
        $(".portlet-toggle").click(function () {
            var icon = $(this);
            icon.toggleClass("ui-icon-minusthick ui-icon-plusthick");
            icon.closest(".portlet").find(".portlet-content").toggle();
        });
     
     
        $(".tasklists").sortable({
            connectWith: ".tasklists",
            handle: ".portlet-header1",
            cancel: ".portlet-toggle1",
            start: function (event, ui) {
                ui.item.addClass('tilt');
            },
            stop: function (event, ui) {
                ui.item.removeClass('tilt');
            }
        });
     
        $(".portlet1")
                .addClass("ui-widget ui-widget-content ui-helper-clearfix ui-corner-all")
                .find(".portlet-header")
                .addClass("ui-widget-header ui-corner-all")
                .prepend("<span class='ui-icon ui-icon-minusthick portlet-toggle'></span>");
     
        $(".portlet-toggle1").click(function () {
            var icon = $(this);
            icon.toggleClass("ui-icon-minusthick ui-icon-plusthick");
            icon.closest(".portlet").find(".portlet-content").toggle();
        });


     
        var taskLength = (100 / $('#taskLength').text()) - 1;
        $('.tasklist').css('width', taskLength+'%');
        $('taskLength').remove();
       
        $( ".accordion" ).accordion({collapsible : true, active : 'none'});
    });

