<?php
namespace app\controllers;

use Yii;
use yii\helpers\ArrayHelper;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use app\models\User;
use app\models\AppLog;
use app\models\Asistente;
use app\models\AsistenteSearchMC;

class McController extends Controller
{
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
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new AsistenteSearchMC();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('/mc/index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
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
        return $this->redirect(['mc/index']);
    }

    /**
     * Displays a single Asistentes model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionAsistenteview($id)
    {
        return $this->render('/asistente/view_mc', [
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
            return $this->redirect(['mc/asistenteview', 'id' => $model->id]);
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
            return $this->redirect(['mc/asistenteview', 'id' => $model->id]);
        }

        return $this->render('/asistente/update', [
            'model' => $model,
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

    /************************************************************/
    /*********************** ACTIONS *****************************/
    /************************************************************/

    public function afterAction($action, $result)
    {
        if(Yii::$app->user->isGuest)
            $this->redirect(array('site/login'));
        $authorities = ArrayHelper::getColumn( Yii::$app->user->identity->roles, 'authority');
        if (!in_array('ROLE_MC', array_values($authorities)))
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