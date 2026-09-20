<template>
	<div>
		<div class="home_box">
			<!-- 戏曲剧目推荐 -->
			<div class="recomList_view">
				<div class="recomList_title">戏曲剧目推荐</div>
				<div class="recommend_list_two">
					<mySwiper :data="xiqujumuRecomList" :type="3"
						:loop="false"
						:navigation="false"
						:pagination="false"
						:paginationType="2"
						:scrollbar="false"
						:slidesPerView="4"
						:spaceBetween="20"
						:autoHeight="false"
						:centeredSlides="false"
						:freeMode="false"
						:effectType="0"
						:direction="horizontal"
						:autoplay="true"
						:slidesPerColumn="2">
						<template #default="scope">
							<div class="recommend_item animation_box" @click="detailClick('xiqujumu',scope.row.id)">
								<div class="recommend_img_box">
									<img class="recommend_img" v-if="isHttp(scope.row.tupian)" :src="scope.row.tupian.split(',')[0]" alt="">
									<img class="recommend_img" v-else :src="scope.row.tupian?$config.url + scope.row.tupian.split(',')[0]:''" alt="">
								</div>
								<div class="recommend_content">
									<div class='recommend_title'>
										戏曲名称：{{scope.row.xiqumingcheng}}
									</div>
									<div class='recommend_title'>
										艺术家：{{scope.row.yishujia}}
									</div>
								</div>
							</div>
						</template>
					</mySwiper>
				</div>
				<div class="recommend_more_view" @click="moreClick('xiqujumu')">
					<span class="recommend_more_text">查看更多</span>
					<el-icon><DArrowRight /></el-icon>
				</div>
			</div>
			<!-- 戏曲倾听推荐 -->
			<div class="recomList_view">
				<div class="recomList_title">戏曲倾听推荐</div>
				<div class="recommend_list_two">
					<mySwiper :data="xiquqingtingRecomList" :type="3"
						:loop="false"
						:navigation="false"
						:pagination="false"
						:paginationType="2"
						:scrollbar="false"
						:slidesPerView="4"
						:spaceBetween="20"
						:autoHeight="false"
						:centeredSlides="false"
						:freeMode="false"
						:effectType="0"
						:direction="horizontal"
						:autoplay="true"
						:slidesPerColumn="2">
						<template #default="scope">
							<div class="recommend_item animation_box" @click="detailClick('xiquqingting',scope.row.id)">
								<div class="recommend_img_box">
									<img class="recommend_img" v-if="isHttp(scope.row.fengmian)" :src="scope.row.fengmian.split(',')[0]" alt="">
									<img class="recommend_img" v-else :src="scope.row.fengmian?$config.url + scope.row.fengmian.split(',')[0]:''" alt="">
								</div>
								<div class="recommend_content">
									<div class='recommend_title'>
										戏曲名称：{{scope.row.songname}}
									</div>
									<div class='recommend_title'>
										艺术家：{{scope.row.singer}}
									</div>
								</div>
							</div>
						</template>
					</mySwiper>
				</div>
				<div class="recommend_more_view" @click="moreClick('xiquqingting')">
					<span class="recommend_more_text">查看更多</span>
					<el-icon><DArrowRight /></el-icon>
				</div>
			</div>
			<!-- 戏曲知识推荐 -->
			<div class="recomList_view">
				<div class="recomList_title">戏曲知识推荐</div>
				<div class="recommend_list_two">
					<mySwiper :data="xiquzhishiRecomList" :type="3"
						:loop="false"
						:navigation="false"
						:pagination="false"
						:paginationType="2"
						:scrollbar="false"
						:slidesPerView="4"
						:spaceBetween="20"
						:autoHeight="false"
						:centeredSlides="false"
						:freeMode="false"
						:effectType="0"
						:direction="horizontal"
						:autoplay="true"
						:slidesPerColumn="2">
						<template #default="scope">
							<div class="recommend_item animation_box" @click="detailClick('xiquzhishi',scope.row.id)">
								<div class="recommend_img_box">
									<img class="recommend_img" v-if="isHttp(scope.row.fengmian)" :src="scope.row.fengmian.split(',')[0]" alt="">
									<img class="recommend_img" v-else :src="scope.row.fengmian?$config.url + scope.row.fengmian.split(',')[0]:''" alt="">
								</div>
								<div class="recommend_content">
									<div class='recommend_title'>
										{{scope.row.biaoti}}
									</div>
								</div>
							</div>
						</template>
					</mySwiper>
				</div>
				<div class="recommend_more_view" @click="moreClick('xiquzhishi')">
					<span class="recommend_more_text">查看更多</span>
					<el-icon><DArrowRight /></el-icon>
				</div>
			</div>
			<!-- 活动信息首页展示 -->
			<div class="homeList_view">
				<div class="homeList_title">活动信息展示</div>
				<div class="home_list_five">
					<div v-for="(item,index) in huodongxinxiHomeList" :class="'home_list_five_item' + (Number(index) + 1)">
						<div class="img_box">
							<img class="home_img" v-if="isHttp(item.huodongtupian)" :src="item.huodongtupian.split(',')[0]" alt="">
							<img class="home_img" v-else :src="item.huodongtupian?$config.url + item.huodongtupian.split(',')[0]:''" alt="">
						</div>
						<div class="homeList_content">
							<div class="homeList_title1">
								{{item.huodongmingcheng}}
							</div>
							<div class="homeList_title2">
								开始时间：{{item.kaishishijian}}
							</div>
							<div class="homeList_title3">
								已报名人数：{{item.renshu}}
							</div>
						</div>
					</div>
				</div>
				<div class="homeList_more_view" @click="moreClick('huodongxinxi')">
					<span class="homeList_more_text">查看更多</span>
					<el-icon><DArrowRight /></el-icon>
				</div>
			</div>
			<!-- 系统公告 -->
			<div class="newsList_view">
				<div class="newsList_title">系统公告</div>
				<div class="news_list_one">
					<div class="news_item animation_box" v-for="(item,index) in newsList" :key="index" @click="newsDetailClick(item.id)">
						<div class='news_img_box'>
							<img class="news_img" v-if="isHttp(item.picture)" :src="item.picture.split(',')[0]" alt="">
							<img class="news_img" v-else :src="item.picture?$config.url + item.picture.split(',')[0]:''" alt="">
						</div>
						<div class="news_content">
							<div class="news_title">{{item.title}}</div>
							<div class="news_text">{{item.introduction}}</div>
							<div class="news_time">{{item.addtime.split(' ')[0]}}</div>
						</div>
					</div>
				</div>
				<div class="news_more_view" @click="moreClick('news')">
					<span class="news_more_text">MORE</span>
				</div>
			</div>
		</div>
		<formModel ref="newsFormModelRef"></formModel>
	</div>
