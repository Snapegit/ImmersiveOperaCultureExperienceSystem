import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import xiqufenleiList from '@/views/pages/xiqufenlei/list'
import xiqufenleiDetail from '@/views/pages/xiqufenlei/formModel'
import xiqufenleiAdd from '@/views/pages/xiqufenlei/formAdd'
import xiqujumuList from '@/views/pages/xiqujumu/list'
import xiqujumuDetail from '@/views/pages/xiqujumu/formModel'
import xiqujumuAdd from '@/views/pages/xiqujumu/formAdd'
import storeupList from '@/views/pages/storeup/list'
import xiquqingtingList from '@/views/pages/xiquqingting/list'
import xiquqingtingDetail from '@/views/pages/xiquqingting/formModel'
import xiquqingtingAdd from '@/views/pages/xiquqingting/formAdd'
import xiquzhishiList from '@/views/pages/xiquzhishi/list'
import xiquzhishiDetail from '@/views/pages/xiquzhishi/formModel'
import xiquzhishiAdd from '@/views/pages/xiquzhishi/formAdd'
import huodongxinxiList from '@/views/pages/huodongxinxi/list'
import huodongxinxiDetail from '@/views/pages/huodongxinxi/formModel'
import huodongxinxiAdd from '@/views/pages/huodongxinxi/formAdd'
import huodongbaomingList from '@/views/pages/huodongbaoming/list'
import huodongbaomingDetail from '@/views/pages/huodongbaoming/formModel'
import huodongbaomingAdd from '@/views/pages/huodongbaoming/formAdd'
import newsList from '@/views/pages/news/list'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'xiqufenleiList',
			component: xiqufenleiList
		}, {
			path: 'xiqufenleiDetail',
			component: xiqufenleiDetail
		}, {
			path: 'xiqufenleiAdd',
			component: xiqufenleiAdd
		}
		, {
			path: 'xiqujumuList',
			component: xiqujumuList
		}, {
			path: 'xiqujumuDetail',
			component: xiqujumuDetail
		}, {
			path: 'xiqujumuAdd',
			component: xiqujumuAdd
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		, {
			path: 'xiquqingtingList',
			component: xiquqingtingList
		}, {
			path: 'xiquqingtingDetail',
			component: xiquqingtingDetail
		}, {
			path: 'xiquqingtingAdd',
			component: xiquqingtingAdd
		}
		, {
			path: 'xiquzhishiList',
			component: xiquzhishiList
		}, {
			path: 'xiquzhishiDetail',
			component: xiquzhishiDetail
		}, {
			path: 'xiquzhishiAdd',
			component: xiquzhishiAdd
		}
		, {
			path: 'huodongxinxiList',
			component: huodongxinxiList
		}, {
			path: 'huodongxinxiDetail',
			component: huodongxinxiDetail
		}, {
			path: 'huodongxinxiAdd',
			component: huodongxinxiAdd
		}
		, {
			path: 'huodongbaomingList',
			component: huodongbaomingList
		}, {
			path: 'huodongbaomingDetail',
			component: huodongbaomingDetail
		}, {
			path: 'huodongbaomingAdd',
			component: huodongbaomingAdd
		}
		, {
			path: 'newsList',
			component: newsList
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
