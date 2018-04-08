<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/7 0007
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/js/jquery-1.8.0.js"></script><!-- easyUi核心js文件 -->
    <script type="text/javascript" src="/js/easyui/jquery.easyui.min.js"></script>
    <!-- easyUi语言包 -->
    <script type="text/javascript" src="/js/easyui/locale/easyui-lang-zh_CN.js"></script>
    <!-- easyUi默认的css样式 -->
    <link rel="stylesheet" type="text/css" href="/js/jquery-easyui-1.4.1/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/js/jquery-easyui-1.4.1/themes/icon.css">
    <script type="text/javascript" src="/js/uploadify/jquery.uploadify.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/js/uploadify/uploadify.css" />


    <script type="text/javascript" charset="utf-8" src="/js/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/js/ueditor/ueditor.all.js"></script>

    <script type="text/javascript" charset="utf-8" src="/js/ueditor/lang/zh-cn/zh-cn.js"></script>


    <link rel="stylesheet" type="text/css" href="/js/webuploader-dist-v0.1.3/webuploader.css">
    <script type="text/javascript" src="/js/webuploader-dist-v0.1.3/webuploader.js"></script>

    <link href="../js/FileUploadQT/css/iconfont.css" rel="stylesheet" type="text/css"/>
    <link href="../js/FileUploadQT/css/fileUpload.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../js/FileUploadQT/js/fileUpload.js"></script>

    <link rel="stylesheet" type="text/css" href="../js/polaroid-gallery/polaroid-gallery.css"/>
    <script type="text/javascript" src="../js/polaroid-gallery/polaroid-gallery.js"></script>
</head>
<body>

<div id="cc" class="easyui-layout" data-options="fit:true">
    <!-- 上方-->
    <div data-options="region:'north'" style="height:120px;">
        <center><h1>哎呀我去</h1></center>
    </div>
    <!-- 左方-->
    <div data-options="region:'west',title:'菜单'" style="width:180px;">

        <div title="用户管理" data-options="iconCls:'icon-save'" style="overflow:auto;padding:10px;">
            <ul id="menu" class="easyui tree"></ul>
        </div>



    </div>

    <!--加载选项卡-->
    <div data-options="region:'center'" style="padding:5px;background:#eee;">
        <div id="tab" class="easyui-tabs" data-options="fit:true"></div>
    </div>
</div>

<script type="text/javascript">
    $("#menu").tree({
        url:"getTree.do",
        lines:true,
        onClick:function(node){

            if(node.children == undefined){
                if(!$("#tab").tabs('exists',node.text)){
                    $("#tab").tabs('add',{
                        title:node.text,
                        closable:true,
                        content:createFrame(node.url)

                    })
                }else{
                    $("#tab").tabs('select',node.text)
                }
            }
        }
    })

    function createFrame(url){
        return '<iframe scrolling="auto" frameborder="0"  src="'+ url + '" style="width:100%;height:100%;"></iframe>';
    }
</script>
</body>
</html>
