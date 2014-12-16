	

    $(document).ready(function () {

        checkState();
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
   
        $('.addNewTask').on('click', function() {
            $('input#titleTaskList').attr('placeholder', $(this).find('a').attr('name'));
        })

        function checkState() {
            $('.taskStateHidden').each(function(){
            if($(this).attr('name') == "IN_PROGRESS")
                $(this).parent('div').css('border-color','#00008B');
            if($(this).attr('name') == "CANCELLED")
                $(this).parent('div').css('border-color','#FF8C00');
            if($(this).attr('name') == "DONE")
                $(this).parent('div').css('border-color','#006400');
            if($(this).attr('name') == "LATE")
                $(this).parent('div').css('border-color','#8B0000');

        });
        }

        $('a.cancel').on('click', function() {
            annulerTask($(this).parent('div.modal').attr('id'));
            checkState();
        });

        $('a.terminate').on('click', function() {
            terminateTask($(this).parent('div.modal').attr('id'));
            checkState();
        })

        

        $('.cbTaskState').on('click', function() {
            var tabEnumTemp = hideShow();
            $('.taskStateHidden').each(function() {
                for (i = 0; i < tabEnumTemp.length; i++) { 
                    if($(this).attr('name') == tabEnumTemp[i]) {
                        $(this).hide();
                    }
                }
            })
        })

        function hideShow() {
            var tabEnum = new Array();
            $('.cbTaskState').each(function() {
                if($(this).is(':checked')) {
                    // do nothing
                } else {
                    console.log($(this).attr('name').val());
                    tabEnum.push($(this).attr('name'));
                }
            });
            return tabEnum;
        }

    });

