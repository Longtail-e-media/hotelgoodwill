<?php
$reslgall = '';

$gallRec = Gallery::getParentgallery(2);
if (!empty($gallRec)) {
foreach ($gallRec as $gallRow) {
$childRec = GalleryImage::getGalleryImages($gallRow->id);
if (!empty($childRec)) {
$reslgall .= '';
foreach ($childRec as $childRow) {
$file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $childRow->image;
if (file_exists($file_path) and !empty($childRow->image)) {
    $reslgall .= '
                <div class="gallery-image">
                    <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $childRow->image . '" alt="' . $childRow->title . '">
                </div>
                    ';
}
}
$reslgall .= '';
}
}
}

$res_gallery = '
                <!-- Gallery starts -->
                <section class="content gallery gallery1">
                    <div class="container">
                        <div class="section-title title-white">
                            <h2>Beautiful View of <span>Shangrila Blu</span></h2>
                            <p class="mar-bottom-30">Few collection of our pictures. We are quiet sure that you will find it more beautiful once you physically visit us.</p>
                        </div>
                    </div>
                    <div class="gallery-main gallery-slider">
                        '. $reslgall .'
                    </div>
                </section>
                <!-- Gallery Ends -->';

$jVars['module:galleryHome'] = $res_gallery;



$dininggallery = '';
$galldining = GalleryImage::getImagelist_by(19, 3);
if (!empty($galldining)) {
    $dininggallery .= '<div class="row about">
                     <div class="demo-gallery">
    		     <div id="lightgallery" class="list-unstyled">';
    foreach ($galldining as $row) {
        $dininggallery .= '<div class="item col-sm-4 col-xs-12" data-responsive="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '" data-src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '" data-sub-html="<h4>' . $row->title . '</h4>">
                        <a href="">
                            <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '"/>
                        </a>
                    </div>';
    }
    $dininggallery .= '</div>
    </div>
    </div>';
}
$jVars['module:dining-gallery'] = $dininggallery;

$gallerybread='';
$siteRegulars = Config::find_by_id(1);
$imglink= $siteRegulars->gallery_upload ;
if(!empty($imglink)){
    $img= IMAGE_PATH . 'preference/gallery/' . $siteRegulars->gallery_upload ;
}
else{
    $img='';
}

$gallerybread='
        <section class="page-header" style="background-image:url('.$img.');">
            <div class="title">
                <h1>Gallery</h1>
            </div>
        </section>';

$jVars['module:gallery-bread'] = $gallerybread;

/**
 *      Main Gallery
 */
$thegal = $gallerylistbread = $thegalnav= '';
$gallRectit = Gallery::getParentgallery();


if ($gallRectit) {
    $thegal .= '';
    foreach ($gallRectit as $row) {
        $thegalnav .= '
        <li class="col-md" data-class="' . $row->id . '">' . $row->title . '</li>';
    }
    $thegal .= '';

    // $thegal .= '
    //     <div id="gallery" class="gallery full-gallery de-gallery gallery-3-cols">
    // ';
    foreach ($gallRectit as $row) {

        $gallRec = GalleryImage::getGalleryImages($row->id);
       
        foreach ($gallRec as $row1) {
            // pr($row1);

            $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $row1->image;
            if (file_exists($file_path) and !empty($row1->image)):
                $thegal .= ' 
                <!--    <div class="col-md-4 images" data-class="' . $row1->galleryid . '" data-src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '" style="display: block;">
                        <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '" alt="' . $row1->galleryid . ' ">
                    </div> -->
                       <article class="swiper-slide">
                                        <div class="media">
                                            <div class="inner-media">
                                                <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '" alt="' . $row1->galleryid . ' " alt="">
                                            </div>
                                        </div>
                                </article>
                   
                ';
            endif;
        }
    }
    $thegal .= '';

}
$jVars['module:gallery-list'] = $thegal;
$jVars['module:gallery-nav'] = $thegalnav;
