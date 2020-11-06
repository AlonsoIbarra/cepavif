<?php

namespace app\models;

use Yii;
use \yii\base\NotSupportedException;
use \yii\helpers\Security;

/**
 * This is the model class for table "users".
 *
 * @property int $id
 * @property string $username
 * @property string $password
 * @property int $enabled
 * @property string $nombre
 * @property string $apellido_paterno
 * @property string|null $apellido_materno
 * @property string|null $ultimo_acceso
 * @property string $accessToken
 * @property string $authKey
 *
 * @property Authorities[] $authorities
 * @property OficiosSolicitados[] $oficiosSolicitados
 * @property UsersServicios[] $usersServicios
 * @property DetalleDeServicio[] $servicios
 */
class User extends \yii\db\ActiveRecord implements \yii\web\IdentityInterface
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'users';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['username', 'nombre', 'apellido_paterno', 'enabled'], 'required'],
            [['enabled'], 'integer'],
            [['ultimo_acceso'], 'safe'],
            [['username'], 'string', 'max' => 50],
            [['password'], 'string', 'max' => 64],
            [['nombre'], 'string', 'max' => 40],
            [['apellido_paterno', 'apellido_materno'], 'string', 'max' => 30],
            [['accessToken', 'authKey'], 'string', 'max' => 65],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'username' => 'Username',
            'password' => 'Contraseña',
            'enabled' => 'Habilitada',
            'nombre' => 'Nombre',
            'apellido_paterno' => 'Apellido Paterno',
            'apellido_materno' => 'Apellido Materno',
            'ultimo_acceso' => 'Ultimo Acceso',
            'accessToken' => 'Token de acceso',
            'authKey' => 'Llave de authorización',
        ];
    }

    /**
     * Gets query for [[Authorities]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getRoles()
    {
        return $this->hasMany(Rol::className(), ['user_id' => 'id']);
    }

    /**
     * Gets query for [[UsersServicios]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUsersServicios()
    {
        return $this->hasMany(UsersServicios::className(), ['user_id' => 'id']);
    }

    /**
     * Gets query for [[Servicios]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getServicios()
    {
        return $this->hasMany(DetalleDeServicio::className(), ['id' => 'servicio_id'])->viaTable('users_servicios', ['user_id' => 'id']);
    }

    public static function findIdentity($id)
    {
        return static::findOne($id);
    }

    public static function findIdentityByAccessToken($token, $type = null)
    {
        return static::findOne(['access_token' => $token, 'enabled'=>1]);
    }

    public static function findByUsername($username)
    {
        return static::findOne(['username' => $username, 'enabled'=>1]);
    }

    public function getId()
    {
        return $this->id;
    }

    public function getAuthKey()
    {
        return $this->authKey;
    }

    public function validatePassword($password)
    {
        return password_verify($password, $this->password);
    }

    public function setPassword($password)
    {
        return $this->password = md5($password);
    }

    public function validateAuthKey($authKey)
    {
        return $this->authKey === $authKey;
    }
    
    public function setLastLogin()

    {

        $this->ultimo_acceso = date('Y-m-d H:i:s');

        $this->save();

    }

    /**
     *
     * @return String
     */
    public function getNombrecompleto()
    {
        return $this->nombre." ".$this->apellido_paterno." ".$this->apellido_materno;
    }

    public function beforeSave($insert)
    {
        if (!parent::beforeSave($insert)) {
            return false;
        }
     if ($this->isNewRecord){
        $hash = Yii::$app->getSecurity()->generatePasswordHash($this->username);
         $this->password = $hash;
        $this->accessToken = substr(bin2hex(random_bytes(64)),0,64); 
        $this->authKey = substr(bin2hex(random_bytes(64)),0,64); 
         $this->password = $hash;
     }
        return true;
    }
}
