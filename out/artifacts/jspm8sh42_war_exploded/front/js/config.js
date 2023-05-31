
var projectName = 'cafe management system';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * personal center菜单
 */
var centerMenu = [{
	name: 'personal center',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: 'my order',
	url: '../order/list.jsp'
},

{
	name: 'my address',
	url: '../address/list.jsp'
},

]


var indexNav = [

{
	name: 'Coffee Information',
	url: './pages/kafeixinxi/list.jsp'
}, 

]

var adminurl =  "http://localhost:8080/jspm8sh42/index.jsp";

var cartFlag = false

var chatFlag = false


chatFlag = true
cartFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["新增","find","edit ","delete "],"menu":"客户","menuJump":"list","tableName":"kehu"}],"menu":"客户管理"},{"child":[{"buttons":["新增","find","edit ","delete "],"menu":"员工","menuJump":"list","tableName":"yuangong"}],"menu":"员工管理"},{"child":[{"buttons":["新增","find","edit ","delete "],"menu":"Coffee Type","menuJump":"list","tableName":"kafeileixing"}],"menu":"Coffee Type Management"},{"child":[{"buttons":["新增","find","edit ","delete "],"menu":"咖啡信息","menuJump":"list","tableName":"kafeixinxi"}],"menu":"咖啡信息管理"},{"child":[{"buttons":["新增","find","edit ","delete "],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"},{"child":[{"buttons":["find","edit ","delete "],"menu":"cancelled 订单","tableName":"orders/cancelled "},{"buttons":["find","edit ","delete ","发货"],"menu":"已支付订单","tableName":"orders/已支付"},{"buttons":["find","edit ","delete "],"menu":"已退款订单","tableName":"orders/已退款"},{"buttons":["find","edit ","delete "],"menu":"已完成订单","tableName":"orders/已完成"},{"buttons":["新增","find","edit ","delete "],"menu":"已发货订单","tableName":"orders/已发货"},{"buttons":["find","edit ","delete "],"menu":"未支付订单","tableName":"orders/未支付"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"buttons":["find"],"menu":"咖啡信息list","menuJump":"list","tableName":"kafeixinxi"}],"menu":"咖啡信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["find","edit ","delete "],"menu":"未支付订单","tableName":"orders/未支付"},{"buttons":["find","edit ","delete "],"menu":"cancelled 订单","tableName":"orders/cancelled "},{"buttons":["find","edit ","delete "],"menu":"已支付订单","tableName":"orders/已支付"},{"buttons":["find","edit ","delete "],"menu":"已退款订单","tableName":"orders/已退款"},{"buttons":["find","edit ","delete "],"menu":"已完成订单","tableName":"orders/已完成"},{"buttons":["find","edit ","delete ","确认收货"],"menu":"已发货订单","tableName":"orders/已发货"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"buttons":["find"],"menu":"咖啡信息list","menuJump":"list","tableName":"kafeixinxi"}],"menu":"咖啡信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"客户","tableName":"kehu"},{"backMenu":[{"child":[{"buttons":["find","edit ","delete "],"menu":"客户","menuJump":"list","tableName":"kehu"}],"menu":"客户管理"},{"child":[{"buttons":["新增","find","edit ","delete "],"menu":"Coffee Type","menuJump":"list","tableName":"kafeileixing"}],"menu":"Coffee Type Management"},{"child":[{"buttons":["新增","find","edit ","delete "],"menu":"咖啡信息","menuJump":"list","tableName":"kafeixinxi"}],"menu":"咖啡信息管理"}],"frontMenu":[{"child":[{"buttons":["find"],"menu":"咖啡信息list","menuJump":"list","tableName":"kafeixinxi"}],"menu":"咖啡信息模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"员工","tableName":"yuangong"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
