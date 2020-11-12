<?php 

namespace app\models;

use Yii;
use app\models\Asistente;
use app\models\Asistencia;

/** 
 * Convert HTML to MS Word document 
 * @name HTML_TO_DOC 
 * @version 2.0 
 * @author CodexWorld 
 * @link https://www.codexworld.com 
 */ 
class Constancia_WORD 
{ 
    private $asistente  = null;
    private $phpWord = null;
    private $path = null;
    private $file_name = null;
    private $url_template_constancia ='Template_constancia.docx';
    private $templateProcessor = null;
     
    /** 
     * Constructor 
     * 
     * @return void 
     */ 
    function __construct($asistente ){ 
        require_once Yii::$app->basePath."/vendor/phpoffice/phpword/bootstrap.php";
        $this->asistente = $asistente;
        $this->phpWord = new \PhpOffice\PhpWord\PhpWord();
       $this->path = Yii::$app->basePath."/temp/";
       $this->file_name = "Constancia_".str_replace(' ','',ucfirst($this->asistente->nombre).ucfirst($this->asistente->apellido_paterno)).".docx";
    }

    function construct(){

        $this->templateProcessor = new \PhpOffice\PhpWord\TemplateProcessor($this->path.$this->url_template_constancia);
        $causa_penal = $this->asistente->numero_de_causa;
        if($this->asistente->sexo === 'M'){
            $nombre_completo = 'la C. '.$this->asistente->getNombrecompleto();
        }else{
            $nombre_completo = 'el C. '.$this->asistente->getNombrecompleto();
        }
        $asistencias = $this->asistente->getAsistencias()->count();
        if($asistencias==1){
            $primer_asistencia = Asistencia::find()->where(['like', 'asistente_id', $this->asistente->id])->orderBy(['id' => SORT_ASC])->one();
            $concentrado_de_fechas = $this->getFechasDeAsistencia($this->asistente);
            $asistencias_text =' acudió al Centro Estatal de Prevención y Atención de la Violencia Familiar y de Género el día '.$this->getFecha($primer_asistencia->fecha_de_registro).', donde se acordó que asistiría una vez por semana, ha asistido a '.$asistencias.' de las  25 sesiones que consta la “Intervención en Reeducación para Víctimas y Agresores en casos de Violencia de Pareja” en la siguiente fecha: '.$this->getFecha($primer_asistencia->fecha_de_registro).'.';

        }else if($asistencias>1){
            $primer_asistencia = Asistencia::find()->where(['like', 'asistente_id', $this->asistente->id])->orderBy(['id' => SORT_ASC])->one();
            $concentrado_de_fechas = $this->getFechasDeAsistencia($this->asistente);
            $asistencias_text =' acudió al Centro Estatal de Prevención y Atención de la Violencia Familiar y de Género el día '.$this->getFecha($primer_asistencia->fecha_de_registro).', donde se acordó que asistiría una vez por semana, ha asistido a '.$asistencias.' de las 25 sesiones que consta la “Intervención en Reeducación para Víctimas y Agresores en casos de Violencia de Pareja” en las siguientes fechas: '.$concentrado_de_fechas.'.';

        }else{
            $asistencias_text =' no se ha presentado a CEPAVIF, por lo que no ha asistido a ninguna de las 25 sesiones que consta la “Intervención en Reeducación para Víctimas y Agresores en casos de Violencia de Pareja”.';
        }
        
        $contenido = 'En respuesta a su solicitud con causa penal '.$causa_penal.', hago de su conocimiento que '.$nombre_completo.','.$asistencias_text;

        $this->templateProcessor->setValue('folio', '0000');
        $this->templateProcessor->setValue('fecha',  'a '.$this->getFecha(date('Y-m-d')));
        $this->templateProcessor->setValue('supervisora', $this->asistente->supervisor);
        $this->templateProcessor->setValue('contenido', $contenido);
    }
    function getFechasDeAsistencia($asistente){
        $result= '';
        for ($i = 0; $i < $asistente->getAsistencias()->count(); $i++) {
            if(isset($asistente->asistencias[$i+1]) && 
                (date("m", strtotime($asistente->asistencias[$i]->sesion->fecha)) === date("m", strtotime($asistente->asistencias[$i+1]->sesion->fecha)))){
                if((!isset($asistente->asistencias[$i+2])) || (isset($asistente->asistencias[$i+2]) && 
                    (date("m", strtotime($asistente->asistencias[$i]->sesion->fecha)) !== date("m", strtotime($asistente->asistencias[$i+2]->sesion->fecha)))))
                    $result .= date("d", strtotime($asistente->asistencias[$i]->sesion->fecha)).' y ';                
                else
                    $result .= date("d", strtotime($asistente->asistencias[$i]->sesion->fecha)).', ';                
            }else{
                if(!isset($asistente->asistencias[$i+1]))
                    $result .= $this->getFecha($asistente->asistencias[$i]->sesion->fecha);
                else
                    $result .= $this->getFecha($asistente->asistencias[$i]->sesion->fecha).'; ';                
            }
        }
        return $result;
    }
   function getFecha($fecha){
        $timestamp = strtotime($fecha);
        $result = date("d", $timestamp)." de ";
        switch (date("m", $timestamp)) {
            case '01':
                $result .= "Enero del ";
                break;
            case '02':
                $result .= "Febrero del ";
                break;
            case '03':
                $result .= "Marzo del ";
                break;
            case '04':
                $result .= "Abril del ";
                break;
            case '05':
                $result .= "Mayo del ";
                break;
            case '06':
                $result .= "Junio del ";
                break;
            case '07':
                $result .= "Julio del ";
                break;
            case '08':
                $result .= "Agosto del ";
                break;
            case '09':
                $result .= "Septiembre del ";
                break;
            case '10':
                $result .= "Octubre del ";
                break;
            case '11':
                $result .= "Noviembre del ";
                break;
            case '12':
                $result .= "Diciembre del ";
                break;
        }
        $result .= date("Y", $timestamp);
        return $result;
   }
    function download(){
        $uri = $this->path.$this->file_name;
        $this->templateProcessor->saveAs($uri);
        if (file_exists($uri)){
            Yii::$app->response->sendFile($uri);
            unlink ($uri);
        }
        return 0;
    } 
}