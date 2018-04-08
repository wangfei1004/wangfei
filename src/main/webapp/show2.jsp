<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/8 0008
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- JQuery -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet"	href="<%=request.getContextPath()%>/js/bootstrap/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"	href="<%=request.getContextPath()%>/js/bootstrap/bootstrap/css/bootstrap-theme.min.css">
    <!-- TreeView -->
    <link rel="stylesheet"	href="<%=request.getContextPath()%>/js/bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.css">
    <script type="text/javascript"	src="<%=request.getContextPath()%>/js/bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
    <!-- addtabs -->
    <link rel="stylesheet"	href="<%=request.getContextPath()%>/js/bootstrap/bootStrap-addTabs/bootstrap.addtabs.css">
    <script type="text/javascript"	src="<%=request.getContextPath()%>/js/bootstrap/bootStrap-addTabs/bootstrap.addtabs.min.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row" style="height: 625px">
        <div class="col-xs-2" style="background-color: aqua;height: 100%">
            <div id="tree"></div>
        </div>
        <div class="col-xs-10" style=" height: 100%">
            <ul class="nav nav-tabs" ></ul>
            <div class="tab-content"></div>
        </div>


    </div>
</div>
<script type="text/javascript">
    $('#tree').treeview({
        data:getData(),
        expandIcon:"glyphicon glyphicon-home",
        collapseIcon:"glyphicon glyphicon-lock",
        onNodeSelected:function(event, node){

            if(node.nodes==undefined){
                $.ajax({
                    url:"<%=request.getContextPath()%>/"+node.url,
                    type:"post",
                    dataType:"text",
                    success:function(data){
                        $.addtabs.add({
                            id:node.id,
                            title:node.text,
                            content:data
                        })
                    }
                })
            }else{
                //$.addtabs.closeAll('#tabs');
                /*$.addtabs.close({id:3});
                 $('#tab_tab_'+3).remove();
                 $.addtabs.drop();*/
            }
        }

    })
    function getData(){
        var tree;
        $.ajax({
            url:"getTreeBootstb.wf",
            type:"post",
            dataType:"json",
            async:false,
            success:function(data){
                tree = data;
            }
        })
        return tree;
    }

</script>
</body>
</html>
