<?php
$booking_code = Config::getField('hotel_code', true);


/*
* Home accmodation list
*/
$reshmpkg = '';
$imageList = '';

if (defined('HOME_PAGE')) {
    $acid = Package::get_accommodationId();
    $pkgRec = Package::find_by_id($acid);
    if (!empty($pkgRec)) {
        $subRec = Subpackage::getPackage_limit($acid);

        if (!empty($subRec)) {
            $imglink = '';
            $reshmpkg .= '';

            $reshmpkg .= "";
            foreach ($subRec as $subRow) {

                $features_of_rooms = '';
                if($subRow->class_room_style == 'best_deal'){
                    $features_of_rooms = '<div class="tags discount">Best Deal</div>';
                }
                elseif($subRow->class_room_style == 'featured_room'){
                    $features_of_rooms = '<div class="tags featured">Featured Room</div>';
                }

                $img123 = unserialize($subRow->image);

                if (!empty($subRow->image)) {

                    $imgpath = IMAGE_PATH . 'subpackage/' . $img123[0];
                } else {
                    $imgpath = IMAGE_PATH . 'static/inner-img.jpg';
                }
                $file_path = SITE_ROOT . 'images/subpackage/' . $img123[0];
                if (file_exists($file_path) and !empty($subRow->image)) {
                                $reshmpkg .= '
                           <!-- <div class="col-md-4 room-item wow fadeInUp" data-wow-delay=".4s">
                               <div class="inner">
                                   '. $features_of_rooms .'
                                   <img src="' . $imgpath . '" class="img-responsive" alt="' . $subRow->title . '">
                                   <h3>' . $subRow->title . '</h3>
                                   <div class="price_from">Start From <span>'. $subRow->currency .' ' . $subRow->onep_price . '++</span>/night</div>
                                   <div class="spacer-half"></div>
                                   <a href="' . BASE_URL . $subRow->slug . '" class="btn-detail">View Details</a>
                               </div>
                           </div> -->
                           <article class="swiper-slide">
                            <div class="inner">
                                <a href="' . BASE_URL . $subRow->slug . '">
                                    <div class="media">
                                        <div class="inner-media">
                                             <img src="' . $imgpath . '" class="img-responsive" alt="' . $subRow->title . '">
                                        </div>
                                    </div>

                                    <div class="text">
                                        <div class="room-price">
                                            <span class="current-price">$ ' . $subRow->onep_price . '<span> / night</span></span>
                                        </div>

                                        <span class="room-title">' . $subRow->title . '</span>

                                        <div class="room-details">
                                            <span><i class="icon-fi-maximize"></i>'.$subRow->room_size .'</span>
                                            <span><i class="icon-fi-bed-6"></i> '.$subRow->bed .'</span>
                                            <span><i class="icon-fi-group"></i>'.$subRow->occupancy .'</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </article>
                                ';
                            
                }
            }
            // $reshmpkg .= '';
        }
    }


}

$jVars['module:home-accommodation'] = $reshmpkg;





/*
* Home sub package list
*/
$newpkg = '';

if (defined('HOME_PAGE')) {
//$slug = !empty($_REQUEST['slug'])? addslashes($_REQUEST['slug']) : '';
//$pkgRec = Package::getPackage();
//if (!empty($pkgRec)) {

    /* foreach($pkgRec as $pkgRow) {
        $imglink = '';*/
    /* if ($pkgRow->banner_image != "a:0:{}") {
         $imageList = unserialize($pkgRow->banner_image);
         $file_path = SITE_ROOT . 'images/package/banner/' . $imageList[0];
         if (file_exists($file_path)) {
             $imglink = IMAGE_PATH . 'package/banner/' . $imageList[0];
         }
     } */
    // if(($pkgRow->type)==0) {
    $newpkg .= '<div class="col-sm-6">
                <div class="mosaic_container">
                     <a href="' . BASE_URL . 'page/about-us">
                    <img src="' . BASE_URL . 'template/web/img/mosaic_1.jpg" alt="image" class="img-responsive add_bottom_30"><span class="caption_2">Experience Peninsula</span>
                    </a>
                </div>
            </div>';
    //}else{
    $newpkg .= '<div class="col-sm-6">
         
         <div class="col-xs-12">
                    <div class="mosaic_container">
                        <a href="' . BASE_URL . 'services">
                        <img src="' . BASE_URL . 'template/web/img/mosaic_2.jpg" alt="image" class="img-responsive add_bottom_30"><span class="caption_2">Services & Faciities</span>
                        </a>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="mosaic_container">
                        <a href="' . BASE_URL . 'rooms">
                        <img src="' . BASE_URL . 'template/web/img/room.jpg" alt="rooms" class="img-responsive add_bottom_30"><span class="caption_2">
Accommodation</span>
                        </a>
                    </div>
                </div>
                  <div class="col-xs-6">
                     <a href="' . BASE_URL . 'dining">
                    <div class="mosaic_container">
                        <img src="' . BASE_URL . 'template/web/img/dining.jpg" alt="dining" class="img-responsive add_bottom_30"><span class="caption_2">Dining & Bar</span>
                    </div>
                    </a>
                </div>
                
                  </div>
                ';

    //}
    //}
//}
}
$jVars['module:newpkg'] = $newpkg;


