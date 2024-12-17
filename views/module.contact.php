<?php
/*
* Contact form
*/
$rescont = $innerbred = '';
$img='';
if (defined('CONTACT_PAGE')) {


    $siteRegulars = Config::find_by_id(1);

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
$emaillink2 = explode("/", $siteRegulars->contact_info2);
$email_linked = array_shift($emaillink2);
$emailedlinked2 = '<li><a href="mailto:'. $email_linked .'" target="_blank"> '. $email_linked .'</a></li>';
foreach ($emaillink2 as $emails) {
    
    $emailedlinked2 .= '<li><a href="mailto:'. $emails .'" target="_blank"> '. $emails .'</a></li>';
    if(end($emaillink2)!= $emails){
    $emailedlinked2 .= '/';
    }   
}

$imglink= $siteRegulars->contact_upload ;
if(!empty($imglink)){
    $img= IMAGE_PATH . 'preference/contact/' . $siteRegulars->contact_upload ;
}
else{
    $img='';
}
$emaillink2 = explode("/", $siteRegulars->contact_info2);
$email_linked = array_shift($emaillink2);
$emailedlinked2 = '<li><a href="mailto:'. $email_linked .'" target="_blank"> '. $email_linked .'</a></li>';
foreach ($emaillink2 as $emails) {
    
    $emailedlinked2 .= '<li><a href="mailto:'. $emails .'" target="_blank"> '. $emails .'</a></li>';
    if(end($emaillink2)!= $emails){
    $emailedlinked2 .= '/';
    }   
}
        // pr($siteRegulars);
    $rescont .= '
    <!--================ Breadcrumb ================-->

    <section class="page-header" style="background-image:url('.$img.');">
        <div class="title">
        <!-- <p>We are available 24/7</p> -->
            <h1>Contact Us</h1>
        </div>
    </section>
    <!--================ End of Breadcrumb ================-->

    <!-- <div class="mad-content no-pd">
        <div class="container">
            <div class="mad-section">
                <div class="row vr-size-2">
                    <div class="col-lg-5">
                        <div class="mad-title-wrap">
                            <div class="mad-pre-title">Contact Details</div>
                            <h2 class="mad-section-title">Get In Touch</h2>
                        </div>
                        <div class="mad-vr-list mad-text-medium content-element-3">
                            <ul>
                                <li>'. $siteRegulars->fiscal_address .'</li>
                                <li><b>Landline:'. $tellinked .'</li>
                                <li><b>Phone:</b> '. $siteRegulars->whatsapp .'</li>
                                <li><b>Phone:</b><a href="tel:'. $siteRegulars->whatsapp .'</a></li>
                                <li>
                                    <b>Email:</b>
                                    <a href="mailto: '. $siteRegulars->email_address .'" > '. $siteRegulars->email_address .'</a>
                                </li>
                            </ul>
                        </div>

                        <div class="mad-social-icons">
                            <ul>
                            ' . $jVars['module:socilaLinkbtm'] . ' 
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-7">
                        <form class="mad-contact-form mad-form type-2 item-col-2" method="post" action="enquery_mail.php" id="form_contact">
                            <div class="mad-col">
                                <div class="mad-form-item">
                                    <label>Title *</label>
                                    <div class="mad-custom-select">
                                        <select data-default-text="Please select">
                                            <option>Mr.</option>
                                            <option>Mrs.</option>
                                            <option>Miss</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="mad-form-item">
                                    <label>First name *</label>
                                    <input type="text" id="cf_name" name="cf_name" required="" placeholder="First Name" />
                                </div>

                                <div class="mad-form-item">
                                    <label>Last name *</label>
                                    <input type="text" id="cf_lname" name="cf_lname" required="" placeholder="Last Name"/>
                                </div>

                                <div class="mad-form-item">
                                    <label>Email *</label>
                                    <input type="email"  id="cf_email" name="cf_email" required="" placeholder="Email Address" />
                                </div>

                                <div class="mad-form-item">
                                    <label>Phone number</label>
                                    <input type="tel" id="cf_phone" name="cf_phone" placeholder="Phone Number" />
                                </div>
                            </div>

                            <div class="mad-col">
                                <div class="mad-form-item">
                                    <label>Address *</label>
                                    <input type="text" id="cf_name" name="cf_name" required="" placeholder="Address" />
                                </div>

                                <div class="mad-form-item full-height">
                                    <label>Message *</label>
                                    <textarea rows="5" id="message" name="message" required="" placeholder="Message"></textarea>
                                    
                                </div>

                                <div id="g-recaptcha-response" class="g-recaptcha" data-sitekey="6Lc2BUAnAAAAACVq_ob7ovqecd3zAFbF1294p5jq"></div>
                                <div class="mad-form-item">
                                    <input type="submit"  class="btn btn-big" id="submit" value="SUBMIT">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="mad-section no-pd mad-section--stretched-content-no-px mad-colorizer--scheme-">
                <div class="mad-gmap">
                    <iframe src="'. $siteRegulars->location_map .'" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    </div> -->


        <!-- <div class="mad-content no-pd">
        <div class="container">
            <div class="mad-section">
                <div class="row vr-size-2">
                    <div class="col-lg-5">
                        <div class="mad-title-wrap">
                            <div class="mad-pre-title">Contact Details</div>
                            <h2 class="mad-section-title">Get In Touch</h2>
                        </div>
                        <div class="mad-vr-list mad-text-medium content-element-3">
                            <ul>
                                <li>'. $siteRegulars->fiscal_address .'</li>
                                <li><b>Landline:'. $tellinked .'</li>
                                <li><b>Phone:</b> '. $siteRegulars->whatsapp .'</li>
                                <li>
                                    <b>Email:</b>
                                    <a href="mailto: '. $siteRegulars->email_address .'" > '. $siteRegulars->email_address .'</a>
                                </li>
                            </ul>
                        </div>

                        <div class="mad-social-icons">
                            <ul>
                            ' . $jVars['module:socilaLinkbtm'] . ' 
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-7">
                        <form class="mad-contact-form mad-form type-2 item-col-2" method="post" action="enquery_mail.php" id="form_contact">
                            <div class="mad-col">
                                <div class="mad-form-item">
                                    <label>Title *</label>
                                    <div class="mad-custom-select">
                                        <select data-default-text="Please select">
                                            <option>Mr.</option>
                                            <option>Mrs.</option>
                                            <option>Miss</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="mad-form-item">
                                    <label>First name *</label>
                                    <input type="text" id="cf_name" name="cf_name" required="" placeholder="First Name" />
                                </div>

                                <div class="mad-form-item">
                                    <label>Last name *</label>
                                    <input type="text" id="cf_lname" name="cf_lname" required="" placeholder="Last Name"/>
                                </div>

                                <div class="mad-form-item">
                                    <label>Email *</label>
                                    <input type="email"  id="cf_email" name="cf_email" required="" placeholder="Email Address" />
                                </div>

                                <div class="mad-form-item">
                                    <label>Phone number</label>
                                    <input type="tel" id="cf_phone" name="cf_phone" placeholder="Phone Number" />
                                </div>
                            </div>

                            <div class="mad-col">
                                <div class="mad-form-item">
                                    <label>Address *</label>
                                    <input type="text" id="cf_name" name="cf_name" required="" placeholder="Address" />
                                </div>

                                <div class="mad-form-item full-height">
                                    <label>Message *</label>
                                    <textarea rows="5" id="message" name="message" required="" placeholder="Message"></textarea>
                                    
                                </div>

                                <div class="mad-form-item">
                                <div id="g-recaptcha-response" class="g-recaptcha" data-sitekey="6Lc2BUAnAAAAACVq_ob7ovqecd3zAFbF1294p5jq"></div>
                                    <input type="submit" class="btn btn-big" id="submit" value="SUBMIT">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="mad-section no-pd mad-section--stretched-content-no-px mad-colorizer--scheme-">
                <div class="mad-gmap">
                    <iframe src="'. $siteRegulars->location_map .'" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    </div> -->
     <section>
            <div class="section-wrapper-boxed">
                <div class="row space clearfix">
                    <div>
                        <div class="column one-half animate__animated" data-animation-type="animate__fadeIn" data-animation-delay="0" id="contact-hall">
                            <div class="big-title">
                                <p class="subtitle style-no-border no-margin color-accent">We are available 24/7</p>
                                <h2 class="style-low-margin contacth2">Send Us, We\'d love to hear from you.</h2>
                            </div>

                            <div class="divider20"></div>

                            <form class="contact-form" id="contactform" action="#" method="post">
                                <input type="text" name="name" placeholder="Name">
                                <input type="email" name="email" placeholder="Email">
                                <input type="number" name="contact" placeholder="Contact No.">
                                <input type="text" name="subject" placeholder="Subject">
                                <textarea name="message" placeholder="Message"></textarea>
                                <div id="g-recaptcha-response" class="g-recaptcha" data-sitekey="6LerRbApAAAAAD4jS_c0Ht69N7Ls45pzlx6kh9tn"></div>
                                <div style="margin-top:20px;">
                                <input  type="submit" name="submit" id="submit" value="Send Message">
                                </div>
                                <div id="result_msg">
                                </div>
                            </form>
                        </div>

                        <div class="column one-half last animate__animated" data-animation-type="animate__fadeIn" data-animation-delay="100">
                            <div class="google-map">
                                <iframe src="'.$siteRegulars->location_map.'" width="800" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                        </div>
                    </div>

                    <div class="divider100"></div>

                    <div class="contact_all_details">
                        <div class="column one-fourth animate__animated" data-animation-type="animate__fadeIn" data-animation-delay="0">
                            <div class="contact-box">
                                <span class="label">Contact Details</span>
                                <ul>
                                    <li>'.$siteRegulars->fiscal_address.'</li>
                                    '.$emailedlinked2.'
                                    <li><a href="tel:'.$siteRegulars->address.'">'.$siteRegulars->address.'</a></li>
                                </ul>   
                            </div>
                        </div>
                        
                        <div class="column one-fourth animate__animated" data-animation-type="animate__fadeIn" data-animation-delay="100">
                            <div class="contact-box">
                                <span class="label">Room Reservation</span>
                                <ul>
                                    <li>'.$siteRegulars->fiscal_address.'</li>
                                    '.$emailedlinked2.'
                                    <li><a href="tel:'.$siteRegulars->whatsapp_a.'">'.$siteRegulars->whatsapp_a.'</a></li>
                                </ul>  
                            </div>
                        </div>
                        
                        <div class="column one-fourth animate__animated" data-animation-type="animate__fadeIn" data-animation-delay="150">
                            <div class="contact-box">
                                <span class="label">Event Reservation</span>
                                <ul>
                                    <li>'.$siteRegulars->fiscal_address.'</li>
                                   '.$emailedlinked2.'
                                   <li><a href="tel:'.$siteRegulars->event_reservation.'">'.$siteRegulars->event_reservation.'</a></li>
                                </ul>   
                            </div>
                        </div>

                        <div class="column one-fourth last animate__animated" data-animation-type="animate__fadeIn" data-animation-delay="200">
                            <div class="contact-box">
                                <span class="label">Nearest Landmark</span>
                                <ul>
                             '.$siteRegulars->breif.'
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    ';
}
$jVars['module:contact-us'] = $rescont;
