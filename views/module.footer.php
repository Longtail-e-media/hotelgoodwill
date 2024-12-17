<?php
$siteRegulars = Config::find_by_id(1);
$lastElement='';
$phonelinked='';
$emaillinked = '';
$whatsapp='';
$tellinked = '';
    $telno = explode("/", $siteRegulars->contact_info);
    $lastElement = array_shift($telno);
    $tellinked .= '<a href="tel:' . $lastElement . '" target="_blank">' . $lastElement . '</a>/';
    foreach ($telno as $tel) {
        
        $tellinked .= '<a href="tel:+977-' . $tel . '" target="_blank">' . $tel . '</a>';
        if(end($telno)!= $tel){
        $tellinked .= '/';
        }   
}
$phoneno = explode("/", $siteRegulars->whatsapp);
$lastElement = array_shift($phoneno);
$phonelinked .= '<a href="tel:+977-' . $lastElement . '" target="_blank">' . $lastElement. '</a>/';
foreach ($phoneno as $phone) {
    
    $phonelinked .= '<a href="tel:+977-' . $phone . '" target="_blank">' . $phone . '</a>';
    if(end($phoneno)!= $phone){
    $phonelinked .= '/';
    }   
}
// email explode
$emaillink = explode("/", $siteRegulars->email_address);
$emaillinked = array_shift($emaillink);
$emailedlinked = '<li><a href="mailto:'. $emaillinked .'" target="_blank"> '. $emaillinked .'</a></li>';
foreach ($emaillink as $emails) {
    
    $emailedlinked .= '<li><a href="mailto:'. $emails .'" target="_blank"> '. $emails .'</a></li>';
    if(end($emaillink)!= $emails){
    $emailedlinked .= '/';
    }   
}
// email explode end
$footer = '
<footer id="mad-footer" class="mad-footer footer-2">
            <!--================ Footer row ================-->
            <div class="mad-footer-main">
                <div class="container-fluid">

                    <div class="row justify-content-between vr-size-2" style="border-bottom: 1px solid #857373;padding-bottom: 10px;margin-bottom: 26px;">
                        <div class="col-xxl-4 col-xl-4">
                            <section class="mad-widget">
                                <h6 class="mad-widget-title">' . $siteRegulars->sitename . '</h6>
                                <div class="mad-vr-list">
                                    <ul>
                                        <li>'. $siteRegulars->fiscal_address .'</li>
                                        <li><b>Landline:</b> '. $tellinked .'</li>
                                        <li><b>Phone:</b><a href= "tel:'. $siteRegulars->address .'" target="_blank" > '. $siteRegulars->address .'</a>(Viber, WhatsApp)</li>
                                        <li><b>Email:</b><a href="mailto:'. $siteRegulars->email_address .'" target="_blank" class="mad-link"> '. $siteRegulars->email_address .'</a>
                                        </li>
                                    </ul>
                                    <div class="mad-social-icons" style="margin-top:12px;">
                                    <ul>
                                    ' . $jVars['module:socilaLinkbtm'] . ' 
                                    </ul>
                                    </div>
                                </div>
                            </section>
                        </div>

                        <div class="col-xl-2 col-lg-3 col-md-3">
                            <!--================ Widget ================-->
                            <section class="mad-widget">
                                <h6 class="mad-widget-title">Quick Links</h6>
                                <div class="mad-vr-list menu">
                                '. $jVars['module:footer-menu'] .'
                                   
                                </div>
                            </section>
                            <!--================ End of Widget ================-->
                        </div>

                        <div class="col-xxl-4 col-xl-4">
                            <section class="mad-widget">
                                <h6 class="mad-widget-title">Kathmandu Reservation Office</h6>
                                <div class="mad-vr-list">
                                    <ul>
                                        <li>'. $siteRegulars->mail_address.'</li>
                                        <li><b>Phone:</b> '. $phonelinked.'</li>
                                        <li><b>P.O Box:</b> '. $siteRegulars->pobox.'</li>
                                        <li><b>Email:</b><a href="mailto:'. $siteRegulars->contact_info2.'" class="mad-link"> '. $siteRegulars->contact_info2.'</a>
                                        </li>
                                    </ul>
                                </div>
                            </section>
                        </div>

                    </div>
                    <div class="row justify-content-between vr-size-2">
                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <!--================ Widget ================-->
                            <section class="mad-widget">
                                <h6 class="mad-widget-title">Part Of</h6>
                                <div class="mad-vr-list">
                                    <ul style="display:flex;">
                                        <li style="margin-right: 20px;"><img src="template/web/images/awards/ace_footer_logo.png" alt="" style="width: 100px;"></li>
                                        <li><img src="template/web/images/awards/logo-dark.png" alt="" style="width: 200px;"></li>
                                    </ul>
                                </div>
                            </section>
                            <!--================ End of Widget ================-->
                        </div>

                        
                        
                        <div class="col-xl-5 col-lg-6 col-md-6">
                            <!--================ Widget ================-->
                            <section class="mad-widget">
                                <h6 class="mad-widget-title">Booking Engine</h6>
                                <div class="mad-vr-list">
                                    <ul class="book-eng">
                                    ' . $jVars['module:otatop'] . ' 
                                    </ul>
                                </div>
                            </section>
                            <!--================ End of Widget ================-->
                        </div>

                        <div class="col-xl-3 col-lg-6 col-md-6">
                            <!--================ Widget ================-->
                            <section class="mad-widget">
                                <h6 class="mad-widget-title">Affiliated with</h6>
                                <div class="btn-set mad-logos">
                                    <a href="#">
                                        <img src="template/web/images/awards/han-logo.png" alt="" style="width: 70px;">
                                    </a>

                                    <a href="#">
                                        <img src="template/web/images/awards/pata-logo.png" alt="" style="width: 70px;">
                                    </a>
                                </div>
                            </section>
                            <!--================ End of Widget ================-->
                        </div>

                        
                    </div>

                    <div class="mad-footer-bottom">
                        <p class="copyrights align-center">
                             '. $jVars['site:copyright'] .'
                        </p>
                    </div>
                </div>
            </div>
            <!--================ End of Footer row ================-->
        </footer>
        <!--================ End of Footer ================-->

        
        </div>
           ';
           