/////
$reshplist = $pakagehometype = '';
$cnt = 1;
if (defined('HOME_PAGE')) {
    $pgkRows = Package::find_by_id(1);
    $pkgRec = Subpackage::getPackage_limits(1, 6);

    if (!empty($pkgRec)) {

        foreach ($pkgRec as $pkgRow) {
            //echo "<pre>";print_r($pkgRow);die();

            //if(!empty($pkgRow->image2)) {


            //echo "<pre>";print_r($reshplist);die();
            if (($cnt % 3) == 2) {
                $reshplist .= ' <div class="container margin_60">
        <div class="row">
            <div class="col-md-5 col-md-offset-1 col-md-push-5">
                  <figure class="room_pic left"><a href="' . BASE_URL . '' . $pkgRow->slug . '"><img src="' . IMAGE_PATH . 'subpackage/image/' . $pkgRow->image2 . '" alt="' . $pkgRow->title . '" class="img-responsive"></a><span class="wow zoomIn"><sup>' . $pkgRow->currency . ' </sup>' . $pkgRow->onep_price . '<small>Per night</small></span></figure>
            </div>
            <div class="col-md-4 col-md-offset-1 col-md-pull-6">
                <div class="room_desc_home">
                    <h3>' . $pkgRow->title . '</h3>
                    <p>
                         ' . $pkgRow->detail . ' 
                    </p>
                    <ul>';
                $saveRec = unserialize($pkgRow->feature);
                $count = 1;
                if ($saveRec != null) {
                    $featureList = $saveRec[120][1];
                    //echo "<pre>";print_r($featureList);die();
                    if (!empty($featureList)) {
                        $icoRec = '';

                        foreach ($featureList as $fetRow) {

                            $icoRec = Features::get_by_id($fetRow);
                            $reshplist .= '<li>
                            <div class="tooltip_styled tooltip-effect-4">
                                <span class="tooltip-item"><i class="' . $icoRec->icon . '"></i></span>
                                    <div class="tooltip-content">' . $icoRec->title . '</div>
                              </div>
                              </li>';


                            if ($count++ == 5) break;
                        }
                    }
                }
  
                $reshplist .= '</ul>
                    <a href="' . BASE_URL . '' . $pkgRow->slug . '" class="btn_1_outline">Read more</a>
                </div><!-- End room_desc_home -->
            </div>
        </div><!-- End row -->
    </div>';
            } else {
                $reshplist .= '  <div class="container_styled_1">
        <div class="container margin_60">
            <div class="row">
                <div class="col-md-5 col-md-offset-1">
                    <figure class="room_pic"><a href="' . BASE_URL . '' . $pkgRow->slug . '"><img src="' . IMAGE_PATH . 'subpackage/image/' . $pkgRow->image2 . '" alt="' . $pkgRow->title . ' " class="img-responsive"></a><span class="wow zoomIn"><sup>' . $pkgRow->currency . ' </sup>' . $pkgRow->onep_price . '<small>Per night</small></span></figure>
                </div>
                <div class="col-md-4 col-md-offset-1">
                    <div class="room_desc_home">
                        <h3>' . $pkgRow->title . '  </h3>
                        <p>
                            ' . $pkgRow->detail . '
                        </p>
                        <ul>';
                $saveRec = unserialize($pkgRow->feature);
                $count = 1;
                if ($saveRec != null) {
                    $featureList = $saveRec[120][1];
                    //echo "<pre>";print_r($featureList);die();

                    if (!empty($featureList)) {
                        $icoRec = '';

                        foreach ($featureList as $fetRow) {

                            $icoRec = Features::get_by_id($fetRow);
                            $reshplist .= '<li>
                            <div class="tooltip_styled tooltip-effect-4">
                                <span class="tooltip-item"><i class="' . $icoRec->icon . '"></i></span>
                                    <div class="tooltip-content">' . $icoRec->title . '</div>
                              </div>
                              </li>';


                            if ($count++ == 5) break;
                        }
                    }
                }
                $reshplist .= '</ul>
                        <a href="' . BASE_URL . '' . $pkgRow->slug . '" class="btn_1_outline">Read more</a>
                    </div><!-- End room_desc_home -->
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
    </div>';
            }
            $cnt++;
//}

        }
    }
    /* $reshplist.= '</div>
                 </div>
             </div>';*/
}

$jVars['module:home-packagelist'] = $reshplist;
$jVars['module:home-package-type-list'] = $pakagehometype;

