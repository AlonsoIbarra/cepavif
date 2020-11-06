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
use app\models\LogSearch;
use app\models\Rol;
use app\models\TipoDeServicio;
use app\models\User;
use app\models\UserSearch;
use app\models\Asistente;
use app\models\AsistenteSearch;
use app\models\Servicio;
use app\models\ServicioSearch;
use app\models\DetalleDeServicio;
use app\models\Sesion;
use app\models\FacilitadorDeServicio;
use app\models\AsistenteDeServicio;
use app\models\Asistencia;
use app\models\Constancia_WORD;
use app\models\ChangePasswordForm;

class AdminController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [];
    }

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
        $searchModel = new LogSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('/admin/index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /************************************************************/
    /*********************USER ACTIONS **************************/
    /************************************************************/
    /**
     * Displays Users list.
     *
     * @return string
     */
    public function actionUsuarios()
    {
        $searchModel = new UserSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('/user/index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    /**
     * Displays a single User model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUserview($id)
    {
        return $this->render('/user/view', [
            'model' => $this->findUserModel($id),
        ]);
    }

    /**
     * Displays a single User model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUsercreate()
    {
        $model = new User();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['/admin/userview', 'id' => $model->id]);
        }

        return $this->render('/user/create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing User model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUserupdate($id)
    {
        $model = $this->findUserModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['/admin/userview', 'id' => $model->id]);
        }

        return $this->render('/user/update', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing User model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUseraddrol($id)
    {
        $model = new Rol();
        $model->user_id = $id;

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['/admin/userview', 'id' => $id]);
        }

        return $this->render('/user/createRol', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Asistentes model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUserroldelete($id)
    {
       $rol = $this->findRolModel($id);
       $rol->delete();

        return $this->redirect(['admin/userview', 'id'=>$rol->user_id]);
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
        return $this->render('/asistente/view', [
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
            return $this->redirect(['admin/asistenteview', 'id' => $model->id]);
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
            return $this->redirect(['admin/asistenteview', 'id' => $model->id]);
        }

        return $this->render('/asistente/update', [
            'model' => $model,
        ]);
    }

    /************************************************************/
    /*******************SERVICIOS ACTIONS************************/
    /************************************************************/
    /**
     * Lists all Servicio models.
     * @return mixed
     */
    public function actionServicios()
    {
        $searchModel = new ServicioSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('/servicio/index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

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
            return $this->redirect(['admin/serviciocreatesteptwo', 'id' => $model->id]);
        }
        return $this->render('/servicio/create', [
            'model' => $model,
            'tiposDeServicioList'=> ArrayHelper::map(TipoDeServicio::find()->all(),'id','nombre'),
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
            return $this->redirect(['admin/servicioview', 'id' => $servicio->id]);
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

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['admin/servicioupdatesteptwo', 'id' => $model->id]);
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

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['admin/servicioview', 'id' => $servicio->id]);
        }
        $model->servicio_id = $servicio->id;
        return $this->render('/servicio/update_detalle', [
            'servicio' => $servicio,
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
    public function actionServiciodelete($id)
    {
        $servicio = $this->findServicioModel($id);
        if($servicio->getSesiones()->count() > 0 )
            return $this->redirect(['admin/servicioview',"id"=> $id, "error"=>"No puede eliminar un servicio con sesiones registradas."]);

        if($servicio->getFacilitadores()->count() > 0 )
            return $this->redirect(['admin/servicioview',"id"=> $id,"error"=>"No puede eliminar un servicio con facilitadores registrados."]);

        if($servicio->getAsistentes()->count() > 0 )
            return $this->redirect(['admin/servicioview',"id"=> $id,"error"=>"No puede eliminar un servicio con asistentes registrados."]);

        $servicio->delete();
        return $this->redirect(['admin/servicios']);

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
     * Creates a new Servicio model.
     * If creation is successful, the browser will be redirected to the 'serviciocreatesteptwo' page.
     * @return mixed
     */
    public function actionSesioncreate($id)
    {
        $servicio = $this->findServicioModel($id);
        $model = new Sesion();
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['admin/servicioview', 'id' => $servicio->id]);
        }
        $model->servicio_id = $servicio->id;
        return $this->render('/sesion/create', [
            'model' => $model,
        ]);
    }

    /**
     * Creates a new Servicio model.
     * If creation is successful, the browser will be redirected to the 'serviciocreatesteptwo' page.
     * @return mixed
     */
    public function actionSesiondelete($id)
    {
        $sesion = $this->findSesionModel($id);
        if($sesion->getAsistencias()->count() > 0)
            return $this->redirect(['admin/sesionview', 'id' => $sesion->id, "error"=>"No puede eliminar una sesion con asistencias registradas."]);
        $sesion->delete();
        return $this->redirect(['admin/servicioview', 'id' => $sesion->servicio->id]);
    }
    /**
     * Creates a new Servicio model.
     * If creation is successful, the browser will be redirected to the 'serviciocreatesteptwo' page.
     * @return mixed
     */
    public function actionFacilitadorassign($id)
    {
        $servicio = $this->findServicioModel($id);
        $model = new FacilitadorDeServicio();
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['admin/servicioview', 'id' => $servicio->id]);
        }
        $model->servicio_id = $servicio->id;
        return $this->render('/servicio/_formfacilitador', [
            'model' => $model,
            'facilitadores'=> ArrayHelper::map(User::find()
                ->joinWith('roles')
                ->where(['authority'=>'ROLE_FACILITADOR'])
                ->orWhere(['authority'=>'ROLE_PSICOLOGO'])
                ->all(),'id','nombrecompleto'),
        ]);
    }
    /**
     * Creates a new Servicio model.
     * If creation is successful, the browser will be redirected to the 'serviciocreatesteptwo' page.
     * @return mixed
     */
    public function actionFacilitadordelete($id)
    {
        $facilitador = $this->findFacilitadorDeServicioModel($id);
        $facilitador->delete();

        return $this->redirect(['admin/servicioview', 'id' => $facilitador->servicio_id]);
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
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['admin/servicioview', 'id' => $servicio->id]);
        }
        $model->servicio_id = $servicio->id;
        return $this->render('/servicio/_formasistente', [
            'model' => $model,
            //'asistentes'=> ArrayHelper::map(Asistente::find()->all(),'id','nombre'),
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
        if($asistente->asistente->getAsistencias()->count() > 0)
            return $this->redirect(['admin/servicioview', 'id' => $asistente->servicio_id, "error"=>"No puede eliminar un asistente con asistencias registradas."]);
        $asistente->delete();
        return $this->redirect(['admin/servicioview', 'id' => $asistente->servicio_id]);
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
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['admin/sesionview', 'id' => $sesion->id]);
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
        $model = $this->findUserModel(Yii::$app->user->identity->id);
        return $this->render('/user/profile', [
            'model' => $model,
        ]);
    }

    /**
     * Loads a change password form.
     * If creation is successful, the browser will be render to the profile page.
     * @return mixed
     */
    public function actionUserupdatepassword(){
    $model = new ChangePasswordForm;
    if(isset($_POST['ajax']) && $_POST['ajax']==='login-form'){
      echo CActiveForm::validate($model);
      Yii::app()->end();
    }
    // collect user input data
    if(isset($_POST['ChangePasswordForm'])){

      $model->attributes=$_POST['ChangePasswordForm'];

      // Validar input del usuario y cambiar contraseña.

      if($model->validate() && $model->changePassword()){
        return $this->redirect(['/admin/perfilview', 'success' =>"Contraseña cambiada con éxito."]);
      }

    }

    // Mostrar formulario de cambio de contraseña.

    $this->render('/user/changePassword',array('model'=>$model));

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
    /**
     * Updates an existing Asistentes model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDatagraphs()
    {
        return $this->render('/graphs/index');
    }
    /*****************************************************************************************/
    /*********************** CERTIFICADO DE ASISTENCIAS EN WORD  *****************************/
    /*****************************************************************************************/

    /**
     * Deletes an existing Servicio model.
     * If document is successfuly created, the browser will be redirected to the same page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionConstanciadeasistencias($id)
    {
        $helper = New Helpers();
        return $helper->actionConstanciadeasistencias($id);
    }
    /************************************************************/
    /*********************** MODELS *****************************/
    /************************************************************/
    /**
     * Finds the User model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return User the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findUserModel($id)
    {
        if (($model = User::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested item does not exist.');
    }


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
        }else{
            $model = new DetalleDeServicio();
            $model->servicio_id = $id;
            $model->save();
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
    protected function findRolModel($id)
    {
        if (($model = Rol::findOne($id)) !== null) {
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
    protected function findFacilitadorDeServicioModel($id)
    {
        if (($model = FacilitadorDeServicio::findOne($id)) !== null) {
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
    /************************************************************/
    /*********************** ACTIONS *****************************/
    /************************************************************/

    public function afterAction($action, $result)
    {
        if(Yii::$app->user->isGuest)
            $this->redirect(array('site/login'));
        $authorities = ArrayHelper::getColumn( Yii::$app->user->identity->roles, 'authority');
        if (!in_array('ROLE_ADMIN', array_values($authorities)))
            $this->redirect(array('site/index'));
        return parent::afterAction($action, $result);
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