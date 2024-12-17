<?php
$nearbydetail = $nearbydetail_modals= $imageList = $nearbybred = $nearimg= '';

if (defined('HOME_PAGE')) {
    $recRows = Nearby::find_all_active();
    // pr($recRow);
    if (!empty($recRows)) {


        foreach($recRows as $recRow){

            $imglink = BASE_URL . 'template/web/img/slider/2.jpg';
            if ($recRow->image != "a:0:{}") {
                $imageList = unserialize($recRow->image);
                $imgno = array_rand($imageList);
                $file_path = SITE_ROOT . 'images/nearby/' . $imageList[$imgno];
                if (file_exists($file_path)) {
                    $imglink = IMAGE_PATH . 'nearby/' . $imageList[$imgno];
                }
            }
$nearimg .= ' <img data-room-id="'.$recRow->id.'" src="'. $imglink.'" alt="">';


            $nearbydetail .= '
         <article class="swiper-slide " data-room-id="'.$recRow->id.'">
    <div class="inner">
        <div class="text">
            <span class="room-title nearby-title">'.$recRow->title.'</span>
            <div class="room-details distance_location">
<p>'.$recRow->distance.'</p>
<div class="near_by_content">
 ' . $recRow->content . '</div>
 <div class="google__map_link">
 <a href= "'.$recRow->maplink.'" target= "_blank">Get Direction</a>
 </div>
            </div>
        </div>
    </div>
</article>
            ';

        } 
    }
}

$jVars['module:nearrby-img'] = $nearimg;
$jVars['module:inner-nearrby-detail'] = $nearbydetail;




?>