$roomlist = $roombread = '';
$modalpopup='';
$room_package='';
if (defined('PACKAGE_PAGE') and isset($_REQUEST['slug'])) {

    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    
    $pkgRow = Package::find_by_slug($slug);
    if($pkgRow->type==1){
    
    $imglink = BASE_URL . 'template/web/images/bg/room-banner.jpg';
    $pkgRowImg = $pkgRow->banner_image;
    if ($pkgRowImg != "a:0:{}") {
        $pkgRowList = unserialize($pkgRowImg);
        $file_path = SITE_ROOT . 'images/package/banner/' . $pkgRowList[0];
        if (file_exists($file_path) and !empty($pkgRowList[0])) {
            $imglink = IMAGE_PATH . 'package/banner/' . $pkgRowList[0];
        }
    }

    $roombread .= '
    <!--================ Breadcrumb ================-->

           <section class="page-header" style="background-image:url('.$imglink.');">
            <div class="title">
                <p>'.$pkgRow->sub_title.'</p>
                <h1>'.$pkgRow->title .'</h1>
            </div>
        </section>
    
    <!--================ End of Breadcrumb ================-->

    ';

    $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '{$pkgRow->id}' ORDER BY sortorder DESC ";

    $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
    $limit = 200;
    $total = $db->num_rows($db->query($sql));
    $startpoint = ($page * $limit) - $limit;
    $sql .= " LIMIT " . $startpoint . "," . $limit;
    $query = $db->query($sql);
    $pkgRec = Subpackage::find_by_sql($sql);
    // pr($pkgRec);
    
    if (!empty($pkgRec)) {
        $roomlist .= '<section class="white-background">
            <div class="row space">
                <div class="column full">
                    <div class="section-wrapper-boxed">
                        <div class="rooms-grid style-big"> ';

        foreach ($pkgRec as $key => $subpkgRow) {
            $imageList = '';
            if ($subpkgRow->image != "a:0:{}") {
                $imageList = unserialize($subpkgRow->image);
            }


            $roomlist .= '
         <article class="animate__animated" data-animation-type="animate__fadeIn" data-animation-delay="0">
                                <div class="inner">
                                    <a href="'.BASE_URL . $subpkgRow->slug.'">
                                        <div class="media">
                                            <div class="inner-media">
                                              <img src="' . IMAGE_PATH . 'subpackage/' . $imageList[0] . '" alt="" />
                                            </div>
                                        </div>

                                        <div class="content-box">
                                            <div class="head">
                                                <div class="room-price">
                                                    <span class="current-price">$ ' . $subpkgRow->onep_price . ' <span>/ night</span></span>
                                                </div>
                                                <span class="room-title">'.$subpkgRow->title.'</span>

                                                <div class="room-details">
                                                    <span><i class="icon-fi-maximize"></i> '.$subpkgRow->room_size.'</span>
                                                    <span><i class="icon-fi-bed-6"></i>'.$subpkgRow->bed.'</span>
                                                    <span><i class="icon-fi-group"></i>'.$subpkgRow->occupancy.'</span>
                                                   
                                                </div>
                                            </div>

                                            <div class="text">
                                        '.$subpkgRow->detail.'
                                                <span class="explore">Explore</span>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </article>

            
                ';
        }
        // pr($subpkgRow);
        $roomlist .= '</div>
        </div>
    </div>
</div>
</section>';
        $jVars['module-room-lisiting'] = $roomlist;
        $room_package = '
                <!-- Rooms starts -->
                <div class="mad-content">
            <div class="container-fluid">
                <div class="mad-entities with-hover align-center type-3 item-col-3">
                       
                                '. $roomlist .'
                                </div>
                                </div>
                            </div>
                <!-- Room Ends -->';
    }
}
else{
    $imglink = BASE_URL . 'template/web/images/default.jpg';
    $pkgRowImg = $pkgRow->banner_image;
    if ($pkgRowImg != "a:0:{}") {
        $pkgRowList = unserialize($pkgRowImg);
        $file_path = SITE_ROOT . 'images/package/banner/' . $pkgRowList[0];
        if (file_exists($file_path) and !empty($pkgRowList[0])) {
            $imglink = IMAGE_PATH . 'package/banner/' . $pkgRowList[0];
        }
        else{
            $imglink = BASE_URL . 'template/web/images/default.jpg';
        }
    }

    $roombread .= '
    <!--================ Breadcrumb ================-->
    <div class="mad-breadcrumb with-bg-img with-overlay" data-bg-image-src="'.$imglink.'">
        <div class="container wide">
            <h1 class="mad-page-title">' . $pkgRow->title . '</h1>
            <nav class="mad-breadcrumb-path">
                <span><a href="index.html" class="mad-link">Home</a></span> /
                <span>' . $pkgRow->title . '</span>
            </nav>
        </div>
    </div>
    <!--================ End of Breadcrumb ================-->

    ';
    
    $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '{$pkgRow->id}' ORDER BY sortorder DESC ";

    $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
    $limit = 200;
    $total = $db->num_rows($db->query($sql));
    $startpoint = ($page * $limit) - $limit;
    $sql .= " LIMIT " . $startpoint . "," . $limit;
    $query = $db->query($sql);
    $pkgRec = Subpackage::find_by_sql($sql);
    
    // pr($pkgRec);
    
    if (!empty($pkgRec)) {
        
        $count = 1;
        
        
        $max_count = count($subpkgRec);

        foreach ($pkgRec as $key => $subpkgRow) {
            $gallRec = SubPackageImage::getImagelimit_by(3, $subpkgRow->id);
    $subpkg_caro = '';
    foreach ($gallRec as $row) {
                $file_path = SITE_ROOT.'images/package/galleryimages/'.$row->image;
                if(file_exists($file_path) and !empty($row->image)):

                               // $active=($count==0)?'active':'';
                    $subpkg_caro .= '
                    <div class="mad-owl-item">
                                        <img src="'.IMAGE_PATH.'package/galleryimages/'.$row->image.'" alt="'.$row->title.'" />
                                    </div>
                                ';

                endif;

            
            }
            
            $button= '';
            $modal='';
            $imageList = '';
            if ($subpkgRow->image != "a:0:{}") {
                $imageList = unserialize($subpkgRow->image);
            }
            if($pkgRow->id==11){
                $button='<a href="contact-us" class="btn">Book Now</a>';
                if(!empty($subpkgRow->below_content)){
                $modal='<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#'. $subpkgRow->slug .'">
                details
              </button>';
                }
                else{
                    $modal='';
                }
            }
            else{
                $button='<a href="#" class="btn">View Menu</a>';
            }
            
            if($subpkgRow->type==11){
                
                $modalpopup .='
        <div class="modal fade" id="'. $subpkgRow->slug .'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">'. $subpkgRow->title .' details</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            ' . $subpkgRow->below_content . '
            </div>
          </div>
        </div>
      </div>';
            if($count%2==1){
            $roomlist .= '
            <div class="mad-section mad-section--stretched mad-colorizer--scheme-color-4">
                    <div class="mad-entities style-3 type-4">
                        <!--================ Entity ================-->
                        <article class="mad-entity">
                            <div class="mad-entity-media">
                                <div class="owl-carousel mad-simple-slideshow mad-grid with-nav">
                                    '. $subpkg_caro .'
                                </div>
                            </div>

                            <div class="mad-entity-content">
                                <h2 class="mad-entity-title">'. $subpkgRow->title .'</h2>
                                <p>' . strip_tags($subpkgRow->content) . '</p>
                                <div class="mad-rest-info">
                                    <div class="mad-rest-info-item">
                                        <span class="mad-rest-title">Hall Amenities</span>
                                        <span>'. $subpkgRow->cocktail .'</span>
                                    </div>
                                    <div class="mad-rest-info-item">
                                        <span class="mad-rest-title">Size</span>
                                        <span>'.$subpkgRow->seats.'</span>
                                    </div>
                                </div>
                                '.$button.' '.$modal.'
                                </div>


                        </article>
                        <!--================ End of Entity ================-->
                    </div>
                </div>

                
                ';
                
            }
            else{
                $roomlist .='<div class="mad-section">
                <div class="mad-entities mad-entities-reverse type-4">
                    <!--================ Entity ================-->
                    <article class="mad-entity">
                        <div class="mad-entity-media">
                            <div class="owl-carousel mad-simple-slideshow mad-grid with-nav">
                            '. $subpkg_caro .'
                            </div>
                        </div>
                        <div class="mad-entity-content">
                            <h2 class="mad-entity-title">'. $subpkgRow->title .'</h2>
                            <p>' . strip_tags($subpkgRow->content) . '</p>
                            <div class="mad-rest-info">
                            <div class="mad-rest-info-item">
                            <span class="mad-rest-title">Hall Amenities</span>
                            <span>'. $subpkgRow->cocktail .'</span>
                        </div>
                        <div class="mad-rest-info-item">
                            <span class="mad-rest-title">Size</span>
                            <span>'.$subpkgRow->seats.'</span>
                        </div>
                            </div>
                            '.$button.' '.$modal.'
                        </div>

                    </article>
                    <!--================ End of Entity ================-->
                </div>
            </div>';
            }
            $count++; 

            
        }
        
        
        if($subpkgRow->type==12){
            if($count%2==1){
            $roomlist .= '
            <div class="mad-section mad-section--stretched mad-colorizer--scheme-color-4">
                    <div class="mad-entities style-3 type-4">
                        <!--================ Entity ================-->
                        <article class="mad-entity">
                            <div class="mad-entity-media">
                                <div class="owl-carousel mad-simple-slideshow mad-grid with-nav">
                                    '. $subpkg_caro .'
                                </div>
                            </div>

                            <div class="mad-entity-content">
                                <h2 class="mad-entity-title">'. $subpkgRow->title .'</h2>
                                <p>' . strip_tags($subpkgRow->content) . '</p>
                                <div class="mad-rest-info">
                                    <div class="mad-rest-info-item">
                                        <span class="mad-rest-title">Opening hours</span>
                                        <span>'. $subpkgRow->theatre_style .' <br />'. $subpkgRow->class_room_style .'</span>
                                    </div>
                                    <div class="mad-rest-info-item">
                                        <span class="mad-rest-title">Cuisine</span>
                                        <span>'.$subpkgRow->shape.'</span>
                                    </div>
                                    <div class="mad-rest-info-item">
                                        <span class="mad-rest-title">Dess Code</span>
                                        <span>'.$subpkgRow->round_table.'</span>
                                    </div>
                                </div>
                                '.$button.'
                                </div>
                        </article>
                        <!--================ End of Entity ================-->
                    </div>
                </div>

                
                ';
            }
            else{
                $roomlist .='<div class="mad-section">
                <div class="mad-entities mad-entities-reverse type-4">
                    <!--================ Entity ================-->
                    <article class="mad-entity">
                        <div class="mad-entity-media">
                            <div class="owl-carousel mad-simple-slideshow mad-grid with-nav">
                            '. $subpkg_caro .'
                            </div>
                        </div>
                        <div class="mad-entity-content">
                            <h2 class="mad-entity-title">'. $subpkgRow->title .'</h2>
                            <p>' . strip_tags($subpkgRow->content) . '</p>
                            <div class="mad-rest-info">
                                <div class="mad-rest-info-item">
                                    <span class="mad-rest-title">Opening hours</span>
                                    <span>'. $subpkgRow->theatre_style .'<br />'. $subpkgRow->class_room_style .' </span>
                                </div>
                                <div class="mad-rest-info-item">
                                    <span class="mad-rest-title">Cuisine</span>
                                    <span>'.$subpkgRow->shape.'</span>
                                </div>
                                <div class="mad-rest-info-item">
                                    <span class="mad-rest-title">Dess Code</span>
                                    <span>'.$subpkgRow->round_table.'</span>
                                </div>
                            </div>
                            '.$button.'
                        </div>

                    </article>
                    <!--================ End of Entity ================-->
                </div>
            </div>';
            }
            $count++; 

        }
        
    }
        $room_package = '
                <!-- Rooms starts -->
                <div class="mad-content no-pd">
            <div class="container">
                <div class="mad-section">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="mad-pre-title">M.I.C.E</div>
                            <h2 class="mad-page-title" style="font-size: 42px;line-height: 46px;">' . $pkgRow->sub_title . '</h2>
                        </div>
                        <div class="col-lg-7">
                            <p class="mad-text-medium">' . $pkgRow->content . '
                            </p>
                        </div>
                    </div>
                </div>
                                '. $roomlist .'
                            </div>
                        </div>
                    
                
                <!-- Room Ends -->';
    }
    
}
if($pkgRow->id >= 14){

    $room_package = '
                <!-- Rooms starts -->
                <div class="mad-content no-pd">
            <div class="container">
                <div class="mad-section">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="mad-pre-title">' . $pkgRow->title . '</div>
                            <h2 class="mad-page-title" style="font-size: 42px;line-height: 46px;">' . $pkgRow->sub_title . '</h2>
                        </div>
                        
                    </div>
                    <div class="col-lg-7">
                            <p class="mad-text-medium">' . $pkgRow->content . '
                            </p>
                        </div>
                </div>
                            </div>
                        </div>
                    
                
                <!-- Room Ends -->';
}
}


