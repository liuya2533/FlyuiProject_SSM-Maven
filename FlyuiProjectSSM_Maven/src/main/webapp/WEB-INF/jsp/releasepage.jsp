<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/releasepage.css"/>
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/title.css"/>
	     <!-- markdown的css -->
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/editor-md-master/css/editormd.css" />
	    <script src="${pageContext.request.contextPath }/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
        <script src="${pageContext.request.contextPath}/editor-md-master/editormd.min.js"></script>
        <script src="${pageContext.request.contextPath }/js/loginsuccess-myinfo.js" type="text/javascript" charset="utf-8"></script>
        
	    <!-- 引一个渲染模板的包template-web.js -->
	    <script src="${pageContext.request.contextPath }/js/template-web.js" type="text/javascript" charset="utf-8"></script>
	    <script type="text/javascript">
		$(function(){
			$.ajax({
				url:'${pageContext.request.contextPath}/article/type',
				type:'get',
				dataType:'json',
				success:function(data){
					var list={"artlist":data};
					console.log(list);
					var html=template("arttest",list);
					$('#arttype').html(html);
				}
			});
			$('#kissnum').change(function(){
				alert($('#kissnum').val());
				$('#kissmsg').html('发表后不能修改飞吻').css('color','#999999');
				if(parseInt($('#userkiss').val()) < parseInt($('#kissnum').val())){
					$('#kissmsg').html('你太穷了，只有'+$('#userkiss').val()+'飞吻数不够').css('color','red');
				}
				
			});
			
			var testEditor = editormd({
                id: "test-editormd",
                height: 640,
                width   : "100%",
                placeholder : "文明社会，理性评论，支持Markdown",
                path: "${pageContext.request.contextPath}/editor-md-master/lib/",
                toolbarIcons: function () {
                    // Or return editormd.toolbarModes[name]; // full, simple, mini
                    // Using "||" set icons align right.
                    return editormd.toolbarModes['full'];
                },
                //toolbar  : false,             // 关闭工具栏
                codeFold: true,
                searchReplace: true,
                saveHTMLToTextarea: true,      // 保存 HTML 到 Textarea
                htmlDecode: "style,script,iframe|on*",            // 开启 HTML 标签解析，为了安全性，默认不开启
                emoji: true,
                taskList: true,
                tocm: true,          // Using [TOCM]
                tex: true,                      // 开启科学公式 TeX 语言支持，默认关闭
                //previewCodeHighlight : false,  // 关闭预览窗口的代码高亮，默认开启
                flowChart: true,                // 疑似 Sea.js与 Raphael.js 有冲突，必须先加载 Raphael.js ，Editor.md 才能在 Sea.js 下正常进行；
                sequenceDiagram: true,          // 同上
                //dialogLockScreen : false,      // 设置弹出层对话框不锁屏，全局通用，默认为 true
                //dialogShowMask : false,     // 设置弹出层对话框显示透明遮罩层，全局通用，默认为 true
                //dialogDraggable : false,    // 设置弹出层对话框不可拖动，全局通用，默认为 true
                //dialogMaskOpacity : 0.4,    // 设置透明遮罩层的透明度，全局通用，默认值为 0.1
                //dialogMaskBgColor : "#000", // 设置透明遮罩层的背景颜色，全局通用，默认为 #fff
                imageUpload: true,
                imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                imageUploadURL: "{:url('api/uploader/uploadEditorImg?pic_type=10')}",
            });

			$('#addform').submit(function(){
				if(parseInt($('#userkiss').val()) < parseInt($('#kissnum').val())){
					return false;
				}
			}); 
		})
		</script>
	</head>
	<body style="height:1000px;">
			<div id="title">
			<ul>
				<li id="logimg"><a href="${ pageContext.request.contextPath }/page/index"><img id="logimg" src="${pageContext.request.contextPath }/img/logo.png"/></a></li>
				<li class="lmar"><a href="" class="title-li-a"><img  src="${pageContext.request.contextPath }/img/jiaoliu.PNG"/>&nbsp;&nbsp;交流</a></li>
				<li class="lmar"><a href="" class="title-li-a"><img  src="${pageContext.request.contextPath }/img/zhuanqu.PNG"/>&nbsp;&nbsp;专区</a></li>
				<li class="kuang"><a href="" class="title-li-a"><img  src="${pageContext.request.contextPath }/img/ui.jpg"/>&nbsp;&nbsp;框架</a></li>
				<li class="title-user">
				<a id="item" href="${pageContext.request.contextPath }/user/addArticle"><span style="color:#fff;">${userinfo.nickname}</span><img  class="title-img" src="${pageContext.request.contextPath }/upload/${userinfo.head_url}"/>
				    <ul class="title-item">
					<li><a href="">用户中心</a></li>
					<li class="title-item-li"><a href="">基本设置</a></li>
					<li><a href="">我的消息</a></li>
					<li class="title-item-li"><a href="${pageContext.request.contextPath }/MyinfoServlet" >我的主页</a></li>
					<li><a href="">退出</a> </li>
		            </ul>
				</a>
				</li>
			</ul>
			</div>
			<div class="fly-panel">
				<div class="publish-box">
					<div class="publish-title">
						<div class="publish-title-text">
							发表新帖
						</div>
					</div>
					<div class="publish-form">
					     <!-- 此处为渲染模板，在页面不会显示 -->
							<script type="text/html" id="arttest">
							<option>请选择</option>
							{{each artlist as value i}}
							<option value={{value.id}}>{{value.typename}}</option>
							{{/each}}
							</script>
						<form id=" addform"  action="${pageContext.request.contextPath }/user/addArticle" method="post">
							<div class="form-div">
								<label class="form-label">所在专栏</label>
								<select id="arttype" name="typeid">
									<!-- 此处用id引入渲染模板 -->
								</select>
								<label class="form-label">标题</label>
								<input  class="form-text" type="text" name="title"/>
							</div>
							<div class="form-div">
								<div class="editormd" id="test-editormd">
                                    <textarea class="editormd-markdown-textarea" name="topic_markdown_content" id = "topic_markdown_content">${topic_markdown_content}</textarea>
                                </div>
							</div>
							
							<div class="form-div">
								<label class="form-label">悬赏飞吻</label>
								<select name="kiss_num" id="paykiss">
									<option value="20">20</option>
									<option value="30">30</option>
									<option value="50">50</option>
									<option value="60">60</option>
									<option value="70">80</option>
								</select>
								<div class="form-text2" id="kissmsg">发表后不能修改飞吻</div>
								<input id="userkiss" type="hidden" name="userkissnum" value="${userinfo.kissnum}"/>
							</div>
							<div class="form-div">
								<input  id="publish-button" type="submit" value="立即发布" />
							</div>
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
