layui.use(['laypage', 'layer'], function(){
    var laypage = layui.laypage
        ,layer = layui.layer;

    $.ajax({//外层
        url: '/client/UserServlet?method=getAllCount',
        type: 'POST',
        dataType: 'text',
        data:{
            func:'getCount'
        },
        success: function (resultData) {
            // console.log(resultData);
            var totalRecord=resultData;
            //每页显示数量
            var pageSize=2;
            //总页数大于页码总数
            laypage.render({//layui固定写法
                elem: 'page'//固定
                ,count: totalRecord //数据总数//这个外层的ajax是为了这一行的总数量
                ,limit:pageSize//显示数量 提交到插件底层
                ,jump: function(obj){
                    $.ajax({//数据
                        url: '/client/UserServlet?method=getDatasByPage',
                        type: 'POST',
                        dataType: 'JSON',//很多种类型/不写默认text
                        data:{
                            curPage:obj.curr,
                            func:"getData",
                            pageSize:pageSize
                        },
                        success: function (datass) {
                          // console.log(datass);

                            var str = "";
                            var email="";
                            $.each(datass, function (i, page) {
                                if(page.email==''){
                                    email='--';
                                }else{
                                    email=page.email;
                                }
                                str=str+"<tr ><td><input type=\"checkbox\" /></td>\n" +
                                    "<td>"+page.id+"</td>\n" +
                                    "<td><a href=\"#\">"+page.name+"</a></td>\n" +
                                    "<td>"+page.username+"</td>\n" +
                                    "<td class=\"am-hide-sm-only\">"+page.phone+"</td>\n" +
                                    "<td class=\"am-hide-sm-only\">"+email+"</td>\n" +
                                    "<td class=\"am-hide-sm-only\">2017年9月4日 7:28:47</td>\n" +
                                    "<td>\n" +
                                    "<div class=\"am-btn-toolbar\">\n" +
                                    "<div class=\"am-btn-group am-btn-group-xs\">\n" +
                                    "<button class=\"am-btn am-btn-default am-btn-xs am-text-success am-round\"><span class=\"am-icon-search\" title=\"查看订单详情\"></span> </button>\n" +
                                    "<button class=\"am-btn am-btn-default am-btn-xs am-text-secondary am-round\" data-am-modal=\"{target: '#my-popups'}\" title=\"修改订单\"><span class=\"am-icon-pencil-square-o\"></span></button>\n" +
                                    "<button class=\"am-btn am-btn-default am-btn-xs am-text-danger am-round\" title=\"删除订单\"><span class=\"am-icon-trash-o\" ></span></button>\n" +
                                    "</div>\n" +
                                    "</div>\n" +
                                    "</td></tr >";
                            });
                            $("#adminUser").html(str);
                        },
                        error: function (msg) {
                            alert(msg);
                        }
                    });
                }
            });
        },
        error: function (msg) {
            alert(msg);
        }
    });
});


