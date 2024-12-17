<?php
$siteRegulars = Config::find_by_id(1);
$booking_code = Config::getField('hotel_code', true);
$header = ob_start();
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
?>
    <!-- header info begin -->
    <div id="header-info">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <ul class="header-contact">
                        <li class="icon_location">
                            <a href="<?= $siteRegulars->contact_info2 ?>" target="_blank"><?= $siteRegulars->fiscal_address ?></a>
                        </li>
                        <li class="icon_phone"><a href="tel:<?= $siteRegulars->contact_info ?>"><?= $siteRegulars->contact_info ?></a></li>
                        <li class="icon_email"><a href="mailto:<?= $siteRegulars->email_address ?>"><?= $siteRegulars->email_address ?></a></li>
                    </ul>
                </div>

                <div class="col-md-3">
                    <div class="h_box">
                        <div class="social-icons-header">
                            <?= $jVars['module:socilaLinktop'] ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- header info close -->

    <!-- header begin -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <span id="menu-btn"></span>

                    <!-- logo begin -->
                    <div id="logo">
                        <div class="inner">
                            <a href="<?= BASE_URL ?>home"><img src="<?= IMAGE_PATH ?>preference/<?= $siteRegulars->logo_upload ?>" alt="logo"></a>
                        </div>
                    </div>
                    <!-- logo close -->

                    <!-- mainmenu begin -->
                    <nav>
                        <?= $jVars['module:res-menu'] ?>
                    </nav>
                    <!-- mainmenu close -->
                </div>
            </div>
            <!-- Removed one div cause design broke -->
    </header>
    <!-- header close -->
<?php
$header = ob_get_clean();


$header = '
            <div id="mad-page-wrapper" class="mad-page-wrapper">
                <header id="mad-header" class="mad-header header-2 mad-header--transparent mad-header--transparent-single">
            <div class="mad-pre-header">
                <div class="container-fluid">
                    <div class="mad-header-items float-end">
                        <div class="mad-header-item">
                            <div class="mad-our-info">
                                <div class="mad-info">
                                    <i class="material-icons-outlined">place</i>
                                    <span><a href="https://goo.gl/maps/ALjLFcboTNmwziq87" target="_blank">'. $siteRegulars->fiscal_address .'</a></span>
                                </div>
                                <div class="mad-info">
                                    <i class="material-icons-outlined">phone</i>
                                    <span>'. $tellinked .'</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="mad-header-section--sticky-xl">
                <div class="container-fluid">
                    <div class="mad-header-items">
                        <div class="mad-header-item">
                            <a href="'. BASE_URL . 'home' .'" class="mad-logo">
                                <img class ="home_logo" src="'. IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload .'" alt="" />
                            </a>
                        </div>
                        <div class="mad-header-item">
                            <!--================ Navigation ================-->
                            
                            <nav class="mad-navigation-container">
                            '. $jVars['module:res-menu'] .'
                                
                            </nav>
                            <!--================ End of Navigation ================-->

                            <!-- <div class="mad-actions">
                                <div class="mad-col">
                                    <a href="result.php?hotel_code='. $booking_code .'" class="btn">Book Now</a>
                                </div>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </header>';
$jVars['module:header'] = $header;
$header2 = '
          <header class="position-absolute style-1">
        <!-- Begin Top Bar -->
        <div class="top-bar">
            <div class="wrapper-left">
                <p>'.$siteRegulars->sitetitle.'</p>
            </div>

            <div class="wrapper-right">
                <p>Contact Us at: <a href="tel:'.$siteRegulars->address.'">'.$siteRegulars->address.'</a></p>
                
            </div>
        </div>
        <!-- End Top Bar -->

        <div class="content-wrapper">
            <!-- Begin Left Content -->
            <div class="content-left">
                <!-- Begin Logo -->
                <div class="logo">
                    <a href="'.BASE_URL.'home">
                        <img src="'. IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload .'" alt="'.$siteRegulars->sitename.'" />
                        
                    </a>
                </div>
                <!-- End Logo -->
            </div>
            <!-- Begin Left Content -->

            <!-- Begin Center Content -->
            <div class="content-center">
                <!-- Begin Mobile Nav Icon -->
                <span class="menu-icon">
                    <span></span>
                    <span></span>
                    <span></span>
                </span>
                <!-- End Mobile Nav Icon -->

                <!-- Begin Navigation -->
               '. $jVars['module:res-menu'] .'
                <!-- End Navigation -->
            </div>
            <!-- Begin Center Content -->

            <!-- Begin Right Content -->
            <div class="content-right">
                <!-- Begin Social Icons -->
                <ul class="social-icons">

                    '.$jVars['module:socilaLinkbtm'].'
                </ul>
                <!-- End Social Icons -->
            </div>
            <!-- Begin Right Content -->
        </div>
    </header>';
$jVars['module:header2'] = $header2;