if (defined('HOME_PAGE')) {



    $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '1' ORDER BY sortorder DESC ";

    $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
    $limit = 200;
    $total = $db->num_rows($db->query($sql));
    $startpoint = ($page * $limit) - $limit;
    $sql .= " LIMIT " . $startpoint . "," . $limit;
    $query = $db->query($sql);
    $pkgRec = Subpackage::find_by_sql($sql);
    
    
    // pr($pkgRec);
    if (!empty($pkgRec)) {

        foreach ($pkgRec as $key => $subpkgRow) {
            $gallRec = SubPackageImage::getImagelist_by($subpkgRow->id);
            $imageList = '';
            $imagepath='';
                $imageList = $gallRec[0];
                    $file_path = SITE_ROOT.'images/package/galleryimages/'.$imageList->image;
                    if(file_exists($file_path) and !empty($imageList)):
                        
                        $imagepath = IMAGE_PATH.'package/galleryimages/'.$imageList->image;
                        
                        
                    endif;
// pr($imagepath);

            $roomlist .= '
            <div class="mad-col">
                                <div class="mad-section with-overlay mad-colorizer--scheme-" data-bg-image-src="' . $imagepath . '" alt="' . $subpkgRow->title . '">
                                    <!--================ Entity ================-->
                                    <article class="mad-entity">
                                        <h3 class="mad-entity-title">'. $subpkgRow->title .'</h3>
                                        <p>
                                        ' . strip_tags($subpkgRow->detail) . '
                                        </p>
                                        <div class="btn-set justify-content-center">
                                            <a href="'.BASE_URL.'result.php?hotel_code='. $booking_code .'" class="btn btn-big" target="_blank">Book Now</a>
                                            <a href="' . BASE_URL . $subpkgRow->slug . '" class="btn btn-big style-2">Details</a>
                                        </div>
                                    </article>
                                    <!--================ End of Entity ================-->
                                </div>
                            </div>

                
                ';

        }
        $room_package = '
        <div class="mad-section no-pb mad-section--stretched-content-no-px mad-colorizer--scheme-color-">
        <div class="mad-title-wrap align-center">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="mad-pre-title">accommodation</div>
                    <h2 class="mad-page-title">Rooms & Suites</h2>
                    <p class="mad-text-medium">The hotel offers 68 rooms: Standard, Deluxe, Deluxe premium & Junior suite. The highlight of all the rooms are the spacious private balcony where guests can enjoy the most breathtaking views from the comforts of their own room.</p>
                </div>
            </div>
        </div>

        <div class="mad-section no-pd mad-section--stretched-content-no-px mad-colorizer--scheme-">
            <div class="mad-entities single-entity style-2 mad-grid owl-carousel mad-grid--cols-1 mad-owl-moving nav-size-2 no-dots">
                                '. $roomlist .'
                                </div>
                                </div>
                            </div>';
    }
}


