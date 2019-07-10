<?php
if( !defined('CORE') ) exit('Request Error!');
/**
 * 首页控制器
 *
 * @version 2013.07.05
 */
class ctl_ffsm_h5_index
{

	public static $userinfo;
	public static $control;
	public $cache_enable = true;//缓存开关,调试时可设为false
	public $cachetime    = 7200;//缓存时间,秒(注意:内容页缓存是单独的在video_view中设置)
	public $cache_prefix = 'sm.03ky.com';
	public $cache_key    = 'h5_index/index';
	public $str_where_ext = '`status`!=9';

	public function __construct()
	{
		if (empty($this->items))
		{
			$this->items = new items();
		}

		tpl::assign('web_url',URL);

		$pid = mod_topic::get_p_id();//获取一级栏目
		tpl::assign('pid',$pid);

		//获取广告
		//$this->getAd();
		$public_hand_data_cache = cache::get($this->cache_prefix,'public_hand_data');
		if($public_hand_data_cache==''){
			$public_hand_data = mod_index::get_public_hand();//获取公用部分手动数据
			cache::set($this->cache_prefix,'public_hand_data',$public_hand_data,$this->cachetime); //写缓存
		}else{
			$public_hand_data = $public_hand_data_cache;//获取公用部分手动数据
		}
		
		tpl::assign('public_hand_data',$public_hand_data);
		if(isset($_SERVER['REQUEST_URI']) && false !== stripos($_SERVER['REQUEST_URI'],'clearcache')){
			$this->cache_enable = false;
		}

	}

  
    public function xmfx2(){
                $tpl     = 'ffsm/xmfx2.tpl';
                        $content = tpl::fetch($tpl);
                        exit($content);
    }


	/**
	 *首页
	 */
	public function index()
	{
		$content      = array();
		if($this->cache_enable)
		{
			$content = cache::get($this->cache_prefix,'index');
		}
        
        $content = '';
		if(empty($content))
		{
			$hand_type_arr = array('index_test');//手动数据
			$handtype_arr = $this->items->getHandTypeId($hand_type_arr);
			$mixdata = $this->items->get_attay_hand_data($handtype_arr);
			tpl::assign('m', $mixdata);//<--END 手动数据

			$zgjm_new_data = mod_index::get_data('zgjm_data','',1,18);
			tpl::assign('zgjm_new_data',$zgjm_new_data);

			$seo['title'] = '免费算命的网站_免费算命_生辰八字算命_八字算命_周易算命_算卦在线算命丨开运算命网';
			$seo['keywords'] = '免费算命,开运算命网,算命网,算命街,周易算命,八字算命,免费算命网站';
			$seo['description'] = '免费算命网站-开运算命网提供:免费算命,姓名测试,周易,生辰八字算命,四柱算命预测,算卦,黄道吉日查询,抽签算命,生肖算命,在线排盘和趣味测试等在线免费算命内容！';
			tpl::assign('seo',$seo);
			$tpl     = 'ffsm/index.tpl';
			$content = tpl::fetch($tpl);
			//cache::set($this->cache_prefix,'index',$content,$this->cachetime); //写缓存
			//cache::set_cache_list($this->cache_prefix,'index');

		}
		exit($content);
	}
public function dl_js($row = array()){
		if($row['uid']!='' && $row['dl_status']!=1){
			db::query('UPDATE `ffsm_orders` SET `dl_status` = 1 WHERE `id` = '.$row['id'].' and `dl_status` = 0');
         	$up_num=db::affected_rows();
            if($up_num){
               db::query("UPDATE `users` SET `dl_syjf` = `dl_syjf` + '".$row['dl_money']."' , `dl_zjf` = `dl_zjf` +  '".$row['dl_money']."'  WHERE `uid` = '".$row['uid']."' limit 1");
            }
			
		}
}

