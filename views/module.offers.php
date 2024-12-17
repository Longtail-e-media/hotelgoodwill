<?php 
$resoffr=$socialshare='';
$expired='';
$enquiry='';
$resrandoffr=$hmresoffr=$resinndetail=$offbredd=$offbredd22=$offer_details='';
$offrRec = Offers::get_offer_by();

if(defined('OFFERS_PAGE') and isset($_REQUEST['slug'])) {


    
    $slug = addslashes($_REQUEST['slug']);
    $recRow = Offers::find_by_slug($slug);
    if(!empty($recRow)) {
        
        if(!empty($recRow->image)) { 
              $imglink =IMAGE_PATH.'offers/'.$recRow->image;
        }
        else {
            $imglink = IMAGE_PATH.'static/inner-img.jpg';
        }

        $rescontent = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($recRow->content));   
        $content = !empty($rescontent[1])?$rescontent[1] : $rescontent[0];
    $currentdate = date("Y-m-d") ;
    // pr($recRow);
    // pr($currentdate);
    if($recRow->offer_date > $currentdate){
        $enquiry='<a href="'.BASE_URL.'book/'.$recRow->slug.'" class="btn btn-primary btn-book" style="color: #fff;background-color: #7b2b2e;border-color: #7b2b2e;">Enquiry</a>';
    }
    else{
        $enquiry='';
    }
    $offbredd.=' <section class="page-header" style="background-image:url('.BASE_URL.'template/web/images/window.jpg);">
            <div class="section-wrapper-boxed">
               <!-- <p>Offer and Packages</p>-->
               <div class="content">
                <h1>'.$recRow->title.'</h1>
                </div>
            </div>
        </section>';
        $imgs = '';
        if ($recRow->multiimage != "a:0:{}") {
            $imageList = unserialize($recRow->multiimage);
            foreach ($imageList as $image) {
                $file_path = SITE_ROOT . 'images/offers/offerimg/' . $image;
                if (file_exists($file_path)) {
                    $imgs .= '<a href="' . IMAGE_PATH . 'offers/offerimg/' . $image . '"><img src="' . IMAGE_PATH . 'offers/offerimg/' . $image . '" alt="'.$recRow->title.'"></a>';
                }
            }
        }

          $resinndetail.='
                    
 <section class="blog-single-wrapper">
    <div class="section-wrapper-boxed">
        <div class="blog-archive has-sidebar">
            <div class="articles-wrapper">
                <article class="blog-single-content">
                    <div class="content">
                            '.$recRow->content.'
                                 <div class="divider20"></div>

                                <div class="gallery style-grid size-2-columns">
'.$imgs.'
                                      
                                </div>

                                <div class="divider50"></div>
                        </div>
                        </article>
                    </div>

                    <div class="sidebar">
                        <div class="comments">
                            <div class="comment_form">
                                <div class="comment-respond">
                                    <h3 class="comment-reply-title">Quick Enquiry</h3>

                                    <form action="enquery_mail.php" method="post" class="comment-form" id="comment__contact">
                                        <input type="hidden" name="offer_name" value="'.$recRow->slug.'">
                                        <input type="text" class="comment-form" placeholder="Name" name="author" autocomplete="off">

                                        <input type="email" class="comment-form" placeholder="Email" name="email" autocomplete="off">

                                        <input type="text" class="comment-form" placeholder="Contact No." name="contact" autocomplete="off">
                                        
                                        <input type="text" class="comment-form" placeholder="Address" name="address" autocomplete="off">
                                        
                                        <textarea name="comment" placeholder="Message" autocomplete="off"></textarea>
                                        <div id="result_msg"></div>

                                        <p class="form-submit">
                                            <input name="submit" type="submit" class="submit" id="submit" value="Submit">
                                        </p>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>';

              

    }
    else {
        redirect_to(BASE_URL);
    }    
}
else{ 
    
      $offbredd.=' <section class="page-header" style="background-image:url('.BASE_URL.'template/web/images/window.jpg);">
            <div class="title">
                <p>Our Story</p>
                <h1>Offer and Packages</h1>
            </div>
        </section>';


        
         $offList= Offers::find_all();
         foreach ($offList as $offer) {
   
             $currentdate = date("Y-m-d") ;
             if($offer->start_date <= $currentdate){
            //  pr($offer->offer_date);
            //  pr($currentdate);
             if($offer->offer_date < $currentdate ){
             $expired .='<div class="offer__expire position-absolute"><span>Expired</span></div>';
             }
             else{
             $expired .=''; 
             }
            //  pr($expired);
            $resinndetail.='<div class="column one-third animate__animated" data-animation-type="animate__fadeIn" data-animation-delay="0">
                <div class="image-box style-standard">
                    <div class="media">
                        <img src="'.IMAGE_PATH.'offers/listimage/'.$offer->list_image.'" alt="'.$offer->image.'">
                    </div>
                    <span class="title">'.$offer->title.'</span>
                    <div class="text txt_height">
                   '.$offer->brief.'
                    </div>
                    <a href="'.BASE_URL.'offer-details/'.$offer->slug.'" class="discover-more button medium outline black no-margin-right">Discover more</a>
                </div>
                '.$expired.'
            </div>';
         $expired='';
         }
         }
         $resinndetail.='</div>';
}


    // Rand offer
    $randRec = Offers::get_offer_rand();
    if(!empty($randRec)) {
        $file_path = SITE_ROOT.'images/offers/'.$randRec->image;
        if(file_exists($file_path) and !empty($randRec->image)) {
            $linkTarget = ($randRec->linktype == 1)? ' target="_blank" ' : ''; 
            $linksrc    = ($randRec->linktype != 1)? BASE_URL.$randRec->linksrc : $randRec->linksrc;
            $linkstart  = ($randRec->linksrc!='')? '<a href="'.$linksrc.'" '.$linkTarget.'>' : '<a href="javascript:void(0);">';
            $linkend    = ($randRec->linksrc!='')? '</a>' : '</a>' ;


            $resrandoffr.='<div class="section panel">
                <div class="item fade">
                    <div class="back" data-image="'.IMAGE_PATH.'offers/'.$randRec->image.'"></div>
                    <div class="panel-button">
                        <div class="button-container">
                            '.$linkstart.$randRec->title.$linkend.'
                            <span>Our Offer <i class="icon ion-ios-arrow-right"></i>
                        </div>
                    </div>
                </div>

            </div>';
        }
    }

