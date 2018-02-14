<?php
    $info = file_get_contents('php://input');
    $data = json_decode($info, true);
    
    if ($data) {
        exec("sh /home/porfirioads/public_html/scripts/deploy.sh ".$data["repository"]["git_http_url"]." ".$data["repository"]["name"]." >> /tmp/logerrorhook 2>&1", $res);
    } else {
        echo "<h3>Acceso a hook no disponible</h3>";
    }
?>
