<?php
$conn = mysqli_connect('localhost', 'root', '', 'search.loc');
echo "<a href='http://localhost/search.loc'>Главная...</a><br><br>";
echo    "<form method='GET'>
            <input type='text' name='model' placeholder='Car Model'>
            <input type='submit' value='Search'>
        </form>";

if(isset($_GET['model'])) {
    $model = $_GET['model'];
    $select_model_car = "SELECT * FROM `car` WHERE (`model_car` LIKE '%".$model."%')";
    $result = mysqli_query($conn, $select_model_car);

    if(mysqli_num_rows($result) > 0) {
        foreach($result as $res) {
            echo "<div style='display: inline-block; margin:5px;'><hr><mark>" 
                . $res['model_car'] . "</mark><br><img src='" 
                . $res['img_cag'] . "' style='width:100px;'><br>"
                . $res['color_car'] . "<hr></div>";
        }; 
    } else {
        echo "Нет результатов поиска! <a href='http://localhost/search.loc'>Показать весь список...</a>";
    }
    

} else {
    $select_car = "SELECT * FROM `car`";
    $result_car = mysqli_query($conn, $select_car);
    foreach($result_car as $res) {
        echo "<div style='display: inline-block; margin:5px;'><hr><mark>" 
            . $res['model_car'] . "</mark><br><img src='" 
            . $res['img_cag'] . "' style='width:100px;'><br>"
            . $res['color_car'] . "<hr></div>";
    }; 
}     

mysqli_close($conn);
