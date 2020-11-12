<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\Response;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use yii\helpers\ArrayHelper;

class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
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
        if(isset(Yii::$app->user->identity->roles)){
            $authorities = ArrayHelper::getColumn( Yii::$app->user->identity->roles, 'authority');
            if (in_array('ROLE_ADMIN', array_values($authorities)))
                $this->redirect(array('admin/index'));
            else if (in_array('ROLE_FACILITADOR', array_values($authorities)))
                $this->redirect(array('facilitador/index'));
            else if (in_array('ROLE_PSICOLOGO', array_values($authorities)))
                $this->redirect(array('facilitador/index'));
            else if (in_array('ROLE_MC', array_values($authorities)))
                $this->redirect(array('mc/index'));
            else if (in_array('ROLE_AA', array_values($authorities)))
                $this->redirect(array('apoyoadmin/index'));
            else{
                Yii::$app->user->logout();
                $this->redirect(array('site/login'));
            }
        }else{
            $this->redirect(array('site/login'));
        }
    }

    /**
     * Login action.
     *
     * @return Response|string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }

        $model->password = '';
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    /**
     * Logout action.
     *
     * @return Response
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /************************************************************/
    /*********************** ACTIONS *****************************/
    /************************************************************/

    public function afterAction($action, $result){
        return parent::afterAction($action, $result);
    }
}
