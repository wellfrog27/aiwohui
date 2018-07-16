# 第三方推广管理

<div class="help-center-list-content">
                    <h2>什么是URL参数?</h2>
                    <div class="help-center-list-content-detail"><p>我们经常可以看到URL后面带有<font color="red">?</font><strong>Par1</strong>=xxx<font color="red">&amp;</font><strong>Par2</strong>=xxx的类似样式，其中Par1、Par2即为该URL的参数。“？”是参数与URL的链接符，“&amp;”是参数与参数之间的链接符。利用这种方式，我们便可以通过URL来传递信息。</p>

<p>以百度统计中的”指定广告跟踪”功能为例，就是利用在URL中添加指定的参数，实现区分推广页面中的广告信息。例如：您网站的推广页面的URL为www.abc.com/product，为其添加参数得到新的URL: www.abc.com/product<font color="red">?</font><strong>hmsr</strong>=xxx<font color="red">&amp;</font><strong>hmpl</strong>=xxx<font color="red">&amp;</font><strong>hmcu</strong>=xxx<font color="red">&amp;</font><strong>hmkw</strong>=xxx<font color="red">&amp;</font><strong>hmci</strong>=xxx，将新生成的URL作为此次推广的落地页。添加参数后并不会影响原页面的打开内容，当用户访问带有参数的URL时，百度统计会自动识别URL中的参数值，并汇总到“指定广告跟踪”的报告中。<a href="http://tongji.baidu.com/web/help/article?id=262&amp;type=0">点此</a>了解百度统计可以识别的URL参数。</p></div>
                </div>

<div class="help-center-list-content">
                    <h2>hm参数与utm参数的对应关系</h2>
                    <div class="help-center-list-content-detail"><p>百度统计通过落地页中URL的参数来识别该URL的广告信息，<a href="http://tongji.baidu.com/web/help/article?id=261&amp;type=0">点此</a>了解什么是URL参数。</p>

<p>百度统计标识广告信息一直采用hm参数，即hmsr、hmpl、hmcu、hmkw、hmci五个参数。同时也有用户习惯使用utm参数，即utm_source、utm_medium、utm_campaign、utm_term、utm_content来标记广告信息，但这部分用户就无法通过指定广告跟踪报告来汇总这些广告信息了。自2017年3月29日起，百度统计开始兼容utm参数，可以识别并汇总utm参数标识的广告信息。</p>

<p>hm参数在百度统计中的意义: <br>
hmsr:媒体平台参数，一般用于标识广告投放的广告主、网站等信息，该参数为必填的物料信息。 <br>
hmpl:计划名称参数，一般用于标识广告所属的推广计划信息，只有设置了推广计划信息，才可以设置推广单元信息。 <br>
hmcu:单元名称参数，一般用于标识广告所属的推广单元信息，只有设置了推广单元信息，才可以设置关键词和创意信息。 <br>
hmkw:关键词参数，一般用于标识触发广告的关键词信息。 <br>
hmci:创意参数，一般用于标识广告的创意形式信息。</p>

<p>utm参数与hm参数的对应关系为： <br>
utm_source=hmsr <br>
utm_medium=hmpl <br>
utm_campaign=hmcu <br>
utm_term=hmkw <br>
utm_content=hmci</p>

<p>如果同时出现相对应的两个参数，以hm参数值为准。例如url中出现hmsr=weixin&amp;utm_source=微信，则来源标识为weixin。</p></div>
                </div>

<div class="help-center-list-content">
                    <h2>指定广告跟踪的用途与设置方法</h2>
                    <div class="help-center-list-content-detail"><h2 id="指定广告追踪用途">指定广告追踪用途：</h2>