if(defined('HOME_PAGE')) {
    
     if($offrRec) {
        $hmresoffr.='<div class="row" >';
                foreach($offrRec as $offrRow) {
                    $file_path = SITE_ROOT.'images/offers/'.$offrRow->image;
                    
                    if(file_exists($file_path) and !empty($offrRow->image)) {
                        $linkTarget = ($offrRow->linktype == 1)? ' target="_blank" ' : ''; 
                        $linksrc    = ($offrRow->linktype != 1)? BASE_URL.$offrRow->linksrc : $offrRow->linksrc;
                        $linkstart  = ($offrRow->linksrc!='')? '<a class="button" href="'.$linksrc.'" '.$linkTarget.'>' : '<a class="button" href="javascript:void(0);">';
                        $linkend    = ($offrRow->linksrc!='')? '</a>' : '</a>' ;

                        $hmresoffr.='
                        <div class="col-sm-3">
                            <div class="figure"><a href="'.BASE_URL.'offer/'.$offrRow->slug.'"><img src="'.IMAGE_PATH.'offers/'.$offrRow->image.'" alt="'.$offrRow->image.'"></a></div>
                            <div class="details">
                                <h3><a href="'.BASE_URL.'offer/'.$offrRow->slug.'">'.strip_tags($offrRow->title).'</h3>
                                <p>'.strip_tags($offrRow->brief).'</p>
                                
                            </div>
                            <div class="screen">
                                <div class="back" data-image="'.IMAGE_PATH.'offers/'.$offrRow->image.'"></div>
                            </div>
                        </div>';

                    }
                }

            $hmresoffr.='</div>';
    }  
    }
// 

$jVars['module:homeoffers-list'] = $hmresoffr;
$jVars['module:offers-details'] = $resinndetail;
$jVars['module:offer_breadcrum'] = $offbredd;
// $jVars['module:offer_breadcrum2'] = $offbredd22;
// $jVars['module:offer_detail'] = $offer_details;