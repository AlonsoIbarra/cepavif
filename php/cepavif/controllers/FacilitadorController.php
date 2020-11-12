<?php
namespace app\controllers;

use Yii;
use DateInterval;
use DateTime;
use yii\filters\VerbFilter;
use yii\helpers\ArrayHelper;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use app\models\User;
use app\models\AppLog;
use app\models\TipoDeServicio;
use app\models\Asistente;
use app\models\AsistenteSearch;
use app\models\Servicio;
use app\models\ServicioSearchFacilitador;
use app\models\DetalleDeServicio;
use app\models\Sesion;
use app\models\FacilitadorDeServicio;
use app\models\AsistenteDeServicio;
use app\models\Asistencia;

class FacilitadorController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'userroldelete' => ['POST'],
                ],
            ],
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new ServicioSearchFacilitador();
        $params = Yii::$app->request->getQueryParams();
        $params['facilitador_id'] = Yii::$app->user->identity->id;
        $dataProvider = $searchModel->search($params);
        return $this->render('/facilitador/index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
        return $this->render('/facilitador/index',["model"=>$model]);
    }

    /************************************************************/
    /*******************ASISTENTE ACTIONS************************/
    /************************************************************/
    /**
     * Lists all Asistentes models.
     * @return mixed
     */
    public function actionAsistentes()
    {
        $searchModel = new AsistenteSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('/asistente/index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Asistentes model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionAsistenteview($id)
    {
        return $this->render('/asistente/view_facilitador', [
            'model' => $this->findAsistenteModel($id),
        ]);
    }

    /**
     * Creates a new Asistentes model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionAsistentecreate()
    {
        $model = new Asistente();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['facilitador/asistenteview', 'id' => $model->id]);
        }

        return $this->render('/asistente/create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Asistentes model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionAsistenteupdate($id)
    {
        $model = $this->findAsistenteModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['facilitador/asistenteview', 'id' => $model->id]);
        }

        return $this->render('/asistente/update', [
            'model' => $model,
        ]);
    }

    /************************************************************/
    /*******************SERVICIOS ACTIONS************************/
    /************************************************************/
    /**
     * Displays a single Servicio model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionServicioview($id)
    {
        return $this->render('/servicio/view', [
            'model' => $this->findServicioModel($id),
            'modeldetail' =>  $this->findDetalleDeServicioModel($id),
        ]);
    }

    /**
     * Creates a new Servicio model.
     * If creation is successful, the browser will be redirected to the 'serviciocreatesteptwo' page.
     * @return mixed
     */
    public function actionServiciocreate()
    {
        $model = new Servicio();
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            $facilitadorDeServicio = new FacilitadorDeServicio();
            $facilitadorDeServicio->user_id = Yii::$app->user->identity->id;
            $facilitadorDeServicio->servicio_id = $model->id;
            $facilitadorDeServicio->save();
            return $this->redirect(['facilitador/serviciocreatesteptwo', 'id' => $model->id]);
        }
        $tiposDeServicio = null;
        $authorities = ArrayHelper::getColumn( Yii::$app->user->identity->roles, 'authority');
        if (in_array('ROLE_FACILITADOR', array_values($authorities)))
            $tiposDeServicio = ArrayHelper::map(TipoDeServicio::find()->where(['in', 'id', [1]])->all(),'id','nombre');
        if(in_array('ROLE_PSICOLOGO', array_values($authorities)))
            $tiposDeServicio = ArrayHelper::map(TipoDeServicio::find()->where(['in', 'id', [2]])->all(),'id','nombre');
        return $this->render('/servicio/create', [
            'model' => $model,
            'tiposDeServicioList'=> $tiposDeServicio,
        ]);
    }

    /**
     * Creates a new Servicio model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionServiciocreatesteptwo($id)
    {
        $servicio = $this->findServicioModel($id);
        $model = new DetalleDeServicio();
        $model->servicio_id = $servicio->id;

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            if($servicio->tipo_de_servicio_id === 1 or $servicio->tipo_de_servicio_id === 2 ){
                $sesiones = 25;
                // Registrar sesiones de atención GRUPAL
                if($servicio->tipo_de_servicio_id === 1 )
                    $sesiones = 25;
                // Registrar sesiones de atención INDIVIDUAL
                if($servicio->tipo_de_servicio_id === 2 )
                    $sesiones = 12;
                for ($i=0; $i < $sesiones ; $i++) { 
                    $diffNWeek = new DateInterval('P'.$i.'W');
                    $d1 = new DateTime($model->fecha_de_inicio);

                    $sesion = new Sesion();
                    $fecha = Date($d1->add($diffNWeek)->format('Y-m-d'));
                    $sesion->servicio_id = $servicio->id;
                    $sesion->fecha = $fecha;
                    $sesion->save();
                }
            }
            return $this->redirect(['facilitador/servicioview', 'id' => $servicio->id]);
        }

        return $this->render('/servicio/create_detalle', [
            'servicio' => $servicio,
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Servicio model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionServicioupdate($id)
    {
        $model = $this->findServicioModel($id);
        if($model->cerrado == true)
            return $this->redirect(['facilitador/servicioview', 'id' => $model->id,"error"=>"No puede actualizar un servicio cerrado."]);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['facilitador/servicioupdatesteptwo', 'id' => $model->id]);
        }

        return $this->render('/servicio/update', [
            'model' => $model,
            'tiposDeServicioList'=> ArrayHelper::map(TipoDeServicio::find()->all(),'id','nombre'),
        ]);

    }

    /**
     * Creates a new Servicio model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionServicioupdatesteptwo($id)
    {
        $servicio = $this->findServicioModel($id);
        $model = $this->findDetalleDeServicioModel($servicio->id);

        if($servicio->cerrado == true)
            return $this->redirect(['facilitador/servicioview', 'id' => $servicio->id,"success"=>"El Servicio se cerro satisfactoriamente."]);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['facilitador/servicioview', 'id' => $servicio->id]);
        }
        return $this->render('/servicio/update_detalle', [
            'servicio' => $servicio,
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Servicio model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionServicioclose($id)
    {
        $model = $this->findServicioModel($id);
        if($model->cerrado == true)
            return $this->redirect(['facilitador/servicioview', 'id' => $model->id,"error"=>"El servicio se encuentra cerrado."]);
        $model->cerrado = 1;
        $model->save();
        return $this->redirect(['facilitador/servicioview', 'id' => $model->id, "success"=>"El servicio se cerró satisfactoriamente."]);
    }
    /************************************************************/
    /*******************SESIONES ACTIONS************************/
    /************************************************************/
    /**
     * Displays a single Servicio model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionSesionview($id)
    {
        return $this->render('/sesion/view', [
            'model' => $this->findSesionModel($id),
        ]);
    }
    /**
     * Displays a single Servicio model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionSesioncreate($id)
    {
        $servicio = $this->findServicioModel($id);
        $model = new Sesion();
        if($servicio->cerrado == true)
            return $this->redirect(['facilitador/servicioview', 'id' => $servicio->id, "error"=>"No puede añadir sesiones a un servicio cerrado."]);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['facilitador/servicioview', 'id' => $model->servicio->id]);
        }
        $model->servicio_id = $servicio->id;
        return $this->render('/sesion/create', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Servicio model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionSesiondelete($id)
    {
        $sesion = $this->findSesionModel($id);
        if($servicio->cerrado == true)
            return $this->redirect(['facilitador/servicioview', 'id' => $servicio->id, "error"=>"No puede eliminar sesiones de un servicio cerrado."]);

        if($sesion->getAsistencias()->count() > 0 )
            return $this->redirect(['facilitador/sesionview', 'id' => $sesion->id,"error"=>"No puede eliminar una sesion con asistencias registradas."]);

        $sesion->delete();
        return $this->redirect(['facilitador/servicioview', 'id' => $sesion->servicio->id]);

    }

    /**
     * Creates a new Servicio model.
     * If creation is successful, the browser will be redirected to the 'serviciocreatesteptwo' page.
     * @return mixed
     */
    public function actionAsistenteassign($id)
    {
        $servicio = $this->findServicioModel($id);
        $model = new AsistenteDeServicio();
        if($servicio->cerrado == true)
            return $this->redirect(['facilitador/servicioview', 'id' => $servicio->id, "error"=>"No puede añadir asistentes a un servicio cerrado."]);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['facilitador/servicioview', 'id' => $servicio->id]);
        }
        $model->servicio_id = $servicio->id;
        return $this->render('/servicio/_formasistente', [
            'model' => $model
        ]);
    }
    /**
     * Creates a new Servicio model.
     * If creation is successful, the browser will be redirected to the 'serviciocreatesteptwo' page.
     * @return mixed
     */
    public function actionAsistentedelete($id)
    {
        $asistente = $this->findAsistenteDeServicioModel($id);
        $servicio = $this->findServicioModel($asistente->servicio_id);
        if($servicio->cerrado == true)
            return $this->redirect(['facilitador/servicioview', 'id' => $servicio->id, "error"=>"No puede eliminar asistentes de un servicio cerrado."]);

        if($asistente->asistente->getAsistencias()->count() > 0)
            return $this->redirect(['facilitador/servicioview', 'id' => $asistente->servicio_id, "error"=>"No puede eliminar un asistente con asistencias registradas."]);
        $asistente->delete();
        return $this->redirect(['facilitador/servicioview', 'id' => $asistente->servicio_id]);
    }

    /**
     * Creates a new Servicio model.
     * If creation is successful, the browser will be redirected to the 'serviciocreatesteptwo' page.
     * @return mixed
     */
    public function actionAsistenciacreate($id)
    {
        $sesion = $this->findSesionModel($id);
        $model = new Asistencia();
        $servicio = $this->findServicioModel($sesion->servicio_id);
        if($servicio->cerrado == true)
            return $this->redirect(['facilitador/servicioview', 'id' => $servicio->id, "error"=>"No puede registrar asistencias a un servicio cerrado."]);
        //Dia antes
        // dias validos
        // despues
        $periodo_de_registro = new DateInterval('P1D');
        $fecha_sesion = new DateTime($sesion->fecha);
        $fecha_limite = Date($fecha_sesion->add($periodo_de_registro)->format('Y-m-d'));

        if($sesion->fecha > Date('Y-m-d'))
            return $this->redirect(['facilitador/sesionview', 'id' => $sesion->id, "error"=>"No puede registrar asistencias antes de la sesión."]);

        if(Date('Y-m-d') > $fecha_limite)
            return $this->redirect(['facilitador/sesionview', 'id' => $sesion->id, "error"=>"No puede registrar asistencias despues de 2 dias realizada la sesión."]);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['facilitador/sesionview', 'id' => $sesion->id]);
        }
        $model->sesion_id = $sesion->id;
        return $this->render('/sesion/_formasistencia', [
            'model' => $model,
            'asistentes'=> ArrayHelper::map($sesion->servicio->asistentes,'id','nombrecompleto'),
        ]);
    }

    /**
     * Loads a User model.
     * If creation is successful, the browser will be render to the profile page.
     * @return mixed
     */
    public function actionPerfilview()
    {
        $model = User::findOne(Yii::$app->user->identity->id);
        if($model == null)
            throw new NotFoundHttpException('The requested item does not exist.');
        return $this->render('/user/profile', [
            'model' => $model,
        ]);
    }
    /************************************************************/
    /*********************** Helpers *****************************/
    /************************************************************/

    /**
     * Updates an existing Asistentes model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionGetasistentes()
    {
        $helper = New Helpers();
        return $helper->actionGetasistentes();
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
    protected function findAsistenteModel($id)
    {
        if (($model = Asistente::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested item does not exist.');
    }

    /**
     * Finds the Servicio model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Servicio the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findServicioModel($id)
    {
        if (($model = Servicio::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested item does not exist.');
    }

    /**
     * Finds the Servicio model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Servicio the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findDetalleDeServicioModel($id)
    {
        if (($model = DetalleDeServicio::findOne(['servicio_id'=>$id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested item does not exist. ');
    }

    /**
     * Finds the Servicio model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Servicio the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findAsistenteDeServicioModel($id)
    {
        if (($model = AsistenteDeServicio::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested item does not exist.');
    }

    /**
     * Finds the Servicio model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Servicio the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findSesionModel($id)
    {
        if (($model = Sesion::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested item does not exist.');
    }
    /**
     * Finds the Servicio model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Servicio the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findAsistenciaModel($id)
    {
        if (($model = Asistencia::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested item does not exist.');
    }
    /************************************************************/
    /*********************** ACTIONS *****************************/
    /************************************************************/

    public function afterAction($action, $result)
    {
        if(Yii::$app->user->isGuest)
            $this->redirect(array('site/login'));
        $authorities = ArrayHelper::getColumn( Yii::$app->user->identity->roles, 'authority');
        if (in_array('ROLE_FACILITADOR', array_values($authorities)) || in_array('ROLE_PSICOLOGO', array_values($authorities)))
            return parent::afterAction($action, $result);
        $this->redirect(array('site/index'));
    }
    public function beforeAction($event){
        $module = $this->module->id;
        $controller = $this->id;
        $method = $this->action->id;
        $log = new AppLog();
        $log->user = Yii::$app->user->identity->username;
        $log->module = $module;
        $log->controller = $controller;
        $log->method = $method;
        $log->data = json_encode(array_merge(Yii::$app->request->post(),Yii::$app->request->get()));
        $log->save();

        return parent::beforeAction($event);
    }
}