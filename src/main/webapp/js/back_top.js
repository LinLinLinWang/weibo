//返回头部的js
$(document).ready(function(){
                $(window).bind("scroll", function () {  
                var sTop = $(window).scrollTop();  
                var sTop = parseInt(sTop);
                if (sTop >= 70) {  
                    if (!$("#back_top").is(":visible")) {  
                        try {  
                            $("#back_top").slideDown();  
                        } catch (e) {  
                            $("#back_top").show();  
                        }                        
                    }  
                } 
                else {  
                    if ($("#back_top").is(":visible")) {  
                        try {  
                            $("#back_top").slideUp();  
                        } catch (e) {  
                            $("#back_top").hide();  
                        }                         
                    }  
                }   
            });  
        });