    public function bazi(){
        $username = req::item('username');
        $gender = req::item('gender');
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['bazi'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);
      	
        $oid = req::item('oid');
        $token = req::item('token');
		
        if($username!=''){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
			
            $des = $username.'的八字分析';
            $data = array('username'=>$username,'gender'=>$gender,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>$i,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>1,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
          
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('names',$data);
			
            $tpl     = 'ffsm/bazi_order.tpl';
        }elseif($oid!=''){
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
                if($row['status']!=1){
                    tpl::assign('oid',$row['oid']);
                  	tpl::assign('yz_pay',1);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',json_decode(urldecode($row['data']),true));
                    $tpl     = 'ffsm/bazi_order.tpl';
                }else{

                    $return = mod_ffsm_bazi::bazi($row);
                    $yuefen = mod_ffsm_bazi::yuefen($return['user']['sx']);
                    $return['sx']['yf'] = $yuefen;

                    tpl::assign('return',$return);
                    $pp = mod_ffsm_bazi::bazipp($row);
                    tpl::assign('pp',$pp);
                    $row['data'] = json_decode(urldecode($row['data']),true);
					include PATH_DATA.'/file_cache/bzsm.data.php';
					$xingming=$this->splitName($row['data']['username']);
					$cookies = mod_wuhangbazi::get_bzwh($xingming[0],$xingming[1],$row['data']['gender'],$row['data']['y'],$row['data']['m'],$row['data']['d'],$row['data']['h'],$row['data']['i'],$row['data']['cY'],$row['data']['cM'],$row['data']['cD'],$row['data']['cH'],$row['data']['term1'],$row['data']['term2'],$row['data']['start_term'],$row['data']['end_term'],$row['data']['start_term1'],$row['data']['end_term1'],$row['data']['lDate']);
					$sql="select * from `sm_rgnm` where rgz='".$cookies['bazi'][4].$cookies['bazi'][5]."'";
					$rglm=db::queryone($sql);
					$sql="select * from `sm_smtf` where ri='".$cookies['bazi'][4].$cookies['bazi'][5]."' and shi='".$cookies['bazi'][6].$cookies['bazi'][7]."'";
					$sxth=db::queryone($sql);
					
					$info = $this->public_sm($cookies);
					tpl::assign('jmsh',$info['jmsh']);
					tpl::assign('wharr',$info['wharr']);
					tpl::assign('tywh',$info['tywh']);
					tpl::assign('nayin',$info['nayin']);
					tpl::assign('sxgx',$info['sxgx']);
					
					
					tpl::assign('sxth',$sxth);
					tpl::assign('rglm',$rglm);
					tpl::assign('cookies',$cookies);
                    tpl::assign('xgfx',$xgfx);
                    tpl::assign('mzjp',$mzjp);
                    tpl::assign('data',$row);
					tpl::assign('myq_text',$myq_text);
					$this->dl_js($row);
                    $tpl     = 'ffsm/bazi_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/bazi.tpl';
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }
public function hmjx(){
		$word=req::item('numberjx');
		$sztestType=req::item('sztestType');
        $tid = (int) req::item('tid',389);
		$path = mod_index::this_path($tid);
		tpl::assign('path',$path);
		$topic = mod_topic::get_topic('361',$tid);
        tpl::assign('topic',$topic);
		$seo = mod_topic::seo_info($tid);
		tpl::assign('seo',$seo);
		
		 $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['hmjx'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);
        $oid = req::item('oid');
        $token = req::item('token');
		
        if($word!=''){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('Y').time();
            $des = $word.'号码解析';
			
            $data = array('word'=>$word,'sztestType'=>$sztestType,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>$i,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>18,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('data',$data);
			
            $tpl     = 'ffsm/hmjx_order.tpl';
        }elseif($oid!=''){
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
                if($row['status']!=1){
               	    tpl::assign('yz_pay',1);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',json_decode(urldecode($row['data']),true));
                    $tpl     = 'ffsm/hmjx_order.tpl';
                }else{
					$row['data'] = json_decode(urldecode($row['data']),true);
					$word22=$row['data']['word'];
					
					tpl::assign('word22',$word22);
					if($row['data']['sztestType']==2){
						$word_cp=$this->findNum($row['data']['word']);
                      	$word_z=$this->hmjx_word($word_cp);
						$sql="select * from `sm_shouji` where num='".$word_z."'";
                      tpl::assign('word_cp',$word_cp);
					}else{
					$word=$row['data']['word'];
					  $word_tel=str_split($word);
                 // print_r($word_tel);
					  $word_z=$this->hmjx_word($word);
					  $word_z1=$word_tel[3].$word_tel[4];
					  $word_z2=$word_tel[5].$word_tel[6];
					  $word_z3=$word_tel[7].$word_tel[8];
					  $word_z4=$word_tel[9].$word_tel[10];
					  $word_z5=$word_tel[3].$word_tel[4].$word_tel[5].$word_tel[6];
					  $word_z6=$word_tel[7].$word_tel[8].$word_tel[9].$word_tel[10];
						tpl::assign('word_z1',$word_z1);
						tpl::assign('word_z2',$word_z2);
						tpl::assign('word_z3',$word_z3);
						tpl::assign('word_z4',$word_z4);
						tpl::assign('word_z5',$word_z5);
						tpl::assign('word_z6',$word_z6);
					 $word1=$this->hmjx_word($word_z1);
					  $word2=$this->hmjx_word($word_z2);
					  $word3=$this->hmjx_word($word_z3);
					  $word4=$this->hmjx_word($word_z4);
					  $word5=$this->hmjx_word($word_z5);
					  $word6=$this->hmjx_word($word_z6);
	
					$sql="select * from `sm_shouji` where num='".$word_z."' or num='".$word1."' or num='".$word2."' or num='".$word3."' or num='".$word4."' or num='".$word5."' or num='".$word6."'";
					}
					$haomajx=db::fetch_all(db::query($sql));
					if($row['data']['sztestType']==2){
						$seo['title'] = '车牌号码：'.$word22.'测吉凶，车牌号码'.$word22.'好不好';
						$seo['description'] = '车牌号码：'.$word22.'测吉凶，车牌号码'.$word22.'好不好'.$seo['description'];
					}else{
						$seo['title'] = '手机号码：'.$word22.'测吉凶，'.$word22.'手机号码好不好？';
						$seo['description'] = '手机号码：'.$word22.'测吉凶，'.$word22.'手机号码好不好？'.$seo['description'];
					}
					tpl::assign('seo',$seo);
					tpl::assign('haomajx',$haomajx);
					tpl::assign('word',$word);
					
					
                    
                    tpl::assign('data',$row);
					$this->dl_js($row);
						if($row['data']['sztestType']==2){
							
                    $tpl     = 'ffsm/hmjx_find.tpl';
					}
					else{
						
						 $tpl     = 'ffsm/hmjx_find2.tpl';
					}
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/hmjx.tpl';
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }
public function hmjx_word($word){
	$word=intval($word);
	$word=$word/80;
	$temp=intval($word);		
	$word=$word-$temp;
	$word=intval($word*80);
	if($word=="0"){
		$word="81";
	}
	return $word;
}
public function findNum($str=''){
     return preg_replace('/\D/s', '', $str);
}
public function xydd_dj(){
		$id = req::item('id');
		$xydd_ck = $_COOKIE["xydd_".$id];
		if($xydd_ck>0){
			tpl::assign('info',"已经祝福了！祝愿您的心愿早日达成！");	
		}else{
			db::query('UPDATE `ffsm_orders` SET `qfdj` = `qfdj`+1 WHERE `id` = '.$id);
         	 tpl::assign('isdj',1);
			tpl::assign('info',"感谢您的祝福！也祝愿您的心愿早日达成！");
			$expire=time()+60*60*12;
			setcookie("xydd_".$id, $id, $expire,'/');
		}
        $tpl     = 'ffsm/xydd_ck.tpl';
        $content = tpl::fetch($tpl);
        exit($content);
    }
public function xydd_self(){
		$id = req::item('id');
		$xydd_self=db::queryone("select * from `ffsm_orders` where id=$id");
		tpl::assign('xydd_self',$xydd_self);
        $tpl     = 'ffsm/xydd_self.tpl';
        $content = tpl::fetch($tpl);
        exit($content);
    }
public function xydd(){
      	$username = req::item('username');
      	$yuanwang = req::item('yuanwang');
      	$qfshow = req::item('qfshow');
      	$lantern_id = req::item('lantern_id');
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['xydd'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);
		include PATH_DATA.'/file_cache/xyd_data.php';
		

        $oid = req::item('oid');
        $token = req::item('token');
        if($username!=''){
            $oid = date('YmdGis').time();
            $des = $username.'的祈福点灯';
            $data = array('username'=>$username,'yuanwang'=>$yuanwang,'lantern_id'=>$lantern_id,'lantern_png'=>$xyd_data[$lantern_id][1],'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>$i,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>21,'qfdj'=>'0','qfshow'=>$qfshow,'username'=>$username,'yuanwang'=>$yuanwang,'lantern_id'=>$lantern_id,'lantern_img'=>$xyd_data[$lantern_id][1],'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
			$cxoid = mod_order::get_order($oid);
			if($cxoid['oid']==""){
				mod_order::add_order($datas);
			}
            mod_order::set_history($oid);

          
			tpl::assign('xyd_data',$xyd_data[$lantern_id]);
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('names',$data);
			
            $tpl     = 'ffsm/xydd_orders.tpl';
        }elseif($oid!=''){
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
				
				
				
                if($row['status']!=1){
                 	tpl::assign('yz_pay',1);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('names',json_decode(urldecode($row['data']),true));
					tpl::assign('xyd_data',$xyd_data['$lantern_id']);
                    $tpl     = 'ffsm/xydd_orders.tpl';
                }else{

                    $row['data'] = json_decode(urldecode($row['data']),true);
					$gf_start=date("Y.m.d",$row['createtime']);
					$gf_end=date("Y.m.d",$row['createtime']+15552000);
					tpl::assign('xyd_data',$xyd_data[$row['data']['lantern_id']]);
					if($row['xydd_img']==""){
						$dst = "./ffsm/statics/ffsm/xydd/images/qyd_find.png";
						$src_path = "./ffsm/statics/ffsm/xydd/images/light/".$xyd_data[$row['data']['lantern_id']][1];
						$xyddtext = $row['data']['yuanwang'];
						$xyddtext1 = '姓名：'.$row['data']['username'].' '.$gf_start;
						$xydd_img=$this-> xydd_img($dst,$src_path,$xyddtext,$xyddtext1);
						mod_order::up_order(array('xydd_img'=>$xydd_img), " `oid`='".$oid."'");
						tpl::assign('xydd_img','/xydd/'.$xydd_img);
						
					}else{
						tpl::assign('xydd_img','/xydd/'.$row['xydd_img']);
					}
                    tpl::assign('data',$row);
                    tpl::assign('gf_start',$gf_start);
                    tpl::assign('gf_end',$gf_end);
					$this->dl_js($row);
                    $tpl     = 'ffsm/xydd_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
			if($lantern_id!=''){
				tpl::assign('xyd_data',$xyd_data[$lantern_id]);
				tpl::assign('lantern_id',$lantern_id);
				$tpl     = 'ffsm/xydd_order.tpl';
			}else{
				$page = req::item('page');
				$list_cl = req::item('list_cl');
				$week = req::item('week');
				
				if($page>1){
					$page_s=30*($page-1);
					$page_e=30*$page;
					if($list_cl=="week"){
                     	 $xydd_all=db::fetch_all(db::query('SELECT * FROM `ffsm_orders` WHERE week(from_unixtime(`createtime`))=week(now())   and YEAR(from_unixtime(`createtime`))=YEAR(now()) and `status` = 1 AND `type` = 21 AND `qfshow` = 1 ORDER BY `qfdj` DESC limit '.$page_s.','.$page_e));
					}else if($list_cl=="zd"){
                      $xydd_all=db::fetch_all(db::query('SELECT * FROM `ffsm_orders` WHERE `status` = 1 AND `type` = 21 AND `qfshow` = 1 ORDER BY `qfdj` DESC limit '.$page_s.','.$page_e));
					}else{
                      $xydd_all=db::fetch_all(db::query('SELECT * FROM `ffsm_orders` WHERE `status` = 1 AND `type` = 21 AND `qfshow` = 1 ORDER BY `id` DESC limit '.$page_s.','.$page_e));	
					}
                  if(!empty($xydd_all)){
                    tpl::assign('xydd_all',$xydd_all);
                  }
                  	
					$tpl     = 'ffsm/xydd_page.tpl';
				}else{
					$xydd_all=db::fetch_all(db::query('SELECT * FROM `ffsm_orders` WHERE `status` = 1 AND `type` = 21 AND `qfshow` = 1 ORDER BY `id` DESC limit 0,30'));
					 $xydd_mall=db::fetch_all(db::query('SELECT * FROM `ffsm_orders` WHERE `status` = 1 AND `type` = 21 AND `qfshow` = 1 ORDER BY `qfdj` DESC limit 0,30'));
					 $xydd_weekall=db::fetch_all(db::query('SELECT * FROM `ffsm_orders` WHERE week(from_unixtime(`createtime`))=week(now())   and YEAR(from_unixtime(`createtime`))=YEAR(now()) and `status` = 1 AND `type` = 21 AND `qfshow` = 1 ORDER BY `qfdj` DESC limit 0,30'));
					 $orders= mod_order::get_history();
					foreach($orders as $k=>$v){
                     
						$orders_arr = db::queryone("select * from `ffsm_orders` where oid='".$v."' and `type` = 21 ORDER BY `id` DESC");
                      if($orders_arr[oid]!=""){
                        $orders_arr['data'] = json_decode(urldecode($orders_arr['data']),true);
						$history_data[$k] = $orders_arr;
                        $ac=mod_order::typetochannel($orders_arr['type']);
						$history_data[$k]['url'] = "/?ac=".$ac."&oid=".$orders_arr['oid']."&token=".base64_encode(md5($orders_arr['oid']));
                      }
                      	

						

					}
					 
					tpl::assign('history_data',$history_data);
					tpl::assign('xydd_all',$xydd_all);
					tpl::assign('xydd_weekall',$xydd_weekall);
					tpl::assign('xydd_mall',$xydd_mall);
                 
					$tpl     = 'ffsm/xydd.tpl';
				}
				
			}
            
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }
public function autowrap($fontsize, $angle, $fontface, $string, $width) {

	$content = "";


	for ($i=0;$i<mb_strlen($string);$i++) {
	$letter[] = mb_substr($string, $i, 1);
	}
	foreach ($letter as $l) {
	$teststr = $content." ".$l;
	$testbox = imagettfbbox($fontsize, $angle, $fontface, $teststr);

	if ((($testbox[2]-$testbox[0]) > $width) && ($content !== "")) {
	$content .= "\n\n";

	}
	$content .= $l;
	}
	return $content;
}

public function xydd_img($dst,$src_path,$text,$text1 ){

	mb_internal_encoding("UTF-8");
	$img = imagecreatefromstring(file_get_contents($dst));
	$src = imagecreatefromstring(file_get_contents($src_path));
	$width = 400;
	$height = 400;
	$white = imagecolorallocate($img, 255, 255, 255);
	$fontfile = './ffsm/statics/ffsm/xydd/mnjkt.ttf';

	$text_len =  mb_strwidth($text)/2;// 这是中文字符的个数


	$x = sqrt($text_len);//获得一个初始的字数安排
	$px = ceil($width / (2*$x));// 获得一个初始的像素
	$fontsize = 10;//获得一个初始的字体磅值

	$a = $this->autowrap($fontsize,0,$fontfile,$text,$width);
	$text_change = $a;

	$text_fontBox = imagettfbbox($fontsize, 0, $fontfile, $text_change);
	$text_height = $text_fontBox[1]-$text_fontBox[7];
	$text_width = $text_fontBox[2]-$text_fontBox[0];



	while ($text_height > $height  || $text_height < ($height -round($fontsize*96/72)*1.8)) {
	if ($text_height > $height ) {		
		$fontsize = $fontsize-1;
	}elseif ($text_height < ($height -round($fontsize*96/72)*1.8)) {
		$fontsize = $fontsize+1;
	}
	$a =  $this->autowrap($fontsize,0,$fontfile,$text,$width);
	$text_fontBox = imagettfbbox($fontsize, 0, $fontfile, $text_change);
	$text_height =$text_fontBox[1]-$text_fontBox[7];
	$text_width = $text_fontBox[2]-$text_fontBox[0];
	}
	$text_width = $text_fontBox[2]-$text_fontBox[0];
	if ($text_width >$width || $width-$text_width >$fontsize*96/72*1.2) {
	$fontsize = $fontsize - 2;
	}

	imagettftext($img, 16, 0,20, 60, $white, $fontfile, $text_change);
	imagettftext($img, 16, 0, 280, 280, $white, $fontfile, $text1);
	list($src_w, $src_h) = getimagesize($src_path); 
	$newwidth = 196;
	$newheight = 243;
	// Load
	$thumb = imagecreate($newwidth, $newheight);

	imagecopyresized($thumb, $src, 0, 0, 0, 0, $newwidth, $newheight, $src_w, $src_h);
	imagecopy($img, $thumb, 180, 397, 0, 0, 196, 243); 
	$name = time().rand(0,1000);

	imagejpeg($img,'./ffsm/xydd/'.$name.'.jpg');
	return $name.'.jpg';
}
public function qiming(){
		$code = req::item('code');
		$openid = $_COOKIE["openid"];
		$teacher_id = req::item('teacher');
		$redirect_uri="http://sm.03ky.com/?ac=qiming&teacher=".$teacher_id;
		if(empty($openid)){
			if(empty($code)){
				bdxzh::login_ac(client_id,client_secret,$redirect_uri);
			}
			else{
			bdxzh::user_login(client_id,client_secret,$redirect_uri,$code);
			}
		}
		//echo 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
		$member_u = db::get_one("SELECT * FROM `member` WHERE `openid` = '".$openid."'");//百度账号信息
        $username = req::item('username');
        $cszt = req::item('cszt');
        $gender = req::item('gender');
		switch ($teacher_id)
		 {
		 case "lyl":
				$teacher="李易玲";
				break;
		 case "tbl":
				$teacher="谭柄淋";
				break;
		 case "zsl":
				$teacher="周素丽";
				break;
		 default:
				$teacher="开运网安排老师";
		 } 
        $phone = req::item('phone');
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['qiming'];
		tpl::assign('money',$moneys);
		tpl::assign('teacher_id',$teacher_id);
		tpl::assign('teacher',$teacher);

        $oid = req::item('oid');
        $token = req::item('token');

       if($username!='' && $phone!=''){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('Y').time();
			
            $des = "宝宝（姓：".$username.'）起名预约';
            $data = array('username'=>$username,'gender'=>$gender,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>$i,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate,'cszt'=>$cszt,'phone'=>$phone,'teacher_id'=>$teacher_id,'teacher'=>$teacher);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'openid'=>$openid,'createtime'=>time(),'type'=>20,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
			
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('names',$data);
			$pay_result_url="http://sm.03ky.com/?ac=qiming&oid=".$oid."&token=".base64_encode(md5($oid));//返回url
			$display_data='{"cashier_top_block": [[{"left_col": "商品名称","right_col": "'.$payname.'"},{"left_col": "数量","right_col": "1"},{
			  "left_col": "价格",
			  "right_col": "'.$money.'元"
			}]]}';
			$return_data='{"oid":"'.$oid.'","openid":"'.$openid.'"}';
			$payname=$des;//商品标题
			$payinfo=$des;//商品描述
			$payimg="http://sm.03ky.com/statics/img/57de106713afa.png";//商品图片
			$cashierurl=bdxzh::pay_xz(client_id,client_secret,$oid,$moneys,$pay_result_url,$return_data,$display_data,$payname,$payinfo,$payimg);
			//print_r($cashierurl);
			tpl::assign('member_xz',$member_u);	
			if($cashierurl['error_msg']=='success'){
				$cashierurl['data']['cashier_url'];//收银台地址
				tpl::assign('cashier_url',$cashierurl['data']['cashier_url']);
				$tpl     = 'ffsm/qiming_order.tpl';
			}else{
				echo $cashierurl;
				
			}
			
			
			
        }elseif($oid!=''){
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
				
				
                if($row['status']!=1){
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',json_decode(urldecode($row['data']),true));
                   
					
					$tpl     = 'ffsm/qiming_order.tpl';
                }else{
					
					
				   
                    $return = mod_ffsm_bazi::bazi($row);
                    $yuefen = mod_ffsm_bazi::yuefen($return['user']['sx']);
                    $return['sx']['yf'] = $yuefen;

                    tpl::assign('return',$return);
                    $pp = mod_ffsm_bazi::bazipp($row);
                    tpl::assign('pp',$pp);
                    $row['data'] = json_decode(urldecode($row['data']),true);
					$xz_orders=db::get_one("SELECT * FROM `xz_orders` WHERE `oid` = '".$oid."'");
				   if($xz_orders['template_is']!=1){//模板消息
				    $settle=bdxzh::pay_xzhx(client_id,client_secret,$xz_orders['orderId']);
					$template_id="NrPJsW8Uex2BKFTu2fCSBO3Ldh9CXCvGBV7kBwD9SGw3Ywu4BfY9G";
					$url="http://sm.03ky.com/?ac=qiming&oid=".$oid."&token=".$token;
					$first="宝宝起名服务已经预约成功";
					$keynote1=$row['data']['teacher'];
					$keynote2="宝宝起名";
					$keynote3="宝宝(姓:".$row['data']['username'].")";
					$remark="客服会在第一时间通过电话与您确认咨询时间，请保持通话畅通，开运网客服电话：18133321213";
					bdxzh::pay_template(client_id,client_secret,$openid,$template_id,$url,$first,$keynote1,$keynote2,$keynote3,$remark); 
					db::update('xz_orders',array('','template_is'=>1)," `oid`='".$oid."'");
				   }
                    tpl::assign('data',$row);
					$this->dl_js($row);
                    $tpl     = 'ffsm/qiming_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/qiming.tpl';
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }
  //在线起名
   public function zxqm(){
	   $code = req::item('code');
     $openid = $_COOKIE["openid"];
		$redirect_uri="http://sm.03ky.com/?ac=zxqm";
		if(empty($openid)){
			if(empty($code)){
				bdxzh::login_ac(client_id,client_secret,$redirect_uri);
			}
			else{
			bdxzh::user_login(client_id,client_secret,$redirect_uri,$code);
			}
		}
        $tid = (int) req::item('tid',372);
		$path = mod_index::this_path($tid);
		tpl::assign('path',$path);
		$topic = mod_topic::get_topic('358',$tid);
        tpl::assign('topic',$topic);
		$seo = mod_topic::seo_info($tid);
		tpl::assign('seo',$seo);
		$name = req::item('name');
		if(request('xing')!='' || request('xid')!='' || $name)
		{
			if($name)
		{	
			if($name!=''){
				$name = str_replace('/','',$name);
				$xing=substr($name,0,3);
				$ming=substr($name,3,9);
			}else{
				$xing = req::item('xing');
				$ming = req::item('ming');
			}
			
			$xing1=substr($xing,0,3);	
			$ming1=substr($ming,0,3);
			
			$wh_bh_arr = mod_xingming::get_bihua($xing1);
			
			$bihua1 = $wh_bh_arr['bihua'];
			$hzwh1 = $wh_bh_arr['hzwh'];
			$tiange=$bihua1+1;
			$tiangee=$bihua1+1;
			$renge1=$bihua1;
			
			
			$xing2=substr($xing,3,3);
			if($xing2!=''){
				$wh_bh_arr2 = mod_xingming::get_bihua($xing2);
				$bihua2 = $wh_bh_arr2['bihua'];
				$hzwh2 = $wh_bh_arr2['hzwh'];
				$xing22=$xing2;
				$tiange=$bihua1+$bihua2;
				$tiangee=$bihua1+$bihua2;
				$renge1=$bihua2; 
				
				$xing2py = mod_xingming::Pinyin_sm($xing2,1);
				$xing2gb = mod_xingming::gb_big5($xing2);
			}
			
			
			$ming_wh_bh_arr = mod_xingming::get_bihua($ming1);
			$bihua3 = $ming_wh_bh_arr['bihua'];
			$hzwh3 = $ming_wh_bh_arr['hzwh'];
			$dige=$bihua3+1;
			$digee=$bihua3+1;
			$renge2=$bihua3;
			
			
			$ming2=substr($ming,3,3);
			if($ming2!=''){
				$ming_wh_bh_arr2 = mod_xingming::get_bihua($ming2);
				$bihua4 = $ming_wh_bh_arr2['bihua'];
				$hzwh4 = $ming_wh_bh_arr2['hzwh'];
				
				$dige=$bihua3+$bihua4;
				$digee=$bihua3+$bihua4;
				
				$ming2py = mod_xingming::Pinyin_sm($ming2,1);
				$ming2gb = mod_xingming::gb_big5($ming2);
			}
			
			//gb_big5
			$xm_arr = array('xing1'=>$xing1,'xing1py'=>mod_xingming::Pinyin_sm($xing1,1),'xing1gb'=>mod_xingming::gb_big5($xing1),'xing2'=>$xing2,'xing2py'=>$xing2py,'xing2gb'=>$xing2gb,'ming1'=>$ming1,'ming1py'=>mod_xingming::Pinyin_sm($ming1,1),'ming1gb'=>mod_xingming::gb_big5($ming1),'ming2'=>$ming2,'ming2py'=>$ming2py,'ming2gb'=>$ming2gb);
			tpl::assign('xm_arr',$xm_arr);
			$bh_wh_arr = array('bihua1'=>$bihua1,'bihua2'=>$bihua2,'bihua3'=>$bihua3,'bihua4'=>$bihua4,'hzwh1'=>$hzwh1,'hzwh2'=>$hzwh2,'hzwh3'=>$hzwh3,'hzwh4'=>$hzwh4);
			tpl::assign('bh_wh_arr',$bh_wh_arr);
			
			
			$zhongge=$bihua1+$bihua2+$bihua3+$bihua4;
			$zhonggee=$bihua1+$bihua2+$bihua3+$bihua4;
			//计算三才
			$renge=$renge1+$renge2;
			$rengee=$renge1+$renge2;
			$waige=$zhongge-$renge;
			$waigee=$zhonggee-$rengee;
			if($xing2==''){
				$waige=$waige+1;
				$waigee=$waigee+1;
			}
			if($ming2==''){
				$waige=$waige+1;
				$waigee=$waigee+1;
			}
			
			//天格	$bihua1=db::queryone($sql);	

			$sql="select * from `sm_81` where num='".$tiangee."'";
			$tiangearr=db::queryone($sql);
			$tiangearr['tiangee'] = $tiangee;
			tpl::assign('tiangearr',$tiangearr);
			
			
			//人格	$bihua1=db::queryone($sql);
			$sql="select * from `sm_81` where num='".$rengee."'";
			$rengearr=db::queryone($sql);
			$rengearr['rengee'] = $rengee;
			tpl::assign('rengearr',$rengearr);
			
			//地格	$bihua1=db::queryone($sql);
			$sql="select * from `sm_81` where num='".$digee."'";
			$digearr=db::queryone($sql);
			$digearr['digee'] = $digee;
			tpl::assign('digearr',$digearr);
			
			//外格	$bihua1=db::queryone($sql);
			$sql="select * from `sm_81` where num='".$waigee."'";
			$waigearr=db::queryone($sql);
			$waigearr['waigee'] = $waigee;
			tpl::assign('waigearr',$waigearr);
			
			//总格	$bihua1=db::queryone($sql);
			$sql="select * from `sm_81` where num='".$zhongge."'";
			$zonggearr=db::queryone($sql);
			//$zonggearr['waigee'] = $zonggee;
			//tpl::assign('zonggearr',$zonggearr);
			
			
			
			
			
			$tian_sancai = mod_xingming::getsancai($tiange);
			$ren_sancai = mod_xingming::getsancai($renge);
			$di_sancai = mod_xingming::getsancai($dige);
			//三才吉凶
			$sancai=$tian_sancai.$ren_sancai.$di_sancai;
			$sqlsancai="select * from `sm_sancai` where `title`='".$sancai."'";
			$rssancai=db::queryone($sqlsancai);
			$rssancai['sancai'] = $sancai;
			tpl::assign('rssancai',$rssancai);
			
			$tdr_ge = array('renge'=>$renge,'tiange'=>$tiange,'dige'=>$dige,'tian_sancai'=>$tian_sancai,'ren_sancai'=>$ren_sancai,'di_sancai'=>$di_sancai,'waige'=>$waige,'waige_sancai'=>mod_xingming::getsancai($waige),'zhongge'=>$zhongge,'zongge_sancai'=>mod_xingming::getsancai($zhongge));
			tpl::assign('tdr_ge',$tdr_ge);
			
			$xmdf=mod_xingming::getpf($tiangearr['jx'])/10+mod_xingming::getpf($rengearr['jx'])+mod_xingming::getpf($digearr['jx'])+mod_xingming::getpf($zonggearr['jx'])+mod_xingming::getpf($waigearr['jx'])/10+mod_xingming::getpf($rssancai['jx'])/4+mod_xingming::getpf($rssancai['jx1'])/4+mod_xingming::getpf($rssancai['jx2'])/4+mod_xingming::getpf($rssancai['jx3'])/4;
			if($zhonggee>60){
				  $xmdf=$xmdf-4;
			}
			$xmdf=58+$xmdf;
			tpl::assign('xmdf',$xmdf);
			
			$seo['title'] = ''.$name.'名字五格算命，'.$name.'测姓名打分，'.$name.'姓名好不好';
			$seo['keywords'] = $data['contentKeyword'];
			$seo['description'] = ''.$name.'名字五格算命，'.$name.'测姓名打分，'.$name.'姓名好不好，姓名分析，姓名算命，姓名测试爱情，姓名测试命运，姓名分析';
			tpl::assign('seo',$seo);
			
			$tpl     = 'ffsm/qm_finds.tpl';
			$content = tpl::fetch($tpl);
			exit($content);
		}else{
			
			
			
			$pernum = 540;
			$xing = request('xing');
			$page = request('page','1');
			$sex = request('sex',0);
			$hs = request('hs',0);
			$xid = request('xid');
			$page<1?$page=1:$page=$page;
			
			if($xing!=''){
				$sql='select * from `baijia_xing` where `xing`="'.$xing.'"';
				
				
				
				$xing_arr=db::queryone($sql);
				if($xing_arr['id']!=''){
					$xid = $xing_arr['id'];
				}
			}elseif($xid!=''){
				$sql='select * from `baijia_xing` where `id`="'.$xid.'"';
				$xing_arr=db::queryone($sql);
				$xing = $xing_arr['xing'];
			}
			
			if($xid==''){
				
				echo "<script> alert('姓氏不在列表中') </script>";
				header('location:/?ac=zxqm');
			}
			
			
			
			$num =  $this->_count($xid,$sex,$hs);
			
			if($hs=='2'){$huashu_s = '两字';}elseif($hs=='3'){$huashu_s = '三字';}
			if($sex==1){$xingbie_s = '男性';}elseif($sex==2){$xingbie_s = '女性';}
			
			$seo['title'] = ''.$xing.'姓在线起名，'.$xing.'姓'.$xingbie_s.$huashu_s.'在线起名，高分名字';
			$seo['description'] = ''.$xing.'姓在线起名，'.$xing.'姓'.$xingbie_s.$huashu_s.'在线起名，高分名字'.$seo['description'];
			tpl::assign('seo',$seo);
			
			
			$list = $this->_viewlist($xid,$sex,$hs,$page,$pernum);
			tpl::assign('list',$list);
			$opt_Array = array('xid'=>$xid,'xing'=>$xing,'sex'=>$sex,'hs'=>$hs,'page'=>$page);
			tpl::assign('opt_Array',$opt_Array);
			
			$pageurl = '/?ac=zxqm&xid='.$xid.'&sex='.$sex.'&hs='.$hs;//分页url
			$page_info = util::pagination_lists(array(
				'total_rs'=>$num,
				'current_page'=>$page,
				'page_size'=>$pernum,
				'url_prefix'=>$pageurl
			));
		
			tpl::assign('pageStr', $page_info);
			
			$tpl     = 'ffsm/qm_find.tpl';
			$content = tpl::fetch($tpl);
			exit($content);
			}
			
		}else{
            $jssdk_url="http://sm.03ky.com/?ac=zxqm";
			$jssdk_row=bdxzh::xz_jssdk(client_id,client_secret,appid,$jssdk_url);
         // print_r($jssdk_row);
         	 tpl::assign('jssdk_row', $jssdk_row);
         	 tpl::assign('jssdk_rows', json_encode($jssdk_row));
          
			$sql='select * from `baijia_xing`';
			$xinglist=db::querylist($sql);	
			tpl::assign('xinglist',$xinglist);
			$tpl     = 'ffsm/qm.tpl';
			$content = tpl::fetch($tpl);
			exit($content);
		}
    }
  private function _count($xid,$sex,$hs) {
		
		if($xid){
			$wxid = '`xid`="'.$xid.'"';
		}else{
			$wxid = '1=1';
		}
		
		if($sex!='0'){
			if($sex=='1'){$wsex=' and sex="0"';}elseif($sex=='2'){$wsex=' and sex="1"';}
		}
		
		if($hs!='0'){
			if($hs=='2'){$hsx=' and geshu="2"';}elseif($hs=='3'){$hsx=' and geshu="3"';}
		}
		
        $num=db::get_one('select count(1) as num FROM baijia_ming WHERE '.$wxid.$wsex.$hsx);
        return isset($num['num'])?$num['num']:0;
    }
  private function _viewlist($xid,$sex,$hs,$page=1,$pernum=30,$ord=null) {
		
		
		if($xid){
			$wxid = '`xid`="'.$xid.'"';
		}else{
			$wxid = '1=1';
		}
		
		if($sex!='0'){
			if($sex=='1'){$wsex=' and sex="0"';}elseif($sex=='2'){$wsex=' and sex="1"';}
		}
		
		if($hs!='0'){
			if($hs=='2'){$hsx=' and geshu="2"';}elseif($hs=='3'){$hsx=' and geshu="3"';}
		}
			
		$sql='select * from `baijia_ming` where '.$wxid.$wsex.$hsx.' ORDER BY id DESC limit '.(($page-1)*$pernum).','.$pernum;
		
        $list=db::get_all($sql);
        
        return $list;
    }
//八字综合分析
    public function bazizh(){
        $username = req::item('username');
        $gender = req::item('gender');
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['bazimf'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);

        $oid = req::item('oid');
        $token = req::item('token');
        if($username!=''){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
            $des = $username.'的八字综合分析';
            $data = array('username'=>$username,'gender'=>$gender,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>$i,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>6,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
			
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('names',$data);
            $tpl     = 'ffsm/bazizh_order.tpl';
        }elseif($oid!=''){
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
				
				
				
                if($row['status']!=1){
                    tpl::assign('yz_pay',1);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',json_decode(urldecode($row['data']),true));
                    $tpl     = 'ffsm/bazizh_order.tpl';
                }else{

                    $return = mod_ffsm_bazimf::bazimf($row);
                    $yuefen = mod_ffsm_bazimf::yuefen($return['user']['sx']);
                    $return['sx']['yf'] = $yuefen;

                    tpl::assign('return',$return);
                    $pp = mod_ffsm_bazizh::bazipp($row);
                    tpl::assign('pp',$pp);
                    $row['data'] = json_decode(urldecode($row['data']),true);
					include PATH_DATA.'/file_cache/bzsm.data.php';
					$xingming=$this->splitName($row['data']['username']);
					$cookies = mod_wuhangbazi::get_bzwh($xingming[0],$xingming[1],$row['data']['gender'],$row['data']['y'],$row['data']['m'],$row['data']['d'],$row['data']['h'],$row['data']['i'],$row['data']['cY'],$row['data']['cM'],$row['data']['cD'],$row['data']['cH'],$row['data']['term1'],$row['data']['term2'],$row['data']['start_term'],$row['data']['end_term'],$row['data']['start_term1'],$row['data']['end_term1'],$row['data']['lDate']);
					$sql="select * from `sm_rgnm` where rgz='".$cookies['bazi'][4].$cookies['bazi'][5]."'";
					$rglm=db::queryone($sql);
					$sql="select * from `sm_smtf` where ri='".$cookies['bazi'][4].$cookies['bazi'][5]."' and shi='".$cookies['bazi'][6].$cookies['bazi'][7]."'";
					$sxth=db::queryone($sql);
					
					$info = $this->public_sm($cookies);
					tpl::assign('jmsh',$info['jmsh']);
					tpl::assign('wharr',$info['wharr']);
					tpl::assign('tywh',$info['tywh']);
					tpl::assign('nayin',$info['nayin']);
					tpl::assign('sxgx',$info['sxgx']);
					
					
					tpl::assign('sxth',$sxth);
					tpl::assign('rglm',$rglm);
					tpl::assign('cookies',$cookies);
                    tpl::assign('xgfx',$xgfx);
                    tpl::assign('mzjp',$mzjp);
                    tpl::assign('data',$row);
					tpl::assign('myq_text',$myq_text);
					$this->dl_js($row);
                    $tpl     = 'ffsm/bazizh_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/bazizh.tpl';
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }
//八字结婚运
    public function jiehun(){
        $username = req::item('username');
        $gender = req::item('gender');
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['结婚运'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);

        $oid = req::item('oid');
        $token = req::item('token');
        if($username!=''){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
            $des = $username.'的八字结婚运';
            $data = array('username'=>$username,'gender'=>$gender,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>$i,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>11,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
			
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('names',$data);
            $tpl     = 'ffsm/jiehun_order.tpl';
        }elseif($oid!=''){
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
				
				
				
                if($row['status']!=1){
                    tpl::assign('yz_pay',1);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',json_decode(urldecode($row['data']),true));
                    $tpl     = 'ffsm/jiehun_order.tpl';
                }else{

                    $return = mod_ffsm_bazi::bazi($row);
                    $yuefen = mod_ffsm_bazi::yuefen($return['user']['sx']);
                    $return['sx']['yf'] = $yuefen;

                    tpl::assign('return',$return);
                    $pp = mod_ffsm_bazi::bazipp($row);
                    tpl::assign('pp',$pp);
                    $row['data'] = json_decode(urldecode($row['data']),true);
                    tpl::assign('data',$row);
					$this->dl_js($row);
                    $tpl     = 'ffsm/jiehun_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/jiehun.tpl';
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }
//PC端测算
    public function pc(){
        $username = req::item('username');
        $gender = req::item('gender');
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['pc'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);

        $oid = req::item('oid');
        $token = req::item('token');
        if($username!=''){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
            $des = $username.'的八字精批PC版';
            $data = array('username'=>$username,'gender'=>$gender,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>$i,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>10,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
			
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('names',$data);
            $tpl     = 'ffsm/pc_order.tpl';
        }elseif($oid!=''){
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
				
				
				
                if($row['status']!=1){
                    tpl::assign('yz_pay',1);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',json_decode(urldecode($row['data']),true));
                    $tpl     = 'ffsm/pc_order.tpl';
                }else{

                    $return = mod_ffsm_bazizh::bazizh($row);
                    $yuefen = mod_ffsm_bazizh::yuefen($return['user']['sx']);
                    $return['sx']['yf'] = $yuefen;

                    tpl::assign('return',$return);
                    $pp = mod_ffsm_bazizh::bazipp($row);
                    tpl::assign('pp',$pp);
                    $row['data'] = json_decode(urldecode($row['data']),true);
                    tpl::assign('data',$row);
					$this->dl_js($row);
                    $tpl     = 'ffsm/pc_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/pc.tpl';
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }
//开发八字精批
    public function bzjp(){
        $username = req::item('username');
        $gender = req::item('gender');
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['bzjp'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);

        $oid = req::item('oid');
        $token = req::item('token');
        if($username!=''){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
            $des = $username.'的八字精批';
            $data = array('username'=>$username,'gender'=>$gender,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>$i,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>12,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
			
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('names',$data);
            $tpl     = 'ffsm/bzjp_order.tpl';
        }elseif($oid!=''){
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
				
				
				
                if($row['status']!=1){
                    tpl::assign('yz_pay',1);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',json_decode(urldecode($row['data']),true));
                    $tpl     = 'ffsm/bzjp_order.tpl';
                }else{

                   $return = mod_ffsm_bzjp::bzjp($row);
                    $yuefen = mod_ffsm_bzjp::yuefen($return['user']['sx']);
                    $return['sx']['yf'] = $yuefen;

					
                    tpl::assign('return',$return);
                    $pp = mod_ffsm_bazizh::bazipp($row);
                    tpl::assign('pp',$pp);
                    $row['data'] = json_decode(urldecode($row['data']),true);
					include PATH_DATA.'/file_cache/bzjp.data.php';

                    tpl::assign('xgfx',$xgfx);
                    tpl::assign('mzjp',$mzjp);
                    tpl::assign('data',$row);
					$this->dl_js($row);
                    $tpl     = 'ffsm/bzjp_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/bzjp.tpl';
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }
//开发十年大运
    public function sndy(){
        $username = req::item('username');
        $gender = req::item('gender');
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['sndy'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);
		

        $oid = req::item('oid');
        $token = req::item('token');
        if($username!=''){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
            $des = $username.'的八字十年大运';
            $data = array('username'=>$username,'gender'=>$gender,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>$i,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>13,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
			
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('names',$data);
            $tpl     = 'ffsm/sndy_order.tpl';
        }elseif($oid!=''){
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
				
				
				
                if($row['status']!=1){
                    tpl::assign('yz_pay',1);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',json_decode(urldecode($row['data']),true));
                    $tpl     = 'ffsm/sndy_order.tpl';
                }else{

                    $return = mod_ffsm_sndy::sndy($row);
                    $yuefen = mod_ffsm_sndy::yuefen($return['user']['sx']);
                    $return['sx']['yf'] = $yuefen;

                    tpl::assign('return',$return);
                    $pp = mod_ffsm_sndy::bazipp($row);
                    tpl::assign('pp',$pp);
                    $row['data'] = json_decode(urldecode($row['data']),true);
                    tpl::assign('data',$row);
					$this->dl_js($row);
                    $tpl     = 'ffsm/sndy_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/sndy.tpl';
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }
//开发财运详批
    public function cyxp(){
        $username = req::item('username');
        $gender = req::item('gender');
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['cyxp'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);

        $oid = req::item('oid');
        $token = req::item('token');
        if($username!=''){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
            $des = $username.'的八字财运';
            $data = array('username'=>$username,'gender'=>$gender,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>$i,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>14,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
			
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('names',$data);
            $tpl     = 'ffsm/cyxp_order.tpl';
        }elseif($oid!=''){
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
				
				
				
                if($row['status']!=1){
                    tpl::assign('yz_pay',1);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',json_decode(urldecode($row['data']),true));
                    $tpl     = 'ffsm/cyxp_order.tpl';
                }else{

                    $return = mod_ffsm_cyxp::cyxp($row);
                    $yuefen = mod_ffsm_cyxp::yuefen($return['user']['sx']);
                    $return['sx']['yf'] = $yuefen;

                    tpl::assign('return',$return);
                    $pp = mod_ffsm_cyxp::bazipp($row);
                    tpl::assign('pp',$pp);
                    $row['data'] = json_decode(urldecode($row['data']),true);
                    tpl::assign('data',$row);
					$this->dl_js($row);
                    $tpl     = 'ffsm/cyxp_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/cyxp.tpl';
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }
//开发喜用神
    public function xys(){
        $username = req::item('username');
        $gender = req::item('gender');
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['xys'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);
		

        $oid = req::item('oid');
        $token = req::item('token');
        if($username!=''){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
            $des = $username.'的八字精批';
            $data = array('username'=>$username,'gender'=>$gender,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>$i,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>15,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
			
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('names',$data);
            $tpl     = 'ffsm/xys_order.tpl';
        }elseif($oid!=''){
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
				
				
				
                if($row['status']!=1){
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',json_decode(urldecode($row['data']),true));
                    $tpl     = 'ffsm/xys_order.tpl';
                }else{

                    $return = mod_ffsm_xys::xys($row);
                    $yuefen = mod_ffsm_xys::yuefen($return['user']['sx']);
                    $return['sx']['yf'] = $yuefen;

                    tpl::assign('return',$return);
                    $pp = mod_ffsm_xys::bazipp($row);
                    tpl::assign('pp',$pp);
                    $row['data'] = json_decode(urldecode($row['data']),true);
                    tpl::assign('data',$row);
					$this->dl_js($row);
                    $tpl     = 'ffsm/xys_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/xys.tpl';
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }
//开发八字姻缘
    public function bzyy(){
        $username = req::item('username');
        $gender = req::item('gender');
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['bzyy'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);

        $oid = req::item('oid');
        $token = req::item('token');
        if($username!=''){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
            $des = $username.'的八字感情运月老姻缘';
            $data = array('username'=>$username,'gender'=>$gender,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>$i,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>16,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
			
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('names',$data);
            $tpl     = 'ffsm/bzyy_order.tpl';
        }elseif($oid!=''){
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
				
				
				
                if($row['status']!=1){
                    tpl::assign('yz_pay',1);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',json_decode(urldecode($row['data']),true));
                    $tpl     = 'ffsm/bzyy_order.tpl';
                }else{

                    $return = mod_ffsm_bzyy::bzyy($row);
                    $yuefen = mod_ffsm_bzyy::yuefen($return['user']['sx']);
                    $return['sx']['yf'] = $yuefen;

                    tpl::assign('return',$return);
                    $pp = mod_ffsm_bzyy::bazipp($row);
                    tpl::assign('pp',$pp);
                    $row['data'] = json_decode(urldecode($row['data']),true);
                    tpl::assign('data',$row);
					$this->dl_js($row);
                    $tpl     = 'ffsm/bzyy_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/bzyy.tpl';
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }
//开发八字合婚
    public function bzhh(){

        $username = req::item('username');
        $year = req::item('y');
        $month = req::item('m');
        $day = req::item('d');
        $hour = req::item('h');
		if($hour=='-1'){
		$hour = 0;
		}
        $girl_username = req::item('girl_username');
        $girl_year = req::item('y1');
        $girl_month = req::item('m1');
        $girl_day = req::item('d1');
		$girl_hour = req::item('h1');
		if($girl_hour=='-1'){
		$girl_hour = 0;
		}
       
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		$moneys = $GLOBALS['config']['money']['bzhh'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);        $oid = req::item('oid');
        $token = req::item('token');
        if($username){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
            $des = $username.'与'.$girl_username.'的八字合婚';
            $data = array('username'=>$username,'year'=>$year,'month'=>$month,'day'=>$day,'hour'=>$hour,'girl_username'=>$girl_username,'girl_year'=>$girl_year,'girl_month'=>$girl_month,'girl_day'=>$girl_day,'girl_hour'=>$girl_hour);
			$datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>17,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('data',$data);
            $tpl     = 'ffsm/bzhh_order.tpl';
        }elseif($oid!=''){
            //验证付款
            if($token==base64_encode(md5($oid))){

                $row = mod_order::get_order($oid);
                $row['data'] = json_decode(urldecode($row['data']),true);

                if($row['status']!=1){
                    tpl::assign('yz_pay',1);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',$row['data']);
                    $tpl     = 'ffsm/bzhh_order.tpl';
                }else{
                    $data = mod_ffsm_bzhh::bzhh($row['data']);

                    //print_r($data);

                    tpl::assign('data',$data);
					$this->dl_js($row);
                    $tpl     = 'ffsm/bzhh_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/bzhh.tpl';
        }

        $content = tpl::fetch($tpl);
        exit($content);
    }
//姻缘测试
    public function yinyuancs(){
        $username = req::item('username');
        $gender = req::item('gender');
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['yinyuancs'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);
		

        $oid = req::item('oid');
        $token = req::item('token');
        if($username!=''){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
            $des = $username.'的八字婚姻运势';
            $data = array('username'=>$username,'gender'=>$gender,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>$i,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>7,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
			
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('names',$data);
            $tpl     = 'ffsm/yinyuancs_order.tpl';
        }elseif($oid!=''){
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
				
				
				
                if($row['status']!=1){
                    tpl::assign('yz_pay',1);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',json_decode(urldecode($row['data']),true));
                    $tpl     = 'ffsm/yinyuancs_order.tpl';
                }else{

                    $return = mod_ffsm_yinyuancs::yinyuancs($row);
                    $yuefen = mod_ffsm_yinyuancs::yuefen($return['user']['sx']);
                    $return['sx']['yf'] = $yuefen;

                    tpl::assign('return',$return);
                    $pp = mod_ffsm_bazi::bazipp($row);
                    tpl::assign('pp',$pp);
                    $row['data'] = json_decode(urldecode($row['data']),true);
                    tpl::assign('data',$row);
					$this->dl_js($row);
                    $tpl     = 'ffsm/yinyuancs_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/yinyuancs.tpl';
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }

    public function hehun(){

        $username = req::item('username');
        $year = req::item('y');
        $month = req::item('m');
        $day = req::item('d');
        $hour = req::item('h');
		if($hour=='-1'){
		$hour = 0;
		}
        $girl_username = req::item('girl_username');
        $girl_year = req::item('y1');
        $girl_month = req::item('m1');
        $girl_day = req::item('d1');
		$girl_hour = req::item('h1');
		if($girl_hour=='-1'){
		$girl_hour = 0;
		}
       
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		$moneys = $GLOBALS['config']['money']['hehun'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);
        $oid = req::item('oid');
        $token = req::item('token');
        if($username){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
            $des = $username.'与'.$girl_username.'的八字合婚';
            $data = array('username'=>$username,'year'=>$year,'month'=>$month,'day'=>$day,'hour'=>$hour,'girl_username'=>$girl_username,'girl_year'=>$girl_year,'girl_month'=>$girl_month,'girl_day'=>$girl_day,'girl_hour'=>$girl_hour);
			$datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>2,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('data',$data);
            $tpl     = 'ffsm/hehun_order.tpl';
        }elseif($oid!=''){
            //验证付款
            if($token==base64_encode(md5($oid))){

                $row = mod_order::get_order($oid);
                $row['data'] = json_decode(urldecode($row['data']),true);

                if($row['status']!=1){
                    tpl::assign('yz_pay',1);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',$row['data']);
                    $tpl     = 'ffsm/hehun_order.tpl';
                }else{
                    $data = mod_ffsm_peidui::hehun($row['data']);

                    //print_r($data);

                    tpl::assign('data',$data);
					$this->dl_js($row);
                    $tpl     = 'ffsm/hehun_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/hehun.tpl';
        }

        $content = tpl::fetch($tpl);
        exit($content);
    }

    public function xmfx(){
        $xing = req::item('xing');
        $username = req::item('username');
        $gender = req::item('gender');

        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');

        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['xmfx'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);
        $oid = req::item('oid');
        $token = req::item('token');
        if($username){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
            $des = $xing.$username.'的姓名详解';
            $data = array('xing'=>$xing,'username'=>$username,'gender'=>$gender,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>'','cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>3,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);

            $info = mod_ffsm_xingming::xmfx($data);
            tpl::assign('return',$info);
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('data',$data);
			
            $tpl     = 'ffsm/xmfx_order.tpl';
        }elseif($oid!=''){
            //验证付款
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
                $row['data']=json_decode(urldecode($row['data']),true);
                $info = mod_ffsm_xingming::xmfx($row['data']);
                if($row['status']!=1){
                    tpl::assign('yz_pay',1);
                    tpl::assign('return',$info);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',$row['data']);
                    $tpl     = 'ffsm/xmfx_order.tpl';
                }else{

                    tpl::assign('return',$info);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',$row['data']);
					$this->dl_js($row);
                    $tpl     = 'ffsm/xmfx_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/xmfx.tpl';
        }

        $content = tpl::fetch($tpl);
        exit($content);
    }

    public function xmpd(){
        $malexing = req::item('malexing');
        $malename = req::item('malename');
        $femalexing = req::item('femalexing');
        $femalename = req::item('femalename');
        $oid = req::item('oid');
        $token = req::item('token');
		$moneys = $GLOBALS['config']['money']['xmpd'];
		
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);
        if($malexing){
			
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
			
            $oid = date('YmdGis').time();
            $des = $malexing.$malename.'与'.$femalexing.$femalename.'的姓名配对';
            $data = array('malexing'=>$malexing,'malename'=>$malename,'femalexing'=>$femalexing,'femalename'=>$femalename);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>4,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('data',$data);
			tpl::assign('wx','111');
			if ( strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger') !== false ) {//微信内
					tpl::assign('wx','0');
            }
            $tpl     = 'ffsm/xmpd_order.tpl';
        }elseif($oid!=''){
            //验证付款

            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);

                if($row['status']!=1){
                    tpl::assign('yz_pay',1);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);

                    tpl::assign('data',json_decode(urldecode($row['data']),true));
                    $tpl     = 'ffsm/xmpd_order.tpl';
                }else{

                    $return = mod_ffsm::xmfx($row);

                    tpl::assign('return',$return);
                    $row['data'] = json_decode(urldecode($row['data']),true);
                    tpl::assign('data',$row);
					$this->dl_js($row);
                    $tpl     = 'ffsm/xmpd_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/xmpd.tpl';
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }
//八字精批
    public function bazijp(){
        $username = req::item('username');
        $gender = req::item('gender');
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['bazijp'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);
		

        $oid = req::item('oid');
        $token = req::item('token');
        if($username!=''){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
            $des = $username.'的八字精批';
            $data = array('username'=>$username,'gender'=>$gender,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>$i,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>8,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
			
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('names',$data);
            $tpl     = 'ffsm/bazijp_order.tpl';
        }elseif($oid!=''){
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
				
				
				
                if($row['status']!=1){
                    tpl::assign('yz_pay',1);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',json_decode(urldecode($row['data']),true));
                    $tpl     = 'ffsm/bazijp_order.tpl';
                }else{

                    $return = mod_ffsm_bazimf::bazimf($row);
                    $yuefen = mod_ffsm_bazimf::yuefen($return['user']['sx']);
                    $return['sx']['yf'] = $yuefen;

                    tpl::assign('return',$return);
                    $pp = mod_ffsm_bazizh::bazipp($row);
                    tpl::assign('pp',$pp);
                    $row['data'] = json_decode(urldecode($row['data']),true);
					include PATH_DATA.'/file_cache/bzsm.data.php';
					$xingming=$this->splitName($row['data']['username']);
					$cookies = mod_wuhangbazi::get_bzwh($xingming[0],$xingming[1],$row['data']['gender'],$row['data']['y'],$row['data']['m'],$row['data']['d'],$row['data']['h'],$row['data']['i'],$row['data']['cY'],$row['data']['cM'],$row['data']['cD'],$row['data']['cH'],$row['data']['term1'],$row['data']['term2'],$row['data']['start_term'],$row['data']['end_term'],$row['data']['start_term1'],$row['data']['end_term1'],$row['data']['lDate']);
					$sql="select * from `sm_rgnm` where rgz='".$cookies['bazi'][4].$cookies['bazi'][5]."'";
					$rglm=db::queryone($sql);
					$sql="select * from `sm_smtf` where ri='".$cookies['bazi'][4].$cookies['bazi'][5]."' and shi='".$cookies['bazi'][6].$cookies['bazi'][7]."'";
					$sxth=db::queryone($sql);
					
					$info = $this->public_sm($cookies);
					tpl::assign('jmsh',$info['jmsh']);
					tpl::assign('wharr',$info['wharr']);
					tpl::assign('tywh',$info['tywh']);
					tpl::assign('nayin',$info['nayin']);
					tpl::assign('sxgx',$info['sxgx']);
					
					
					tpl::assign('sxth',$sxth);
					tpl::assign('rglm',$rglm);
					tpl::assign('cookies',$cookies);
                    tpl::assign('xgfx',$xgfx);
                    tpl::assign('mzjp',$mzjp);
                    tpl::assign('data',$row);
					tpl::assign('myq_text',$myq_text);
					$this->dl_js($row);
                    $tpl     = 'ffsm/bazijp_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/bazijp.tpl';
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }
private function public_sm($cookies){
        $jmsh['jin'] = mod_suanming::howstring($cookies['wh'],'金');
        $jmsh['mu'] = mod_suanming::howstring($cookies['wh'],'木');
        $jmsh['shui'] = mod_suanming::howstring($cookies['wh'],'水');
        $jmsh['huo'] = mod_suanming::howstring($cookies['wh'],'火');
        $jmsh['tu'] = mod_suanming::howstring($cookies['wh'],'土');


        $wharr = mod_suanming::whwq($jmsh['jin'],$jmsh['mu'],$jmsh['shui'],$jmsh['huo'],$jmsh['tu']);


        //同类异类五行
        $sql="select * from `sm_wh` where wh='".$cookies['wh'][4]."'";
        $tywh = db::queryone($sql);



        //纳音
        $sql='select * from `sm_jiazi` where jiazi="'.$cookies['bazi'][0].$cookies['bazi'][1].'"';
        $nayin[]=db::queryone($sql);
        $sql2='select * from `sm_jiazi` where jiazi="'.$cookies['bazi'][2].$cookies['bazi'][3].'"';
        $nayin[]=db::queryone($sql2);
        $sql3='select * from `sm_jiazi` where jiazi="'.$cookies['bazi'][4].$cookies['bazi'][5].'"';
        $nayin[]=db::queryone($sql3);
        $sql4='select * from `sm_jiazi` where jiazi="'.$cookies['bazi'][6].$cookies['bazi'][7].'"';
        $nayin[]=db::queryone($sql4);


        //生肖个性
        $sql="select * from `sm_sxgx` where sx='".$cookies['sx']."'";
        $sxgx=db::queryone($sql);


        //节气
        $solarTerm =array("小寒","大寒 ","立春","雨水 ","惊蛰","春分 ","清明","谷雨 ","立夏","小满 ","芒种","夏至 ","小暑","大暑 ","立秋","处暑 ","白露","秋分 ","寒露","霜降 ","立冬","小雪 ","大雪","冬至 ");
        eregi("(.*)/(.*)", $cookies['jieqi']['term1'],$zc_1);
        $zc1 = $solarTerm[$zc_1[1]].$zc_1[2];
        eregi("(.*)/(.*)", $cookies['jieqi']['term2'], $zc_2);
        $zc2 = $solarTerm[$zc_2[1]].$zc_2[2];

        $info['jmsh'] = $jmsh;
        $info['wharr'] = $wharr;
        $info['tywh'] = $tywh;
        $info['nayin'] = $nayin;
        $info['sxgx'] = $sxgx;
        return $info;
    }
public function splitName($fullname){ 
     $hyphenated = array('欧阳','太史','端木','上官','司马','东方','独孤','南宫','万俟','闻人','夏侯','诸葛','尉迟','公羊','赫连','澹台','皇甫', 
        '宗政','濮阳','公冶','太叔','申屠','公孙','慕容','仲孙','钟离','长孙','宇文','城池','司徒','鲜于','司空','汝嫣','闾丘','子车','亓官', 
        '司寇','巫马','公西','颛孙','壤驷','公良','漆雕','乐正','宰父','谷梁','拓跋','夹谷','轩辕','令狐','段干','百里','呼延','东郭','南门', 
        '羊舌','微生','公户','公玉','公仪','梁丘','公仲','公上','公门','公山','公坚','左丘','公伯','西门','公祖','第五','公乘','贯丘','公皙', 
        '南荣','东里','东宫','仲长','子书','子桑','即墨','达奚','褚师'); 
        $vLength = mb_strlen($fullname, 'utf-8'); 
        $lastname = ''; 
        $firstname = '';//前为姓,后为名 
        if($vLength > 2){ 
            $preTwoWords = mb_substr($fullname, 0, 2, 'utf-8');//取命名的前两个字,看是否在复姓库中 
            if(in_array($preTwoWords, $hyphenated)){ 
                $lastname = $preTwoWords; 
                $firstname = mb_substr($fullname, 2, 10, 'utf-8'); 
            }else{ 
                $lastname = mb_substr($fullname, 0, 1, 'utf-8'); 
                $firstname = mb_substr($fullname, 1, 10, 'utf-8'); 
            } 
        }else if($vLength == 2){//全名只有两个字时,以前一个为姓,后一下为名 
            $lastname = mb_substr($fullname ,0, 1, 'utf-8'); 
            $firstname = mb_substr($fullname, 1, 10, 'utf-8'); 
        }else{ 
            $lastname = $fullname; 
        } 
        return array($lastname, $firstname); 

}
//2019爱情
    public function aiqingyun(){
        $username = req::item('username');
        $gender = req::item('gender');
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $i = req::item('i');
        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		
		$moneys = $GLOBALS['config']['money']['aiqingyun'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);
		

        $oid = req::item('oid');
        $token = req::item('token');
        if($username!=''){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
            $des = $username.'的八字爱情运';
            $data = array('username'=>$username,'gender'=>$gender,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'i'=>$i,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>9,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            mod_order::add_order($datas);
            mod_order::set_history($oid);
			
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('names',$data);
            $tpl     = 'ffsm/aiqingyun_order.tpl';
        }elseif($oid!=''){
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
				
				
				
                if($row['status']!=1){
                    tpl::assign('yz_pay',1);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);
                    tpl::assign('data',json_decode(urldecode($row['data']),true));
                    $tpl     = 'ffsm/aiqingyun_order.tpl';
                }else{

                    $return = mod_ffsm_baziwx::baziwx($row);
                    $yuefen = mod_ffsm_baziwx::yuefen($return['user']['sx']);
                    $return['sx']['yf'] = $yuefen;

                    tpl::assign('return',$return);
                    $pp = mod_ffsm_baziwx::bazipp($row);
                    tpl::assign('pp',$pp);
                    $row['data'] = json_decode(urldecode($row['data']),true);
                    tpl::assign('data',$row);
					$this->dl_js($row);
                    $tpl     = 'ffsm/aiqingyun_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/aiqingyun.tpl';
        }
        $content = tpl::fetch($tpl);
        exit($content);
    }

    public function ziwei(){
        $username = req::item('username');
        $gender = req::item('gender');
        $y = req::item('y');
        $m = req::item('m');
        $d = req::item('d');
        $h = req::item('h');
        $oid = req::item('oid');
        $token = req::item('token');

        $cY = req::item('cY');
        $cM = req::item('cM');
        $cD = req::item('cD');
        $cH = req::item('cH');
        $term1 = req::item('term1');
        $term2 = req::item('term2');
        $start_term = req::item('start_term');
        $end_term = req::item('end_term');
        $start_term1 = req::item('start_term1');
        $end_term1 = req::item('end_term1');
        $lDate = req::item('lDate');
		$moneys = $GLOBALS['config']['money']['ziwei'];
		tpl::assign('money',$moneys);
		//第四方支付
     	$sys_pay_type=db::queryone("SELECT * FROM `system` WHERE `name` = 'pay_type'");
        tpl::assign('sys_pay_type',$sys_pay_type['config']);
        if($username){
			$dl_id = $_COOKIE["dl"];
            $dl=db::get_one("SELECT * FROM `users` WHERE `uid` = '".$dl_id."'");
            $hdjf=round($moneys*$dl['dl_tcbl']/100,2);
            $oid = date('YmdGis').time();
            $des = $username.'的紫薇命盘';
            $data = array('username'=>$username,'gender'=>$gender,'y'=>$y,'m'=>$m,'d'=>$d,'h'=>$h,'cY'=>$cY,'cM'=>$cM,'cD'=>$cD,'cH'=>$cH,'term1'=>$term1
            ,'term2'=>$term2,'start_term'=>$start_term,'end_term'=>$end_term,'start_term1'=>$start_term1,'end_term1'=>$end_term1,'lDate'=>$lDate);
            $datas = array('data'=>urlencode(json_encode($data)),'oid'=>$oid,'createtime'=>time(),'type'=>5,'ip'=>util::get_client_ip(),'des'=>$des,'money'=>$moneys,'uid'=>$dl_id,'dl_status'=>0,'dl_money'=>$hdjf);
            $return = mod_ffsm_ziwei::ziwei($data);
            tpl::assign('return',$return);


            mod_order::add_order($datas);
            mod_order::set_history($oid);
            tpl::assign('oid',$oid);
            tpl::assign('des',$des);
            tpl::assign('data',$data);
            $tpl     = 'ffsm/ziwei_order.tpl';
        }elseif($oid!=''){
            //验证付款
            if($token==base64_encode(md5($oid))){
                $row = mod_order::get_order($oid);
                $row['data']=json_decode(urldecode($row['data']),true);
                $return = mod_ffsm_ziwei::ziwei($row['data']);

                if($row['status']!=1){
                    tpl::assign('yz_pay',1);
                    tpl::assign('return',$return);
                    tpl::assign('oid',$row['oid']);
                    tpl::assign('des',$row['des']);

                    tpl::assign('data',($row['data']));
                    $tpl     = 'ffsm/ziwei_order.tpl';
                }else{
					$this->dl_js($row);
                    $tpl     = 'ffsm/ziwei_find.tpl';
                }
            }else{
                die('验证失败!');
            }

        }else{
            $tpl     = 'ffsm/ziwei.tpl';
        }

        $content = tpl::fetch($tpl);
        exit($content);
    }

    public function select_orders(){
        $oid = req::item('oid');
        $row = mod_order::get_order($oid);

        if($row==''){
            header("Content-type:text/html;charset=utf-8");
            die("没有该订单!");
            //die("<script> alert('请输入关键字');</script>");
        }else{
            $ac=mod_order::typetochannel($row['type']);
            $url = "/?ac=".$ac."&oid=".$row['oid']."&token=".base64_encode(md5($row['oid']));
            header('Location:'.$url);
            exit;
        }
    }

    public function history(){
        $orders= mod_order::get_history();
		$state = req::item('state');
       if($state!=1 && $state!=2){
         $state=0;
       }
       $type=array(11=>"八字精批",13=>"十年大运",2=>"八字合婚",7=>"姻缘分析",4=>"爱情配对",16=>"月老姻缘簿",14=>"财运分析",5=>"紫微斗数",1=>"综合分析",3=>"姓名测试");
        foreach($orders as $k=>$v){
            $orders_arr = mod_order::get_order($v);
            $data[] = $orders_arr;
			$data[$k]['data']=json_decode(urldecode($orders_arr['data']),true);
          	$data[$k]['createtime']=date("Y-m-d H:i:s",$orders_arr['createtime']);
         	 $data[$k]['type']=$type[$orders_arr['type']];
            $ac=mod_order::typetochannel($orders_arr['type']);
            $data[$k]['url'] = "/?ac=".$ac."&oid=".$orders_arr['oid']."&token=".base64_encode(md5($orders_arr['oid']));
        }
		
      
        tpl::assign('data',$data);
        tpl::assign('state',$state);
        $tpl     = 'ffsm/history.tpl';
        $content = tpl::fetch($tpl);
        exit($content);
    }


    public function feedback(){

        $data['username'] = req::item('username');
                $data['payment_time'] = req::item('payment_time');
                $data['typeid'] = req::item('typeid');
                        $data['contact_type'] = req::item('contact_type');
                        $data['contact_wx'] = req::item('contact_wx');
                                $data['contact_email'] = req::item('contact_email');
                                $data['contact_phone'] = req::item('contact_phone');

                                        if($data['username']){
                                                       //$falg = mod_order::add_feedback($data);
                                                                   if($falg){
                                                                                       die("<script> alert('已经收到您的反馈,我们会第一时间跟进处理!');parent.location.href='/'; </script>");
                                                                                                   }
                                                               }
        
        $tpl     = 'ffsm/feedback.tpl';
        $content = tpl::fetch($tpl);
        exit($content);
    }


    public function about(){
        $tpl     = 'ffsm/about.tpl';
        $content = tpl::fetch($tpl);
        exit($content);
    }


    public function contact(){
        $tpl     = 'ffsm/contact.tpl';
        $content = tpl::fetch($tpl);
        exit($content);
    }
    public function gengduo(){
        $tpl     = 'ffsm/gengduo.tpl';
        $content = tpl::fetch($tpl);
        exit($content);
    }

    public function send_test(){

        $post_data = array('Sex'=>1,'Solar'=>1,'Year'=>'1988','Month'=>1,'Day'=>'2','Hour'=>'1','Leap'=>'0','FUNC'=>'Basic');
        $msg = send("https://fate.windada.com/cgi-bin/predict", $post_data);
        print_r($msg);

    }




}
