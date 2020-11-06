<?php
namespace app\controllers;

use Yii;
use DateInterval;
use DateTime;
use yii\filters\VerbFilter;
use yii\helpers\ArrayHelper;
use yii\web\Controller;
use yii\web\Response;
use yii\web\NotFoundHttpException;
use app\models\AppLog;
use app\models\Rol;
use app\models\TipoDeServicio;
use app\models\Asistente;
use app\models\AsistenteSearchMC;
use app\models\Servicio;
use app\models\ServicioSearch;
use app\models\DetalleDeServicio;
use app\models\Sesion;
use app\models\FacilitadorDeServicio;
use app\models\AsistenteDeServicio;
use app\models\Asistencia;
use app\models\Constancia_WORD;

class Helpers {
    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }
    /**
     * Updates an existing Asistentes model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionGetasistentes()
    {
        $nombre = $this->clearString(Yii::$app->request->post('nombre'));
        $apellido_paterno = $this->clearString(Yii::$app->request->post('apellido_paterno'));
        $apellido_materno = $this->clearString(Yii::$app->request->post('apellido_materno'));

        if(empty($nombre) && empty($apellido_paterno) && empty($apellido_materno)){
            return json_encode([]);
        }else{
            $asistentes = Asistente::find()
            ->where(['like', 'nombre', $nombre])
            ->andWhere(['like', 'apellido_paterno', $apellido_paterno])
            ->andWhere(['like', 'apellido_materno', $apellido_materno])
            ->all();
            return json_encode(ArrayHelper::map($asistentes, 'id', 'nombrecompleto'));
        }
    }
    private function clearString($string){
        $new_string = addslashes(str_replace ('  ',' ',$string));
        $new_string = trim ($new_string);
        return $new_string;
    }
	
    /**
     * Deletes an existing Servicio model.
     * If document is successfuly created, the browser will be redirected to the same page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionConstanciadeasistencias($id)
    {
        $asistente = $this->findAsistenteModel($id);
        $constancia = new Constancia_WORD($asistente);
        $constancia->construct();
        return $constancia->download();
    }
    /*
    ** Returns an array like
    ** Array ( [2020-08] => 5 [2020-09] => 4 [2020-10] => 4 [2020-11] => 2 )
    **
    */
    public function groupByMonth($asistencias_de_sesion){
        $result = array();
        foreach ($asistencias_de_sesion as $sesion) {
            if(isset($result[date('Y-m',strtotime($sesion['fecha']))])){
                $result[date('Y-m',strtotime($sesion['fecha']))] +=  $sesion['asis'];
            }else{
                $result[date('Y-m',strtotime($sesion['fecha']))] = $sesion['asis'];
            }
        }
        return $result;

    }
    /*
    ** Returns an array like
    ** Array ( [2020-08] => 5 [2020-09] => 4 [2020-10] => 4 [2020-11] => 2 )
    **
    */
    public function getPromedio($asistencias_de_servicio){
        $total_de_servicios = count($asistencias_de_servicio);
        $suma_asistencias = 0;
        foreach ($asistencias_de_servicio as $asistencias) {
            $suma_asistencias += $asistencias['asis'];
        }
        return $suma_asistencias/$total_de_servicios;

    }

    /************************************************************/
    /*********************** MODELS *****************************/
    /************************************************************/
    

    /**
     * Finds the Asistentes model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Asistentes the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    private function findAsistenteModel($id)
    {
        if (($model = Asistente::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested item does not exist.');
    }
}