$jVars['module:list-modalpop-up'] = $modalpopup;
$jVars['module:list-package-room'] = $room_package;
$jVars['module:list-package-room-bred'] = $roombread;


/**
 *      Package Record
 */
$resubpkgDetail = $resubpkgbann = $bcont = '';

if (defined('SUBPACKAGE_PAGE') and isset($_REQUEST['slug'])) {

    $id = !empty($_REQUEST['id']) ? addslashes($_REQUEST['id']) : '';
    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    $subpkgRec = Subpackage::find_by_slug($slug);
    $pkgRec = Package::find_by_id($subpkgRec->type);
    //echo "<pre>";print_r($slug);die();
    $gallRec = SubPackageImage::getImagelist_by($subpkgRec->id);
    $otherPacs = Subpackage::get_relatedpkg($subpkgRec->type, $subpkgRec->id, 12);


    $pgkRow = Package::find_by_id();
    if (!empty($subpkgRec)) {
        //$resubpkgbann.='';
        foreach ($gallRec as $row) {
            $file_path = SITE_ROOT . 'images/package/galleryimages/' . $row->image;
            if (file_exists($file_path) and !empty($row->image)):
                $resubpkgbann .= ' 
                    <div>
                        <img src="' . IMAGE_PATH . 'package/galleryimages/' . $row->image . '" alt="' . $row->title . '">
                        <div class="caption cpation_room">
                        <h3>
                            <ul>
                                <li><a href="' . BASE_URL . 'home">Home</a></li>
                                <li><a href="' . BASE_URL . $pkgRec->slug . '">' . $pkgRec->title . '</a></li>
                                <li>' . $subpkgRec->title . '</li>
                            </ul>
                        </h3>
                        </div>
                    </div>';
            endif;
        }
        $pkgType = Package::field_by_id($subpkgRec->type, 'type');
        /* if(!empty($pkgType)) {
                         */
        $subpkgImg = $subpkgRec->image;
        if ($pkgType == 1) {

            $resubpkgDetail .= '  <div class="column one-third last no-margin-bottom">
                                    <div class="divider30 show-on-mobile"></div>
                                    <h3>Amenities</h3>';
            $saveRec = unserialize($subpkgRec->feature);
            $count = 1;
            if ($saveRec != null) {
                $featureList = $saveRec[120][1];
                if ($featureList) {


                    foreach ($featureList as $fetRow) {

                        $icoRec = Features::get_by_id($fetRow);

                        if (!empty($icoRec->icon)) {
                            $resubpkgDetail .= '<div class="icon-box style-small">
                            <i class="' . $icoRec->icon . '"></i>
                            <span class="label">' . $icoRec->title . '</span> </div>';
                        } 
                        else {
                            $resubpkgDetail .= '<img src="' . IMAGE_PATH . 'features/' . $icoRec->image . '" style=" width: 25px; height: 25px;margin-right:7px;" alt="' . $icoRec->title . '">
                            <span class="label">' . $icoRec->title . '</span>';
                        }

                    }

                }
            }
            $resubpkgDetail .= ' </div>';
        }


    }
}