</template>

<script setup>
	import {
		ref,
		getCurrentInstance
	} from 'vue';
	import {
		useRouter
	} from 'vue-router';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const router = useRouter()
	//戏曲剧目推荐
	const xiqujumuRecomList = ref([])
	const getxiqujumuRecomList = () => {
		let autoSortUrl = 'xiqujumu/autoSort'
		if(context?.$toolUtil.storageGet('frontToken')){
			autoSortUrl = "xiqujumu/autoSort2"
		}
		context?.$http({
			url: autoSortUrl,
			method: 'get',
			params: {
				page: 1,
				limit: 16
			}
		}).then(res => {
			xiqujumuRecomList.value = res.data.data.list
		})
	}
	//戏曲倾听推荐
	const xiquqingtingRecomList = ref([])
	const getxiquqingtingRecomList = () => {
		let autoSortUrl = 'xiquqingting/autoSort'
		if(context?.$toolUtil.storageGet('frontToken')){
			autoSortUrl = "xiquqingting/autoSort2"
		}
		context?.$http({
			url: autoSortUrl,
			method: 'get',
			params: {
				page: 1,
				limit: 16
			}
		}).then(res => {
			xiquqingtingRecomList.value = res.data.data.list
		})
	}
	//戏曲知识推荐
	const xiquzhishiRecomList = ref([])
	const getxiquzhishiRecomList = () => {
		let autoSortUrl = 'xiquzhishi/autoSort'
		if(context?.$toolUtil.storageGet('frontToken')){
			autoSortUrl = "xiquzhishi/autoSort2"
		}
		context?.$http({
			url: autoSortUrl,
			method: 'get',
			params: {
				page: 1,
				limit: 16
			}
		}).then(res => {
			xiquzhishiRecomList.value = res.data.data.list
		})
	}
	//活动信息首页展示
	const huodongxinxiHomeList = ref([])
	const gethuodongxinxiHomeList = () => {
		context?.$http({
			url: 'huodongxinxi/list',
			method: 'get',
			params: {
				page: 1,
				limit: 16
			}
		}).then(res => {
			huodongxinxiHomeList.value = res.data.data.list
		})
	}
	//系统公告弹窗
	import formModel from './news/formModel'
	const newsFormModelRef = ref(null)
	//系统公告
	const newsList = ref([])
	const getNewsList = () => {
		context?.$http({
			url: 'news/list',
			method: 'get',
			params:{
				page:1,
				limit: 9
			}
		}).then(res=>{
			newsList.value = res.data.data.list
		})
	}
	const newsDetailClick = (id=null) => {
		if (id){
			newsFormModelRef.value.init(id)
		}
	}
	//判断图片链接是否带http
	const isHttp = (str) => {
        return str && str.substr(0,4)=='http';
    }
	//跳转详情
	const detailClick = (table,id) => {
		router.push(`/index/${table}Detail?id=${id}`)
	}
	const moreClick = (table) => {
		router.push(`/index/${table}List`)
	}
	const init = () => {
		//戏曲剧目推荐
		getxiqujumuRecomList()
		//戏曲倾听推荐
		getxiquqingtingRecomList()
		//戏曲知识推荐
		getxiquzhishiRecomList()
		//活动信息首页展示
		gethuodongxinxiHomeList()
		//系统公告
		getNewsList()
	}
	init()
