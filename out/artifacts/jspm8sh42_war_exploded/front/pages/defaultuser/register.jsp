<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 登陆 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>register</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE; ">

		<div class="login-bg" style="background-image: url();"></div>

		<div class="login-container">
			<!-- 标题 -->
			<h2 class="index-title" style="width: 480px;">USER / REGISTER</h2>
			<div class="line-container">
				<p class="line"> register </p>
			</div>
			<!-- 标题 -->
			<form class="layui-form login-form">
				<div class="layui-form-item layui-form-text">
					<label class="layui-form-label">account number：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" name="username" required lay-verify="required" placeholder="Please enter the account number." autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">password：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="password" name="mima" required lay-verify="required" placeholder="enter your PIN" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">name：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" name="name" lay-verify="" placeholder="Please enter your name" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">age：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="number" name="age" lay-verify="number" placeholder="Please enter age" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">gender：</label>
					<div class="layui-input-inline" style="width: 300px;text-align: left;">
						<input type="radio" name="sex" value="man" title="man">
						<input type="radio" name="sex" value="girl" title="girl" checked>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">mailbox：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="email" name="email" lay-verify="email" placeholder="mailbox" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
						<button class="layui-btn btn-submit" lay-submit lay-filter="register">register</button>
						<button type="reset" class="layui-btn layui-btn-primary">reset</button>
					</div>
				</div>
			</form>
			<div class="bottom-container">
				<a href="javascript:window.location.href='../login/login.jsp'">Have an account? Go log in</a>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>

		<script>
			layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var form = layui.form;
				var http = layui.http;
				var jquery = layui.jquery;

				var tablename = http.getParam('tablename');
				
				// 表单校验
				form.verify({
				  email: function(value, item){
				    if(!isEmail(value)){
						return '请输入正确的邮箱格式'
					}
				  },
				  number: function(value, item){
				    if(!isIntNumer(value)){
						return '请输入正确的年龄'
					}
				  },
				});      
				
				// 登录
				form.on('submit(register)', function(data) {
					data = data.field;
					http.requestJson(tablename + '/register', 'post', data, function(res) {
						layer.msg('注册成功', {
							time: 2000,
							icon: 6
						},function(){
							// 路径访问设置
							window.location.href = '../login/login.jsp';
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
