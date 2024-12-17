<?php
$resinndetail = $imageList = $innerbred = $t = '';
$homearticle = Article::find_by_id(22);
if (!empty($homearticle)) {
    if ($homearticle->image != "a:0:{}") {
        $imageList = unserialize($homearticle->image);
        $imgno = array_rand($imageList);
        $file_path = SITE_ROOT . 'images/articles/' . $imageList[$imgno];
        if (file_exists($file_path)) {
            $imglink = IMAGE_PATH . 'articles/' . $imageList[$imgno];
        } else {
            $imglink = BASE_URL . 'template/web/img/mosaic_2.jpg';
        }
    } else {
        $imglink = BASE_URL . 'template/cms/img/mosaic_2.jpg';
    }
    $t .= ' <div class="col-xs-12">
                     <a href="' . BASE_URL . 'page/' . $homearticle->slug . '">
                    <div class="mosaic_container">
                        <img src="' . $imglink . '" alt="' . $homearticle->title . '" class="img-responsive add_bottom_30"><span class="caption_2"> ' . $homearticle->title . '</span>
                    </div>
                    </a>
                </div>';


}

$jVars['module:aboutarticle'] = $t;

/**
 *      Home page
 */
$resinnh = '';

if (defined('HOME_PAGE')) {
    $recInn = Article::homepageArticle();
    if (!empty($recInn)) {
        foreach ($recInn as $innRow) {
            $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($innRow->content));
            $readmore = '';
            if (!empty($innRow->linksrc)) {
                $linkTarget = ($innRow->linktype == 1) ? ' target="_blank" ' : '';
                $linksrc = ($innRow->linktype == 1) ? $innRow->linksrc : BASE_URL . $innRow->linksrc;
                $readmore = '<a href="' . $linksrc . '" title="">see more</a>';
            } else {
                $readmore = (count($content) > 1) ? '<a href="' . BASE_URL . 'page/' . $innRow->slug . '" title="">Read more...</a>' : '';
            }
            $resinnh .= '<h1 class="main_title"><em></em>' . $innRow->title . '<!--  <span>Hotel and Bed&amp;Breakfast</span> --></h1>
        <p class="lead styled">
            ' . $innRow->content . '
        </p>';
        }
    }

}

$jVars['module:home-article'] = $resinnh;

/**
 *      Inner page detail
 */

$aboutdetail = $imageList = $aboutbred = $servicess='';

if (defined('INNER_PAGE') and isset($_REQUEST['slug'])) {
    $slug = addslashes($_REQUEST['slug']);
    $recRow = Article::find_by_slug($slug);

    if (!empty($recRow)) {

        $imglink = BASE_URL . 'template/web/images/default.jpg';
        if ($recRow->image != "a:0:{}") {
            $imageList = unserialize($recRow->image);
            $imgno = array_rand($imageList);
            $file_path = SITE_ROOT . 'images/articles/' . $imageList[$imgno];
            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'articles/' . $imageList[$imgno];
            }
            else{
                $imglink = BASE_URL . 'template/web/images/default.jpg';
            }
        }
        
        $innerbred .= '
        <!--================ Breadcrumb ================-->
        <!-- <div class="mad-breadcrumb with-bg-img with-overlay" data-bg-image-src="' . $imglink . '">
            <div class="container wide">
                <h1 class="mad-page-title">' . $recRow->title . '</h1>
                <nav class="mad-breadcrumb-path">
                    <span><a href="home" class="mad-link">Home</a></span> /
                    <span>' . $recRow->title . '</span>
		                    </nav>
            </div>
        </div> -->
        <section class="page-header" style="background-image:url(' . $imglink . ');">
            <div class="title">
                <p>' . $recRow->sub_title . '</p>
                <h1>' . $recRow->title . '</h1>
            </div>
        </section>
        <!--================ End of Breadcrumb ================-->
        ';
        $rescontent = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($recRow->content));
        $content = !empty($rescontent[1]) ? $rescontent[1] : $rescontent[0];
        // pr($rescontent,1);