$jVars['module:form-controll'] = $bcont;
$jVars['module:sub-package-banner'] = $resubpkgbann;
$jVars['module:sub-package-detail'] = $resubpkgDetail;










/*
* Sub package 
*/
$resubpkgDetail = '';
$subimg = '';
$imageList = '';

if (defined('SUBPACKAGE_PAGE') and isset($_REQUEST['slug'])) {
    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    $subpkgRec = Subpackage::find_by_slug($slug);
    
     $gallRec = SubPackageImage::getImagelist_by($subpkgRec->id);
     $booking_code = Config::getField('hotel_code', true);
    if (!empty($subpkgRec)) {
        
        if ($subpkgRec->type == 1) {
            $relPacs = Subpackage::get_relatedpkg(1, $subpkgRec->id, 12);
            $imglink = '';
            if (!empty($subpkgRec->image2)) {
                $file_path = SITE_ROOT . 'images/subpackage/image/' . $subpkgRec->image2;
                if (file_exists($file_path)) {
                    $imglink = IMAGE_PATH . 'subpackage/image/' . $subpkgRec->image2;
                } else {
                    $imglink = IMAGE_PATH . 'static/default-art-pac-sub.jpg';
                }
            } else {
                $imglink = IMAGE_PATH . 'static/default-art-pac-sub.jpg';
            }
            
            $pkgRec = Package::find_by_id($subpkgRec->type);
            $subpkg_carousel = '';
            foreach ($gallRec as $row) {
                $file_path = SITE_ROOT.'images/package/galleryimages/'.$row->image;
                if(file_exists($file_path) and !empty($row->image)):

                    $subpkg_carousel .= '
                    <!-- <div class="mad-col"><img src="'.IMAGE_PATH.'package/galleryimages/'.$row->image.'" alt="'.$row->title.'" /></div> -->
                         <img src="'.$imglink.'" alt="'.$row->title.'"  alt="">      
                                ';
                endif;

            }

            $resubpkgDetail .= '

                <main class="room-single">
                    <div class="room-header">
                        <div class="bg">
                            <img src="'.$imglink.'" alt="'.$subpkgRec->title.'">
                        </div>

                        <div class="wrapper">
                            <div class="info">
                                <span class="room-title margin_btm_0">'.$subpkgRec->title.'</span>
                                <div class="room-details hide_on_xs_device">
                                    <p>
                                        <span class="label">Size</span>
                                        <span class="content">'.$subpkgRec->room_size.'</span>
                                    </p>
                                    
                                    <p>
                                        <span class="label">Guests</span>
                                        <span class="content">'.$subpkgRec->occupancy.'</span>
                                    </p>

                                    <p>
                                        <span class="label">Bed</span>
                                        <span class="content">'.$subpkgRec->bed.'</span>
                                    </p>
                                </div>
                            </div>

                            <div class="room-price">
                                <span class="content">Starting</span><span class="current-price"> $ '.$subpkgRec->onep_price.' <span>/ night</span></span>
                            </div>
                        </div>
                    </div>

                    <div class="room-content">
                        <div class="section-wrapper-boxed">
                                  <!-- Room details -->
                                  <div class="display_on_mobile">
                                  <table class="room_detail_style">
                                <tr>
                                <th>Size :</th>
                                <td>'.$subpkgRec->room_size.'</td>
                                </tr>
                                <tr>
                                <th>Guests :</th>
                                <td>'.$subpkgRec->occupancy.'</td>
                                </tr>
                                <tr>
                                <th>Bed  :</th>
                                <td>'.$subpkgRec->bed.'</td>
                                </tr>
                                  </table>
                                  </div>
                    <!-- Room details end-->
                            <div class="row space">
                                <!-- content-->
                                '. $subpkgRec->content .'
                                <!-- content end -->
                                <div class="divider30 show-on-mobile"></div>
                                <h3>Amenities</h3>
                                <div class="column one-third last no-margin-bottom features_flex">
            ';
            $saveRec = unserialize($subpkgRec->feature);
            
            $count = 1;
            if ($saveRec != null) {
                $featureList = $saveRec[120][1];
                if ($featureList) {
                    foreach ($featureList as $fetRow) {
                        $icoRec = Features::get_by_id($fetRow);
                        if (!empty($icoRec->icon)) {
                            $resubpkgDetail .= '<div class="icon-box style-small">
                            <i class="' . $icoRec->icon . '"></i>
                            <span class="label">' . $icoRec->title . '</span> </div>';
                        } 
                        else {
                            $resubpkgDetail .= '<img src="' . IMAGE_PATH . 'features/' . $icoRec->image . '" style=" width: 25px; height: 25px;margin-right:7px;" alt="' . $icoRec->title . '">
                            <span class="label">' . $icoRec->title . '</span>';
                        }
                    }
                }
            }

            $resubpkgDetail .= '
                                    </div>
                                </div>

                                <div class="column full last no-margin-bottom">

                                    <div class="divider30 show-on-mobile"></div>

                                    <div class="gallery style-grid size-3-columns column_2_rooms">
            ';

            foreach ($gallRec as $row) {
                $file_path = SITE_ROOT.'images/package/galleryimages/'.$row->image;
                if(file_exists($file_path) and !empty($row->image)):
                    $resubpkgDetail .= '
                        <a href="'.IMAGE_PATH.'package/galleryimages/'.$row->image.'"><img src="'.IMAGE_PATH.'package/galleryimages/'.$row->image.'" alt="'.$row->title.'"></a>
                    ';
                endif;
            }
            
            $booking_code = $siteRegulars->hotel_code;
            $booking_link = BASE_URL.'result.php?hotel_code='.$booking_code;
            if(!empty($subpkgRec->rojai_room_id)){
                $booking_link.='&room_id='.$subpkgRec->rojai_room_id;}

            $resubpkgDetail .= '

                                    </div>
                                </div>

                            </div>
                            <div class="btn__rooms">
                            <a href="'.$booking_link.'" class="button large standard accent no-margin-right" target="_blank">Book Now</a>
                        </div>
                        </div>
                    </div>

            ';
            // $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($subpkgRec->content));



        $otherroom='';
        $rooms = Subpackage::get_relatedsub_by($subpkgRec->type,$subpkgRec->id);
            
				
        if(!empty($rooms)){
        
            
            foreach($rooms as $room){

                if (!empty($room->image)) {
                    $img123 = unserialize($room->image);
                    
                    if (file_exists($file_path) && !empty($img123[0])) {
                        $imglink = IMAGE_PATH . 'subpackage/' . $img123[0];
                        $file_path = SITE_ROOT . 'images/subpackage/' . $img123[0];
                    } else {
                        $imglink = IMAGE_PATH . 'static/static.jpg';
                    }
                } else {
                    $imglink = IMAGE_PATH . 'static/static.jpg';
                }

                      
                $otherroom .='
                <article class="animate__animated" data-animation-type="animate__fadeIn" data-animation-delay="0">
                    <div class="inner">
                        <a href="'.BASE_URL.$room->slug.'">
                            <div class="media">
                                <div class="inner-media">
                                    <img src="'.$imglink.'" alt="">
                                </div>
                            </div>

                            <div class="room-price">
                                 <span class="content">Starting</span><span class="current-price"> $ '.$room->onep_price.' <span>/ night</span></span>
                            </div>

                            <div class="text">

                                <span class="room-title">'.$room->title.'</span>

                                <div class="room-details hide_on_device">
                                    <span><i class="icon-fi-maximize"></i>'.$room->room_size.'</span>
                                    <span><i class="icon-fi-bed-6"></i>'.$room->bed.'</span>
                                    <span><i class="icon-fi-group"></i>'.$room->occupancy.'</span>
                                   <!-- <span><i class="icon-fi-bathtub-1"></i>'.$room->view.'</span>-->
                                </div>
                            </div>
                        </a>
                    </div>
                </article>
        
			';
            
        }    
        //$otherroom.='';
                $resubpkgDetail .= '
                        <div class="similar-rooms grey-background">
                            <div class="section-wrapper-boxed">
                                <h2>Similar Rooms</h2>
                                <div class="divider20"></div>
                                <div class="rooms-grid style-standard bold">
                                    '.$otherroom.'
                                </div>
                            </div>
                        </div>
                    </main>
                ';  
            }




           
        }

        /********For service inner page ***************/
        else {
                $relPacs = Subpackage::get_relatedpkg(1, $subpkgRec->id, 12);
                $imglink = '';
                if (!empty($subpkgRec->image2)) {
                    $file_path = SITE_ROOT . 'images/subpackage/image/' . $subpkgRec->image2;
                    if (file_exists($file_path)) {
                        $imglink = IMAGE_PATH . 'subpackage/image/' . $subpkgRec->image2;
                    } else {
                        $imglink = IMAGE_PATH . 'static/default.jpg';
                    }
                } else {
                    $imglink = IMAGE_PATH . 'static/default.jpg';
                }
                
                
    
                    
                        $resubpkgDetail .= '
                        <!--================ Breadcrumb ================-->
        <!-- <div class="mad-breadcrumb with-bg-img with-overlay" data-bg-image-src="' . $imglink . '">
            <div class="container wide">
                <h1 class="mad-page-title">' . $subpkgRec->title . '</h1>
                <nav class="mad-breadcrumb-path">
                    <span><a href="home" class="mad-link">Home</a></span> /
                    <span>' . $subpkgRec->title . '</span>
                </nav>
            </div>
        </div> -->
 
        <!--================ End of Breadcrumb ================-->
                                                
                                        ';

                        
                            $resubpkgDetail .= '
                            <div class="mad-content no-pd">
            <div class="container">
                <div class="mad-section">
                    <div class="mad-entities mad-entities-reverse type-4">
                                '. $subpkgRec->content .'
                                </div>
                </div>
            </div>
        </div>';
                            $resubpkgDetail .= $subpkgRec->below_content;
                        

                        $resubpkgDetail .='';


                        
        }




    }
}


