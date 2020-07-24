
<style>
    h1{
        color:#ffffff;
    }
    p{
        color:#fff;
        font-size: 15px
    }
    img{
        width:100%;}
    #popup_content_wrap {
        width: 100%;
        height: 100%;   
        top: 0;
        left: 0;   
        position: fixed;	
        background: rgba(0, 0, 0, 0.74);
        z-index: 9999999;
    }
    #popup_content {
        width: 400px;
        height: 300px;
        padding:20px;
        position: relative;
        top: 25%;
        left: 35%;
        background: #1b100ed9;
        border: 10px solid #00cbfe;  


    }

</style>

<script>
    function popup_content(hideOrshow) {
        if (hideOrshow == 'hide')
            document.getElementById('popup_content_wrap').style.display = "none";
        else
            document.getElementById('popup_content_wrap').removeAttribute('style');
    }
    window.onload = function () {
        setTimeout(function () {
            popup_content('show');
        }, 100);
    }

</script>

<?php
$html = file_get_contents('https://www.bibliaonline.com.br/acf');
$versiculo2 = file_get_contents('https://www.bibliaon.com/versiculo_do_dia/');
preg_match_all('|<p class="(.*?)">(.*?)<\/p>(.*?)<\/a>|is', $html, $result);
//preg_match_all('|<p class="destaque" id="versiculo_hoje">(.*?) <br \/>|is', $versiculo2, $versiculo);
preg_match_all('|<p class="destaque" id="versiculo_hoje">(.*?) <br \/>(.*?">)(.*?)<\/a>|is', $versiculo2, $versiculoDia);

//var_dump($versiculoDia[1][0]);
//var_dump($versiculoDia[3][0]);die;
?>


<div id="popup_content_wrap" style='display:block'>
    <div id="popup_content">
        <center>
            <h1> Versículos do Dia</h1> 
            <hr>
            <p> <?php echo utf8_encode($versiculoDia[1][0])  ?></p><br />
            <h3 style="color:#ccffcc"> <?php echo utf8_encode($versiculoDia[3][0])  ?></h3>
            <hr>
            <input type="submit" name="submit" value="Fechar" class="btn btn-primary" onClick="popup_content('hide')" />
        </center>
    </div>
</div>
<!---end page load popup_content---->