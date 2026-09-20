const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '戏曲剧目',
					icon: 'icon-common1',
					child:[
						{
							name:'戏曲剧目',
							url:'/index/xiqujumuList'
						},
					]
				},
				{
					name: '戏曲倾听',
					icon: 'icon-common3',
					child:[
						{
							name:'戏曲倾听',
							url:'/index/xiquqingtingList'
						},
					]
				},
				{
					name: '戏曲知识',
					icon: 'icon-common9',
					child:[
						{
							name:'戏曲知识',
							url:'/index/xiquzhishiList'
						},
					]
				},
				{
					name: '活动信息',
					icon: 'icon-common32',
					child:[
						{
							name:'活动信息',
							url:'/index/huodongxinxiList'
						},
					]
				},
				{
					name: '系统公告',
					icon: 'icon-common44',
					child:[
						{
							name:'系统公告',
							url:'/index/newsList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "沉浸式戏曲文化体验系统"
        } 
    }
}
export default config
