<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<link  rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/css/center.css"/>
<script src="http://dl.games.sina.com.cn/wcpan/d/servermgr/js/jquery-1.11.3.min.js"></script>
 <script src="${pageContext.request.contextPath}/js/menu.js"></script>
 <style type="text/css">
 	#main-content-frame {width: 100%; margin: 0px auto; padding-top: 6px; text-align: center; height: 100%;overflow: auto;}
 </style>
<script type="text/javascript">
var base='<%="http://" + request.getServerName() + ":" + request.getServerPort()+request.getContextPath()+"/"%>';
    function showMainContent(u) {
    	var content=$('#main-content');
//         $('#main-content').load(u,function(){});
		 var content_frame = $('#main-content-frame');
        if(u.match(/^http:\/\/.*$/)){
        	content.css('display','none'); 
      
            content_frame.css('display','block'); 
        }else{
//         	u='${pageContext.request.contextPath}/'+u;
// 	        $.ajax({
// 	        	async: false,
// 	            url: u,
// 	            cache: false,
// 	            type: 'Get',
// 	            dataType: 'html',
// 	            success: function(res) {
// 	            	  content_frame.css('display','none'); 
// 	                try {
// 	                    var jsonRes = eval("(" + res + ")");
// 	                    if (jsonRes.error && jsonRes.error != '') {
// 	                        content.html(jsonRes.error);
// 	                        return;
// 	                    }
// 	                } catch (err) {
// 	                }
// 	                content.html(res);
// 	            }
// 	        });
        	u=base+u;
        }
        content_frame.attr('src',u);
    }

// 	function replaceMainContent(){
// 		var iframeHTML = $(document.getElementById('supportiframe').contentWindow.document.body).html();

// 		if(iframeHTML != ''){
// 			alert(iframeHTML);
// 			$('#main-content').html(iframeHTML);
// 			$(document.getElementById('supportiframe').contentWindow.document.body).html('');
// 		}
// 	}
</script>
</head>



<body  class="main-body">
	<div name="tree-area" id="tree-area"  class="wrap-menu">
	</div>
    
<!-- 	<iframe id="supportiframe" name="supportiframe" onload="replaceMainContent();" style="display:none"></iframe> -->
    <div id="all-content">
    <div name="main-content" id="main-content"></div>
    <iframe id="main-content-frame" frameborder="0" name="main-content-frame" src="" scrolling="no" style="display:none"></iframe>
<script type="text/javascript">
// $(document).ready(function() {

//     $('#submenu_tree #smenu').find("a").click(function() {
//         $('.smenu-link > a').each(function(i) {
//             $(this).removeClass('smenu-link smenu-clicked');
//             $(this).addClass('smenu-link');
//         });
//         $('#submenu_tree ul li a').removeClass('smenu-link smenu-clicked');
//         $('#submenu_tree ul li a').addClass('smenu-link');
//         $(this).removeClass('smenu-link');
//         $(this).addClass('smenu-link smenu-clicked');

//         var url = $(this).attr('url');
//     	var n_url = 'http://jyzd.gxq.com.cn/' + 'frame/show/m/' + $(this).attr('s-menu-pid') + '/s/' + $(this).attr('s-menu-id');

// 		top.history.pushState({ 1: 1 }, 1, n_url);

//     	showMainContent(url);
//     });

// 	    $('#submenu_tree').find('a').first().click();
// 	});

// 		var leftmenu=${leftmenu};
		
		var leftmenu=[{name:"PHP技术",submenu:[{name:'PHP入门',url:'http://www.php100.com/html/php/rumen/'}]},{name:"PHP面试",submenu:[{name:'PHP2-1',url:'php-info/base.html'}]}];
	$(function(){
		var m=new AccordionMenu({containerCls:'.wrap-menu',menuArrs:leftmenu});
		$("#tree-area").find("a[url!='javascript:void(0)']").click(function(){
			var url= $(this).attr('url');
	         $("a[url!='javascript:void(0)']").each(function(i) {
		         $(this).removeClass('menu-clicked');
		         $(this).addClass('menu-unClicked');
   		  	  });
	         $(this).removeClass('menu-unClicked');
	         $(this).addClass('menu-clicked');
		 		showMainContent(url);
		});

	});
	</script>  



<ul class="vakata-context"></ul><div style="display: block;" id="jstree-marker">&nbsp;</div></body></html>