$jVars['module:sub-package-detail'] = $resubpkgDetail;


/**********        For What;s nearby from package **************/
$resubpkgDetail = '';
$relPacs = Subpackage::get_relatedpkg(10, 0, 12);

                foreach($relPacs as $relPac){
                   
                        $imglink = '';
                        if (!empty($relPac->image)) {
                            $img123 = unserialize($relPac->image);
                            $file_path = SITE_ROOT . 'images/subpackage/' . $img123[0];
                            if (file_exists($file_path)) {
                                $imglink = IMAGE_PATH . 'subpackage/' . $img123[0];
                            } else {
                                $imglink = IMAGE_PATH . 'static/default-art-pac-sub.jpg';
                            }
                        } else {
                            $imglink = IMAGE_PATH . 'static/default-art-pac-sub.jpg';
                        }
                        $resubpkgDetail .= '

                                            <div class="col-lg-3 col-md-6">
                                                <div class="top-hotels-ii">
                                                    <img src="'. $imglink .'" alt=" '. $relPac->title .'"/>
                                                    '. $relPac->content .'
                                                    <div class="pp-details yellow">
                                                        <span class="pull-left">More Info</span>
                                                        <span class="pp-tour-ar">
                                                                <a href="javascript:void(0)"><i class="fa fa-angle-right pad-0"></i></a>
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                        ';

                        

                }

$whats_nearby = '
            <section class="top-hotel">
                <div class="container-xxl px-5">
                    <div class="top-title">
                        <div class="row display-flex">
                            <div class="col-lg-8 mx-auto text-center">
                                <h2>What\'s <span>Nearby</span></h2>
                                <p class="mar-0">
                                    We are located at the heart of Lalitpur. Major shopping outlets, Patan Durbar Square, Hospitals, Banks, UN office, Government offices, etc are
                                    within walking distance.
                                </p>
                            </div>
                        </div>
                    </div>
                    <!--Gallery Section-->
                    <div class="row activities-slider">
                        '. $resubpkgDetail .'
                    </div>
                </div>
            </section>';

// pr($whats_nearby);
$jVars['module:whats-nearby'] = $whats_nearby;

                    
                        
                        



