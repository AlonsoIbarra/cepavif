<?php
use yii\data\ActiveDataProvider;
use app\models\Servicio;
use app\models\Asistente;
use app\controllers\Helpers;
use dosamigos\chartjs\ChartJs;
use miloschuman\highcharts\Highcharts;
//******************************** DATA ************************************************
    $helper = new Helpers();

    $asistentes = Asistente::find()->count();
    $servicios_grupal_abiertos = Servicio::find()->where(['cerrado'=>false,'tipo_de_servicio_id'=>1])->count(); // atención grupal
    $servicios_grupal_cerrados = Servicio::find()->where(['cerrado'=>true,'tipo_de_servicio_id'=>1])->count(); // atención grupal
    $servicios_individual_abiertos = Servicio::find()->where(['cerrado'=>false,'tipo_de_servicio_id'=>2])->count(); // atención grupal
    $servicios_individual_cerrados = Servicio::find()->where(['cerrado'=>true,'tipo_de_servicio_id'=>2])->count(); // atención grupal
    // Promedio de asistentes a grupos de hombres
//    

$query_hombres = (new \yii\db\Query())
    ->select("count(asistentes_a_servicio.id) AS asis")
    ->from('servicios')
    ->join('LEFT JOIN', 'asistentes_a_servicio', 'asistentes_a_servicio.servicio_id = servicios.id')
    ->join('LEFT JOIN', 'asistentes', 'asistentes.id = asistentes_a_servicio.asistente_id')
    ->where(["asistentes.sexo"=>"H"])
    ->andWhere(["servicios.tipo_de_servicio_id"=>1])
    ->groupBy(['servicios.id'])
    ->createCommand();
$registro_hombres = $query_hombres->queryAll();
// Promedio de asistentes a grupos de Mujeres
$promedio_de_asistentes_hombres = $helper->getPromedio($registro_hombres);
//    
$query_mujeres = (new \yii\db\Query())
    ->select("count(asistentes_a_servicio.id) AS asis")
    ->from('servicios')
    ->join('LEFT JOIN', 'asistentes_a_servicio', 'asistentes_a_servicio.servicio_id = servicios.id')
    ->join('LEFT JOIN', 'asistentes', 'asistentes.id = asistentes_a_servicio.asistente_id')
    ->where(["asistentes.sexo"=>"M"])
    ->andWhere(["servicios.tipo_de_servicio_id"=>1])
    ->groupBy(['servicios.id'])
    ->createCommand();
$registro_mujeres = $query_mujeres->queryAll();
$promedio_de_asistentes_mujeres = $helper->getPromedio($registro_mujeres);

?>
<div class="card">
  <div class="card-body">
    <P><h3 class="card-title text-center">Graficos </h3></p>
    <P><h5 class="card-title">Usuarios registrados : </h5> <?= $asistentes ?></p>
    <P><h4 class="card-title">Servicios de atención grupal Mujeres</h4>
        Abiertos:
        <br>
        Cerrados:
    </p>
    <P><h4 class="card-title">Servicios de atención grupal Hombres</h4>
        Abiertos:
        <br>
        Cerrados:
    </p>
    <P><h5 class="card-title">Servicios de atención grupal abiertos : </h5> <?= $servicios_grupal_abiertos ?></p>
    <P><h5 class="card-title">Servicios de atención grupal cerrados : </h5> <?= $servicios_grupal_cerrados ?></p>
    <P><h5 class="card-title">Servicios de atención individual abiertos : </h5> <?= $servicios_individual_abiertos ?></p>
    <P><h5 class="card-title">Servicios de atención individual cerrados : </h5> <?= $servicios_individual_cerrados ?></p>
    <P><h5 class="card-title">Promedio de asistentes registrados en grupos de hombres : </h5> <?= $promedio_de_asistentes_hombres ?></p>
    <P><h5 class="card-title">Promedio de asistentes registrados en grupos de mujeres : </h5> <?= $promedio_de_asistentes_mujeres ?></p>
<h4 class="card-title text-center">Grafico de sexo </h4>
    <div class="container">
