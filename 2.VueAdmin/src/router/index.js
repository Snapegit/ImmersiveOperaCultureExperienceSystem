	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import discussxiqujumu from '@/views/discussxiqujumu/list'
	import discussxiquzhishi from '@/views/discussxiquzhishi/list'
	import huodongxinxi from '@/views/huodongxinxi/list'
	import discusshuodongxinxi from '@/views/discusshuodongxinxi/list'
	import storeup from '@/views/storeup/list'
	import users from '@/views/users/list'
	import yonghu from '@/views/yonghu/list'
	import huodongbaoming from '@/views/huodongbaoming/list'
	import xiquzhishi from '@/views/xiquzhishi/list'
	import xiqujumu from '@/views/xiqujumu/list'
	import discussxiquqingting from '@/views/discussxiquqingting/list'
	import xiquqingting from '@/views/xiquqingting/list'
	import xiqufenlei from '@/views/xiqufenlei/list'
	import config from '@/views/config/list'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/news',
			name: '系统公告',
			component: news
		}
		,{
			path: '/discussxiqujumu',
			name: '戏曲剧目评论',
			component: discussxiqujumu
		}
		,{
			path: '/discussxiquzhishi',
			name: '戏曲知识评论',
			component: discussxiquzhishi
		}
		,{
			path: '/huodongxinxi',
			name: '活动信息',
			component: huodongxinxi
		}
		,{
			path: '/discusshuodongxinxi',
			name: '活动信息评论',
			component: discusshuodongxinxi
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/huodongbaoming',
			name: '活动报名',
			component: huodongbaoming
		}
		,{
			path: '/xiquzhishi',
			name: '戏曲知识',
			component: xiquzhishi
		}
		,{
			path: '/xiqujumu',
			name: '戏曲剧目',
			component: xiqujumu
		}
		,{
			path: '/discussxiquqingting',
			name: '戏曲倾听评论',
			component: discussxiquqingting
		}
		,{
			path: '/xiquqingting',
			name: '戏曲倾听',
			component: xiquqingting
		}
		,{
			path: '/xiqufenlei',
			name: '戏曲分类',
			component: xiqufenlei
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
