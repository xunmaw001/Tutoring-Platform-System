import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import yingpinzhiwei from '@/views/modules/yingpinzhiwei/list'
    import yonghu from '@/views/modules/yonghu/list'
    import yonghupingjia from '@/views/modules/yonghupingjia/list'
    import zhaopinjiaoshi from '@/views/modules/zhaopinjiaoshi/list'
    import jiaoshijianli from '@/views/modules/jiaoshijianli/list'
    import jiaoshi from '@/views/modules/jiaoshi/list'
    import jiaoshishenqing from '@/views/modules/jiaoshishenqing/list'
    import kechengxinxi from '@/views/modules/kechengxinxi/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/news',
        name: '通知公告',
        component: news
      }
          ,{
	path: '/yingpinzhiwei',
        name: '应聘职位',
        component: yingpinzhiwei
      }
          ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
          ,{
	path: '/yonghupingjia',
        name: '用户评价',
        component: yonghupingjia
      }
          ,{
	path: '/zhaopinjiaoshi',
        name: '招聘教师',
        component: zhaopinjiaoshi
      }
          ,{
	path: '/jiaoshijianli',
        name: '教师简历',
        component: jiaoshijianli
      }
          ,{
	path: '/jiaoshi',
        name: '教师',
        component: jiaoshi
      }
          ,{
	path: '/jiaoshishenqing',
        name: '教师申请',
        component: jiaoshishenqing
      }
          ,{
	path: '/kechengxinxi',
        name: '课程信息',
        component: kechengxinxi
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