</script>

<style lang="scss">
	.home_box {
		padding: 0;
		margin: 0 auto;
		background: #eee;
		display: flex;
		width: 100%;
		justify-content: space-between;
		align-items: flex-start;
		flex-wrap: wrap;
	}
	
	// 推荐
	.recomList_view {
		padding: 150px 18% 20px;
		margin: 0 auto;
		background: url(http://clfile.zggen.cn/20231115/66ed480ff5d84ea5bfa5836037b1a1e7.jpg) no-repeat center top / 100% 100%;
		width: 100%;
		position: relative;
		order: 8;
		.recomList_title {
			padding: 0 0 0px;
			margin: 0px 0 0;
			color: #716242;
			font-weight: 500;
			font-size: 22px;
			border-color: #2da065;
			line-height: 118px;
			background: url(http://clfile.zggen.cn/20231115/195619b75f2a473c8ef12ce628bd72d5.png) no-repeat center top;
			width: auto;
			border-width: 0 0 0px;
			border-style: solid;
			text-align: center;
			height: 100px;
		}
		// list
		.recommend_list_two {
			margin: 20px 0 0;
			display: flex;
			width: 100%;
			flex-wrap: wrap;
			.recommend_item {
				cursor: pointer;
				margin: 0;
				background: none;
				width: 100%;
				.recommend_img_box {
					margin: 0 0 0px;
					width: 100%;
					height: 200px;
					.recommend_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.recommend_content {
					padding: 10px;
					background: #c0ab85;
					.recommend_title {
						overflow: hidden;
						color: #000;
						white-space: nowrap;
						background: none;
						font-weight: 500;
						width: 100%;
						font-size: 14px;
						line-height: 24px;
						text-overflow: ellipsis;
						text-align: left;
					}
					.recommend_price {
						color: #c00;
						font-weight: 500;
						width: 100%;
						font-size: 14px;
						line-height: 1;
						text-align: right;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(0.95) skew(0deg, 0deg) translate3d(0px, -3px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.recommend_more_view {
			cursor: pointer;
			border: 2px solid #ddd;
			border-radius: 0px;
			padding: 0;
			margin: 30px auto 20px;
			color: #fff;
			background: none;
			width: 120px;
			line-height: 34px;
			text-align: center;
			.recommend_more_text {
				padding: 0px;
				color: #666;
				background: none;
				font-size: 14px;
			}
			.el-icon {
				color: #999;
				font-size: 14px;
			}
		}
	}
	// 推荐
	// 新闻资讯
	.newsList_view {
		padding: 0px 18% 0px;
		margin: 0 auto;
		background: #fff;
		width: 100%;
		position: relative;
		order: 3;
		height: auto;

		.newsList_title {
			padding: 0 0 16px 10px;
			margin: 0 auto 20px;
			color: #4a4a4a;
			background: none;
			font-weight: 500;
			width: auto;
			font-size: 20px;
			border-color: #e5e5e5;
			border-width: 0 0 1px;
			border-style: dashed;
			text-align: left;
		}
		// list
		.news_list_one {
			padding: 20px 10px 10px;
			margin: 20px 0 0;
			background: none;
			display: flex;
			width: 100%;
			justify-content: space-between;
			flex-wrap: wrap;
			.news_item {
				cursor: pointer;
				padding: 0 0 12px;
				margin: 0 20px 40px 0;
				background: #fff;
				display: flex;
				width: calc(32% - 20px);
				align-items: center;
				border-bottom: 2px solid #e7e7e7;
				.news_img_box {
					overflow: hidden;
					display: none;
					width: 210px;
					height: 130px;
					.news_img {
						border: 0px solid #eee;
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.news_content {
					margin: 0 0 0 0px;
					display: flex;
					width: calc(100% - 0px);
					flex-wrap: wrap;
					.news_title {
						border: 0px solid #888;
						padding: 0 0 0 22px;
						margin: 0 0 0px;
						color: #646464;
						white-space: nowrap;
						font-weight: 500;
						font-size: 15px;
						text-overflow: ellipsis;
						overflow: hidden;
						background: url(http://clfile.zggen.cn/20231115/33a2edb63ee942f385e53c9bd2a2096a.png) no-repeat left center;
						width: 100%;
						text-align: left;
						order: 2;
					}
					.news_text {
						padding: 0 10px 0 0;
						margin: 0 0 10px;
						overflow: hidden;
						display: none;
						font-size: 14px;
						line-height: 24px;
						height: 48px;
						order: 3;
					}
					.news_time {
						color: #555;
						font-weight: 500;
						display: none;
						width: 100%;
						text-align: left;
						order: 4;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -5px, 0px);
			-webkit-perspective: 1000px;
			color: #da9821;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1.1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.news_more_view {
			cursor: pointer;
			border: 2px solid #4a4a4a;
			border-radius: 20px;
			padding: 4px 20px;
			margin: 0px auto;
			top: 0;
			background: none;
			width: auto;
			line-height: auto;
			position: absolute;
			right: 18%;
			text-align: center;
			.news_more_text {
				color: #666;
				font-weight: 600;
				display: inline-block;
				font-size: 15px;
			}
		}
	}
	// 新闻资讯
	// 首页展示
	.homeList_view {
		padding: 60px 18%;
		margin: 0px 0 0;
		background: #eee;
		width: 100%;
		position: relative;
		text-align: center;
		order: 0;

		.homeList_title {
			padding: 0px;
			margin: 0;
			color: #716242;
			font-weight: 500;
			font-size: 22px;
			border-color: #eee;
			line-height: 118px;
			background: url(http://clfile.zggen.cn/20231115/195619b75f2a473c8ef12ce628bd72d5.png) no-repeat center top;
			width: 100%;
			border-width: 0px;
			border-style: solid;
			text-align: center;
			height: 100px;
		}
		// list
		.home_list_five {
			margin: 20px 0 0;
			background: none;
			display: flex;
			width: 100%;
			align-items: flex-start;
			position: relative;
			flex-wrap: wrap;
			height: 780px;
			.home_list_five_item1 {
				margin: 0 10px 10px 0;
				overflow: hidden;
				width: calc(33% - 10px);
				position: relative;
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 250px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 30px;
					bottom: 50%;
					display: flex;
					transition: all 0.5s;
					flex-wrap: wrap;
					overflow: hidden;
					left: 50%;
					background: rgba(255,255,255,.9);
					width: 0;
					position: absolute;
					opacity: 0;
					text-align: left;
					height: 0;
					.homeList_title1 {
						width: 100%;
					}
					.homeList_title2 {
						width: 100%;
					}
					.homeList_title3 {
						width: 100%;
					}
					.homeList_title4 {
						width: 100%;
					}
					.homeList_title5 {
						width: 100%;
					}
				}
			}
			.home_list_five_item1:hover {
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					cursor: pointer;
					bottom: 0;
					display: flex;
					line-height: 30px;
					flex-wrap: wrap;
					flex-direction: column;
					left: 0;
					width: 100%;
					justify-content: center;
					align-items: center;
					opacity: 1;
					text-align: center;
					height: 100%;
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
			.home_list_five_item2 {
				margin: 0 10px 10px;
				overflow: hidden;
				width: calc(34% - 20px);
				position: relative;
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 500px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 30px;
					bottom: 50%;
					display: flex;
					transition: all 0.5s;
					flex-wrap: wrap;
					overflow: hidden;
					left: 50%;
					background: rgba(255,255,255,.9);
					width: 0;
					position: absolute;
					opacity: 0;
					text-align: left;
					height: 0;
					.homeList_title1 {
						width: 100%;
					}
					.homeList_title2 {
						width: 100%;
					}
					.homeList_title3 {
						width: 100%;
					}
					.homeList_title4 {
						width: 100%;
					}
					.homeList_title5 {
						width: 100%;
					}
				}
			}
			.home_list_five_item2:hover {
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					cursor: pointer;
					bottom: 0;
					display: flex;
					line-height: 30px;
					flex-wrap: wrap;
					flex-direction: column;
					left: 0;
					width: 100%;
					justify-content: center;
					align-items: center;
					opacity: 1;
					text-align: center;
					height: 100%;
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
			.home_list_five_item3 {
				margin: 0 0 10px 10px;
				overflow: hidden;
				width: calc(33% - 10px);
				position: relative;
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 250px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 30px;
					bottom: 50%;
					display: flex;
					transition: all 0.5s;
					flex-wrap: wrap;
					overflow: hidden;
					left: 50%;
					background: rgba(255,255,255,.9);
					width: 0;
					position: absolute;
					opacity: 0;
					text-align: left;
					height: 0;
					.homeList_title1 {
						width: 100%;
					}
					.homeList_title2 {
						width: 100%;
					}
					.homeList_title3 {
						width: 100%;
					}
					.homeList_title4 {
						width: 100%;
					}
					.homeList_title5 {
						width: 100%;
					}
				}
			}
			.home_list_five_item3:hover {
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					cursor: pointer;
					bottom: 0;
					display: flex;
					line-height: 30px;
					flex-wrap: wrap;
					flex-direction: column;
					left: 0;
					width: 100%;
					justify-content: center;
					align-items: center;
					opacity: 1;
					text-align: center;
					height: 100%;
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
			.home_list_five_item4 {
				margin: 0 10px 10px 0;
				top: 280px;
				width: calc(33% - 10px);
				position: absolute;
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 500px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 30px;
					bottom: 50%;
					display: flex;
					transition: all 0.5s;
					flex-wrap: wrap;
					overflow: hidden;
					left: 50%;
					background: rgba(255,255,255,.9);
					width: 0;
					position: absolute;
					opacity: 0;
					text-align: left;
					height: 0;
					.homeList_title1 {
						width: 100%;
					}
					.homeList_title2 {
						width: 100%;
					}
					.homeList_title3 {
						width: 100%;
					}
					.homeList_title4 {
						width: 100%;
					}
					.homeList_title5 {
						width: 100%;
					}
				}
			}
			.home_list_five_item4:hover {
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					cursor: pointer;
					bottom: 0;
					display: flex;
					line-height: 30px;
					flex-wrap: wrap;
					flex-direction: column;
					left: 0;
					width: 100%;
					justify-content: center;
					align-items: center;
					opacity: 1;
					text-align: center;
					height: 100%;
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
			.home_list_five_item5 {
				margin: 0 0px 10px 10px;
				top: 530px;
				left: 33%;
				width: calc(34% - 20px);
				position: absolute;
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 250px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 30px;
					bottom: 50%;
					display: flex;
					transition: all 0.5s;
					flex-wrap: wrap;
					overflow: hidden;
					left: 50%;
					background: rgba(255,255,255,.9);
					width: 0;
					position: absolute;
					opacity: 0;
					text-align: left;
					height: 0;
					.homeList_title1 {
						width: 100%;
					}
					.homeList_title2 {
						width: 100%;
					}
					.homeList_title3 {
						width: 100%;
					}
					.homeList_title4 {
						width: 100%;
					}
					.homeList_title5 {
						width: 100%;
					}
				}
			}
			.home_list_five_item5:hover {
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					cursor: pointer;
					bottom: 0;
					display: flex;
					line-height: 30px;
					flex-wrap: wrap;
					flex-direction: column;
					left: 0;
					width: 100%;
					justify-content: center;
					align-items: center;
					opacity: 1;
					text-align: center;
					height: 100%;
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
			.home_list_five_item6 {
				margin: 0 0px 10px;
				top: 280px;
				width: calc(33% - 10px);
				position: absolute;
				right: 0;
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 250px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 30px;
					bottom: 50%;
					display: flex;
					transition: all 0.5s;
					flex-wrap: wrap;
					overflow: hidden;
					left: 50%;
					background: rgba(255,255,255,.9);
					width: 0;
					position: absolute;
					opacity: 0;
					text-align: left;
					height: 0;
					.homeList_title1 {
						width: 100%;
					}
					.homeList_title2 {
						width: 100%;
					}
					.homeList_title3 {
						width: 100%;
					}
					.homeList_title4 {
						width: 100%;
					}
					.homeList_title5 {
						width: 100%;
					}
				}
			}
			.home_list_five_item6:hover {
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					cursor: pointer;
					bottom: 0;
					display: flex;
					line-height: 30px;
					flex-wrap: wrap;
					flex-direction: column;
					left: 0;
					width: 100%;
					justify-content: center;
					align-items: center;
					opacity: 1;
					text-align: center;
					height: 100%;
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
			.home_list_five_item7 {
				margin: 0 0px 10px;
				top: 560px;
				width: calc(33% - 10px);
				position: absolute;
				right: 0;
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 220px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 30px;
					bottom: 50%;
					display: flex;
					transition: all 0.5s;
					flex-wrap: wrap;
					overflow: hidden;
					left: 50%;
					background: rgba(255,255,255,.9);
					width: 0;
					position: absolute;
					opacity: 0;
					text-align: left;
					height: 0;
					.homeList_title1 {
						width: 100%;
					}
					.homeList_title2 {
						width: 100%;
					}
					.homeList_title3 {
						width: 100%;
					}
					.homeList_title4 {
						width: 100%;
					}
					.homeList_title5 {
						width: 100%;
					}
				}
			}
			.home_list_five_item7:hover {
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					cursor: pointer;
					bottom: 0;
					display: flex;
					line-height: 30px;
					flex-wrap: wrap;
					flex-direction: column;
					left: 0;
					width: 100%;
					justify-content: center;
					align-items: center;
					opacity: 1;
					text-align: center;
					height: 100%;
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
			.home_list_five_item8 {
				margin: 0 5px 10px;
				display: none;
				width: calc(25% - 10px);
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 200px;
					.home_img {
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 10px;
					background: #eee;
					display: flex;
					flex-wrap: wrap;
					.homeList_title1 {
						width: 100%;
						text-align: center;
					}
					.homeList_title2 {
						width: 100%;
						text-align: center;
					}
					.homeList_title3 {
						width: 100%;
						text-align: center;
					}
					.homeList_title4 {
						width: 100%;
						text-align: center;
					}
					.homeList_title5 {
						width: 100%;
						text-align: center;
					}
				}
			}
			.home_list_five_item8:hover {
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					cursor: pointer;
					bottom: 0;
					display: flex;
					line-height: 30px;
					flex-wrap: wrap;
					flex-direction: column;
					left: 0;
					width: 100%;
					justify-content: center;
					align-items: center;
					opacity: 1;
					text-align: center;
					height: 100%;
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1.08) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.homeList_more_view {
			cursor: pointer;
			border: 2px solid #ddd;
			padding: 0;
			margin: 40px auto 0;
			background: none;
			display: inline-block;
			width: 120px;
			line-height: 34px;
			text-align: center;
			.homeList_more_text {
				padding: 0px;
				color: #666;
				display: inline-block;
				font-size: 14px;
			}
			.el-icon {
				color: #999;
				display: inline-block;
				font-size: 14px;
			}
		}
	}
	// 首页展示
</style>