$jVars['module:footer-booking'] = $footer;



// test
$footer2 = '
    <footer class="skin-light">
        <div class="inner-wrapper">
            <div class="main-content row space clearfix">
                <div class="intro-content column full">
                    <div class="logo">
                        <a href="'.BASE_URL.'home" class="logo-link">
                            <img src="'.IMAGE_PATH.'preference/'.$siteRegulars->footer_logo.'" alt="' . $siteRegulars->sitename . '">
                        </a>
                    </div>

                    <div class="description">
                        <p>Hotel Goodwill is a heritage boutique hotel in Nepal loved by travelers <br/>across the world who seek peaceful abode away from the crowd.</p>
                    </div>
                </div>

                <div class="column one-fourth">
                    <div class="footer-menu">
                        <h3>Discover</h3>
                        <ul>
             '.$jVars['module:footer-menu'].'
                        </ul>
                    </div>
                </div>

                <div class="column one-fourth">
                    <div class="footer-menu">
                        <h3>Experiences</h3>
                        <ul>
                    '.$jVars['module:footer-experience'].'
                        </ul>
                    </div>
                </div>

                <div class="column one-fourth ">
                    <div class="footer-menu footer-contact">
                        <h3>Contact Us</h3>
                        <ul>
                           '.$emailedlinked.'
</li>
                            <li><a href="tel:'.$siteRegulars->contact_info.'">'.$siteRegulars->contact_info.'</a></li>
                            <li><a href="tel:'.$siteRegulars->whatsapp.'">'.$siteRegulars->whatsapp.'</a></li>
                            <li><a href="'.$siteRegulars->location_map.'">'.$siteRegulars->fiscal_address.'</a></li>
                            <li class="social-icons footers__icons">
                                <ul>
                                '.$jVars['module:socilaLinkbtm'].'
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="column one-fourth last">
                    <div class="footer-menu">
                        <h3>Booking Engines</h3>
                        <ul>
                        '.$jVars['module:footer-otalinks'].'
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="textcenter footer-map2">
                <h4>
                <a href="'.$siteRegulars->google_map.'" target="_blank">
                <img src="template/web/images/map.png"> View Google Map</a></h4>
            </div>


            <div class="bottom-bar">
                <div class="wrapper-left">
                 '.$jVars['site:copyright'].'
                </div>

                <div class="wrapper-right">
                    <ul class="bottom-bar-links">
                     '.$jVars['module:bottom-menu'].'
                    </ul>
                </div>
            </div>
        </div>
    </footer>
           ';
           

$jVars['module:footers'] = $footer2;
// test end



if(!empty($siteRegulars->whatsapp_a)){
$whatsapp='
<div class="messenger">
<a href="'.$siteRegulars->whatsapp_a.'" target="_blank"><img src="'.BASE_URL.'template/web/images/whatsapp.png"></a>
</div>';
}
else{
    $whatsapp='';
}

$jVars['module:footer-whatsapp'] = $whatsapp;