if($recRow->id==16){
        $aboutdetail .= 
        
                    '<section>
                        <div class="section-wrapper-boxed">
                            <div class="row space">
                                <div class="column full textcenter dine">
                                    '.$rescontent[0].'
                                    <div class="divider40 hide-on-mobile"></div>';
                                    if ($recRow->multiimage != "a:0:{}") {
                                    $aboutdetail .=' <div class="carousel-slider testimonials-slider animate__animated"
                                        data-allow-mousewheel="false" data-animation-type="animate__fadeInUp" data-animation-delay="100">
                                        <div class="swiper-container" id="testimonials-slider-1">
                                            <div class="swiper-wrapper">';
                                                $imgRec = unserialize($recRow->multiimage);
                                                foreach( $imgRec as $img){
                                                $file_path = SITE_ROOT.'images/articles/slider/'.$img;
                                                if(file_exists($file_path)){
                                                $aboutdetail .='<article class="swiper-slide">
                                                    <img src="'.IMAGE_PATH.'articles/slider/'.$img.'" alt="'.$recRow->title.'">
                                                </article> ';
                    
                                                }
                                                }
                                                $aboutdetail .='
                                            </div>
                    
                                            <!-- Add Pagination -->
                                            <div class="swiper-pagination"></div>
                                            <div class="swiper-button-next"></div>
                                            <div class="swiper-button-prev"></div>
                    
                                        </div>
                                    </div>
                               
                                ';
                                }
                    
                                $aboutdetail .='
                                '.$rescontent[1].'
                                <div class="divider110"></div>
                               
                                <div class="row no-space about_us_services">
                                    ';
                                    $aboutdetail .='
                                    <jcms:module:inner-about-detail-services/>
                                </div>
                            </div>
                        </div>
                    </section>
                  ';
                }else{
                    if($recRow->id==17 OR $recRow->id==18 ){
                    $aboutdetail .= 
                    '<section>
                    <div class="section-wrapper-boxed">
                    <div class="row space">
                <div class="column full textcenter dine">'.$rescontent[0].' 
                      <div class="divider40 hide-on-mobile"></div>';
                      if ($recRow->multiimage != "a:0:{}") {
                        $aboutdetail .=' <div class="carousel-slider testimonials-slider animate__animated" data-allow-mousewheel="false" data-animation-type="animate__fadeInUp" data-animation-delay="100">
                        <div class="swiper-container" id="testimonials-slider-1">
                            <div class="swiper-wrapper">';
                            $imgRec = unserialize($recRow->multiimage);
                            foreach( $imgRec as $img){
                                $file_path = SITE_ROOT.'images/articles/slider/'.$img;
                                if(file_exists($file_path)){
                                    $aboutdetail .='<article class="swiper-slide">
                                    <img src="'.IMAGE_PATH.'articles/slider/'.$img.'" alt="'.$recRow->title.'">
                                </article> ';

                                }
                            }
                            $aboutdetail .='
                            </div>
                            
                            <!-- Add Pagination -->
                            <div class="swiper-pagination"></div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                            <!-- <p class="swiper-nav-prev">Prev</p>
                            <p class="swiper-nav-next">Next</p>-->
                        </div>
                    </div>';
                      }
                       
                          $aboutdetail .='

                        <!--<img class="animate__animated" data-animation-type="animate__fadeIn" data-animation-delay="100" src="images/about/about_02.jpg" alt="">-->

                    '.$rescontent[1].'
             </div>
             </div>
                    ';
                }else{
                     $aboutdetail .='<section><div class="section-wrapper-boxed">
                    '.$rescontent[0].'
                    </div></section>';  
                }
    }
                   
    } else {
        redirect_to(BASE_URL);
    }
}

$jVars['module:inner-about-detail'] = $aboutdetail;
$jVars['module:inner-about-detail-services'] = $servicess;

$jVars['module:inner-about-bread'] = $innerbred;

$restyp = '';

$typRow = Article::get_by_type();
if (!empty($typRow)) {
    $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($typRow->content));
    $readmore = '';
    if (!empty($typRow->linksrc)) {
        $linkTarget = ($typRow->linktype == 1) ? ' target="_blank" ' : '';
        $linksrc = ($typRow->linktype == 1) ? $typRow->linksrc : BASE_URL . $typRow->linksrc;
        $readmore = '<a class="text-link link-direct" href="' . $linksrc . '">see more</a>';
    } else {
        $readmore = (count($content) > 1) ? '<a href="' . BASE_URL . $typRow->slug . '">Read more...</a>' : '';
    }
    $restyp .= '<h3 class="h3 header-sidebar">' . $typRow->title . '</h3>
	<div class="home-content">
		' . $content[0] . ' ' . $readmore . '
	</div>';

}

$jVars['module:article_by_type'] = $restyp;



/*
    Why Choose Us
*/
$resinnh2 = '';

if (defined('HOME_PAGE')) {

    $resinnh2 = '';

// pr($resinnh2);
    $recInn2 = Article::find_by_id(11);
    // pr($recInn2);
    if (!empty($recInn2)) {
            $resinnh2 .= $recInn2->content;

        
    }

}
$jVars['module:homearticle'] = $resinnh2;


// 2nd article of homepage
$home_pagecontent = '';

if (defined('HOME_PAGE')) {

    $home_pagecontent = '';

// pr($home_pagecontent);
    $recInne2 = Article::find_by_id(19);
    // pr($recInne2);
    if (!empty($recInne2)) {
            $home_pagecontent .= $recInne2->content;

        
    }

}
$jVars['module:home_page_2'] = $home_pagecontent;
// 2nd article of homepage end


/*
    HomePage Facilities
*/
$resinnh1 = '';

if (defined('HOME_PAGE')) {

    $resinnh1 .= '';


    $recInn1 = Article::find_by_id();

    if (!empty($recInn1)) {

            $resinnh1 .= $recInn1->content;

        
    }

}

$jVars['module:home_facilities'] = $resinnh1;

?>