<?php
//******************************************************************************************************
$hombres = Asistente::find()->where(['sexo'=>'H'])->count();
$mujeres = Asistente::find()->where(['sexo'=>'M'])->count();
$sin_especificar = Asistente::find()->where(['sexo'=>null])->count();
echo ChartJs::widget([
    'type' => 'pie',
    'id' => 'structurePie',
    'options' => [
        'height' => '400%',
        'width' => '400%',
    ],
    'data' => [
        'radius' =>  "20%",
        'labels' => ['Hombres', 'Mujeres', 'Sin especificar'], // Your labels
        'datasets' => [
            [
                'data' => [$hombres, $mujeres, $sin_especificar], // Your dataset
                'label' => 'Sexo',
                'backgroundColor' => [
                        '#ADC3FF',
                        '#FF9A9A',
                    'rgba(190, 124, 145, 0.8)'
                ],
                'borderColor' =>  [
                        '#fff',
                        '#fff',
                        '#fff'
                ],
                'borderWidth' => 1,
                'hoverBorderColor'=>["#999","#999","#999"],                
            ]
        ]
    ],
    'clientOptions' => [
        'legend' => [
            'display' => false,
            'position' => 'bottom',
            'labels' => [
                'fontSize' => 14,
                'fontColor' => "#425062",
            ]
        ],
        'tooltips' => [
            'enabled' => true,
            'intersect' => true
        ],
        'hover' => [
            'mode' => true
        ],
        'maintainAspectRatio' => false,

    ],
]);
echo "</div>";
/* 
************************************************************************************************************
************************************** Asistencias mensuales ************************************************
************************************************************************************************************
*/

$query_hombres = (new \yii\db\Query())
    ->select("sesiones.fecha, count(asistencias.id) as asis")
    ->from('sesiones')
    ->join('LEFT JOIN', 'asistencias', 'asistencias.sesion_id=sesiones.id')
    ->join('LEFT JOIN', 'asistentes', 'asistencias.asistente_id=asistentes.id')
    ->where(["asistentes.sexo"=>"H"])
    ->groupBy(['sesiones.fecha'])
    ->createCommand();
$rows_hombres = $query_hombres->queryAll();
$data_grouped_hombres = $helper->groupByMonth($rows_hombres);
$categories = array_keys ($data_grouped_hombres);
$categories_data = array_values($data_grouped_hombres);

echo Highcharts::widget([
   'options' => [
      'title' => ['text' => 'Asistencia mensual Hombres'],
      'xAxis' => [
         'categories' => $categories
      ],
      'yAxis' => [
         'title' => ['text' => 'Asistencias']
      ],
      'series' => [
         ['name' => 'Hombres', 'data' => $categories_data],
//         ['name' => 'Mujeres', 'data' => [5, 73, 3, 10]]
      ]
   ]
]);


$query_mujeres = (new \yii\db\Query())
    ->select("sesiones.fecha, count(asistencias.id) as asis")
    ->from('sesiones')
    ->join('LEFT JOIN', 'asistencias', 'asistencias.sesion_id=sesiones.id')
    ->join('LEFT JOIN', 'asistentes', 'asistencias.asistente_id=asistentes.id')
    ->where(["asistentes.sexo"=>"M"])
    ->groupBy(['sesiones.fecha'])
    ->createCommand();
$rows_mujeres = $query_mujeres->queryAll();
$data_grouped_mujeres = $helper->groupByMonth($rows_mujeres);
$categories = array_keys ($data_grouped_mujeres);
$categories_data = array_values($data_grouped_mujeres);

echo Highcharts::widget([
   'options' => [
      'title' => ['text' => 'Asistencia mensual Mujeres'],
      'xAxis' => [
         'categories' => $categories
      ],
      'yAxis' => [
         'title' => ['text' => 'Asistencias']
      ],
      'series' => [
         ['name' => 'Mujeres', 'data' => $categories_data],
      ]
   ]
]);

//***********************************************************************


echo ChartJs::widget([
    'type' => 'line',
    'options' => [
        'height' => 400,
        'width' => 400
    ],
    'data' => [
        'labels' => ["January", "February", "March", "April", "May", "June", "July"],
        'datasets' => [
            [
                'label' => "My First dataset",
                'backgroundColor' => "rgba(179,181,198,0.2)",
                'borderColor' => "rgba(179,181,198,1)",
                'pointBackgroundColor' => "rgba(179,181,198,1)",
                'pointBorderColor' => "#fff",
                'pointHoverBackgroundColor' => "#fff",
                'pointHoverBorderColor' => "rgba(179,181,198,1)",
                'data' => [65, 59, 90, 81, 56, 55, 40]
            ],
            [
                'label' => "My Second dataset",
                'backgroundColor' => "rgba(255,99,132,0.2)",
                'borderColor' => "rgba(255,99,132,1)",
                'pointBackgroundColor' => "rgba(255,99,132,1)",
                'pointBorderColor' => "#fff",
                'pointHoverBackgroundColor' => "#fff",
                'pointHoverBorderColor' => "rgba(255,99,132,1)",
                'data' => [28, 48, 40, 19, 96, 27, 100]
            ]
        ]
    ]
]);
?>
  </div>
</div>


