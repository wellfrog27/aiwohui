# 跨域监控

<div class="help-center-list-content">
                    <h2>如何设置跨域监控</h2>
                    <div class="help-center-list-content-detail">


  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="Content-Style-Type" content="text/css">
  <meta name="generator" content="pandoc">
  <title></title>
  <style type="text/css">code{white-space: pre;}</style>


<p>如图所示，在“<strong>管理-统计规则设置</strong>”中可以看到“<strong>跨域跟踪</strong>”功能。在“已设置跨域监控的网站域名”列表下，系统会展示基于您网站访问数据智能生成的受访域名列表，您可以直接将相关域名设置为跨域监控。</p>
<p><img src="http://mtj.baidu.com/static/article/image/tongji/%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97/%E7%BB%9F%E8%AE%A1%E8%AE%BE%E7%BD%AE/%E7%BB%9F%E8%AE%A1%E8%A7%84%E5%88%99%E8%AE%BE%E7%BD%AE-%E5%B7%B2review/8%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97_%E7%BB%9F%E8%AE%A1%E8%AE%BE%E7%BD%AE_%E5%A6%82%E4%BD%95%E8%AE%BE%E7%BD%AE%E8%B7%A8%E5%9F%9F%E7%9B%91%E6%8E%A7_V0_yumingzhen--%E5%B7%B2review/media/image1.png" width="553" height="206"></p>


</div>
                </div>

## 跨域跟踪的用途举例
如果访客在访问网站的时候，某个行为需要跳转到另一个第三方网站进行，比如：第三方购物车，您的流量可能需要离开您的网域才能完成购买。用户登录网站a.com每次购买都需要跳到b.com上执行操作后再跳转回本网站a.com。如果没有设置跨域跟踪，该用户行为会被视为先访问了网站a.com，然后退出访问，之后由外部链接再次访问了网站，这与实际情况不符。使用跨网域跟踪来跟踪用户的整个结帐过程。

另外如果您的网站同时有多个域名可以访问，通过设置跨域跟踪，可以将多个域名网站的访问数据统计到一个账户的站点下，在此站点中查看多个域名的汇总数据。前提是跨域网站的全部页面下都要安装该站点的跟踪代码。如果您还希望查看单独域名下的访问数据，可以在【受访域名】报告中查看，或者设置子目录进行查看。

## 多域名网站的跨域跟踪
对于普通的访问跟踪，客户对某域名页面的访问算作一次会话。如果一个网站有两个域名，a.com和b.com，客户创建站点采用的是a.com。访客从广告点击a.com访问到b.com，再从b.com返回a.com，系统会记为两次访问，从广告进入a.com的算作推广流量，从b.com到a.com的算作自然流量，而对b.com的访问算作站外流量。

跨域是指将多个域名关联起来当作同一个会话对象，如果站点是a.com，则b.com是需要设置的跨域域名，这样上述情况只算作一次访问，是推广来源。

这对于第三方购物车等类似配置是比较理想的选择。假设您的网站域名为：a.com，在另一个域名b.com上托管了第三方购物车，用户每次购买都需要跳到b.com上执行操作后再跳转回本网站a.com。如果没有设置跨域跟踪，该用户行为会被视为先访问了网站a.com，然后退出访问，之后由外部链接再次访问了网站，这与实际情况不符。使用跨域跟踪后，则认为该用户中间没有退出网站，始终是一次访问行为。
