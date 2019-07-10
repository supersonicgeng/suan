<div class="detail">
<div class="basebox">
	<div class="bt">
		<p>百科知识</p>
		<a href="/baike/">更多 &gt;</a>
	</div>
</div>
	<dl>
		<ul>
			<{section loop=$public_hand_data.left_news.data_list name=news start=0 max=8}>
            	<li><a class="inlink" href="<{$public_hand_data.left_news.data_list[news].url}>"><{$public_hand_data.left_news.data_list[news].title}></a></li>
            <{/section}> 
		</ul>
	</dl>
</div>