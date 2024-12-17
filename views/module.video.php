<?php
$videos='';

$video = Video::getVideos();
// var_dump($videos); die();
if($video) {
    $videos .='';
        foreach($video as $RecRow) {
            if(!empty($RecRow->source)){
                $videos .='
    <div class="column one-third animate__animated" data-animation-type="animate__fadeIn" data-animation-delay="0">
        <div class="vedio">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/'.get_youtube_code($RecRow->source).'" title="'.$RecRow->title.'" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
        </div>
    </div>                
                   ';
            }
        }
    }
    $jVars['module:videos'] = $videos;
?>