<p>指定广告跟踪将提供您各种其它媒介推广为您网站带来的流量情况。通过对各种媒介推广给您网站带来的流量对比，您可以了解哪种媒介推广能够给您网站带来较多的流量，哪种媒介推广给您网站带来的流量质量较高。基于各种媒介推广带来的不同流量及流量质量，您可以进一步比较分析在各种媒介上的关键词和创意，了解哪些关键词和创意更能够吸引访客，哪些关键词和创意还需要进一步优化以及如何优化等等。通过不断地比较分析各类媒介推广方式，您可以不断提升整体的网络营销效果。</p>

<h2 id="指定广告追踪设置方法">指定广告追踪设置方法：</h2>

<p>在百度统计“<strong>管理-&gt;第三方推广管理-&gt;指定广告跟踪</strong>”中，填写下图所示的信息：在其他媒体投放广告的落地URL，广告所投放的平台，投放的计划、单元、关键词。点击“<strong>确定并生成URL</strong>”，百度统计会根据您所填写的内容生成一个带有参数的URL。生成记录中会保存最近生成的200条记录。</p>

<p><img src="https://mtj.baidu.com/static/article/image/qUIiwBSJlR1491496525.jpg" width="553" height="243"></p>

<p>请将这个新生成的URL作为您在其他媒体平台推广的落地URL。当访客通过其他媒介平台点击此URL时，百度统计便会按照计划、单元、关键词信息将本次访问进行归类，显示在“指定广告跟踪”报告中。要跟踪的URL必须安装本站点的统计代码。</p>

<p>统计提供批量生成URL的工具，该工具为一个Excel模板，下载Excel模板，将广告物料信息按要求填入，在右侧单元格中会自动生成相应的推广URL。</p>

<p><img src="https://mtj.baidu.com/static/article/image/hJjLjrjVBY1491496622.jpg" width="553" height="179"></p>

<p><strong>注意:</strong></p>

<p>百度统计能够自动判断百度系的推广来源，不需在此设置指定广告跟踪。</p>

<p>如果确认代码安装正确，但指定广告跟踪中没有数据或者数据显示不全，可能是因为：</p>

<p>1、请在“管理“-&gt;”第三方推广管理“-&gt;”指定广告追踪“处查看是否有您设置的要追踪的广告；</p>

<p>2、设置指定广告跟踪3个小时后，百度统计才能提供相应数据；</p>

<p>3、您所指定的跟踪在指定的时间段内没有带来流量。</p></div>
                </div>

<div class="help-center-list-content">
                    <h2>其它媒介平台的流量跟踪（场景举例）</h2>
                    <div class="help-center-list-content-detail">


  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="Content-Style-Type" content="text/css">
  <meta name="generator" content="pandoc">
  <title></title>
  <style type="text/css">code{white-space: pre;}</style>


<p>通过指定广告跟踪功能，百度统计可以为您监控其它媒介推广为您网站带来的流量情况。 <img src="https://mtj.baidu.com/static/article/image/luSNHusszi1477817967.png" alt="图片"></p>
<p>比如您期望在A、B两个平台投放广告，广告的目标推广URL为您网站的某个页面“www.domain.com”。指定广告跟踪功能会根据广告投放平台，投放的计划、单元、关键词等信息，给该页面地址“www.domain.com”添加一些参数，生成新的推广URL。您再将新的推广URL投放到A、B平台上，当访客通过这些平台点击推广URL进入您的网站，百度统计即可收集到该流量的媒介平台、计划、单元、关键词等信息。</p>
<p>您可以在“报告”-&gt;“来源分析”-&gt;“指定广告跟踪”报告中查看相关数据。通过对各种媒介推广效果的对比，您可以了解哪种媒介推广能为网站带来较多的流量，哪种媒介推广带来的流量质量较高。然后进一步比较分析在各种媒介上投放的关键词和创意，了解哪些关键词和创意更能够吸引访客，哪些关键词和创意还需要进一步优化以及如何优化等等。通过不断地比较分析各类媒介推广方式，您可以不断提升整体的网络营销效果。</p>
<p>注意：百度统计能够自动判断百度系的推广来源，不需在此设置指定广告跟踪。</p>


</div>
                </div>
