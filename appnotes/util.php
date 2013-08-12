<?php

require_once("ecrire/base/abstract_sql.php");

function get_cursos() {
	return array(1=>"1r", 2=>"2n", 3=>"3r", 4=>"4t", 5=>"5è", 6=>"6è");
}

function get_valoracions() {
	return array(-1=>"Sense valoració", 0=>"Ocult",
		1=>"Insuficient", 2=>"Suficient", 3=>"Bé", 4=>"Notable", 5=>"Excel·lent");
}

function get_actituds() {
	return array(0=>"Atenta", 1=>"Passiva", 2=>"Interessada",
		3=>"Desinteressada", 4=>"D'esforç", 5=>"Variable");
}

function segalumne($id) {
	$segid = -1;
	$classe = sql_fetsel("classe", "alumnes", "id = ".$id);
	$res = sql_select("id", "alumnes", "classe = ".$classe["classe"], array(), array("cognom1", "cognom2", "nom"));
	while($al = sql_fetch($res)) {
		if ($al["id"] == $id) {
			if ($al = sql_fetch($res))
				$segid = $al["id"];
			break;
		}
	}
	
	return $segid;
}

function segarea($id) {
	$segarea = -1;
	$curs = sql_fetsel("curs", "arees", "id = ".$id);
	$res = sql_select("id", "arees", "curs = ".$curs["curs"]);
	while($area = sql_fetch($res)) {
		if ($area["id"] == $id) {
			if ($area = sql_fetch($res))
				$segarea = $area["id"];
			break;
		}
	}
	
	return $segarea;
}

//dades($id) return array(Nom, Cognom1, Cognom2, nivell personal, Nom Classe, Curs, array(Nom tutors))
function dades($id) {
	$al = sql_fetsel("*", "alumnes", "id = ".$id);
	$classe = sql_fetsel("*", "classes", "id = ".$al["classe"]);
	$id_autor = $al['tutor'];
	//$id_autor = 2;
	$tutor = sql_fetsel("nom", "spip_auteurs", "id_auteur = ".$id_autor);
	return array($al["nom"], $al["cognom1"], $al["cognom2"], $al["nivellpers"], 
		$classe["nom"], $classe["curs"], array($tutor["nom"]));
		
}

// array(data)
function dades_informe() {
	return array("Juny 2011");
}

function arees($id) {
	$arees = array();
	$res = sql_select("*", "informes", "alumne = ".$id);
	while ($row = sql_fetch($res)) {
			$row2 = sql_fetsel(array("id", "nom"), "arees", "id = ".$row['area']);
			$res2 = sql_select("id", "plantilles",
				array("area = ".$row['area'], "ordre > 0"),
				array(), "ordre");
			$notes = array();
			while ($tema = sql_fetch($res2)) {
				$nota = sql_fetsel(array("nota"), "notes",
					array("alumne = ".$id, "tema = ".$tema['id']));
				$notes[] = $nota["nota"];
			}
			$arees[] = array($row2['id'], $row2['nom'], $notes, $row['obser'], $row['actitud']);
	}
	return $arees;

}

function apartats_informe($area) {
	$res = sql_select("titol, text, buit", "plantilles", "area = ".$area, array(), "ordre");
	$ap = array();
	while($a = sql_fetch($res)) {
		$ap[] = array('titol'=>$a['titol'],'text'=>$a['text'],'buit'=>$a['buit']);
	}
	return $ap;	
}

function to_ansi($s) {
	$ns = "";
	for ($i = 0; $i < strlen($s); $i++) {
		$a = $s[$i];
		$c = ord($a);
		if ($c < 48 || ($c > 57 && $c < 65) || ($c > 90 && $c < 97) || $c > 122) {
			switch ($c) {
			case 32:
			case 39:  // '
			case 44:  // ,
				$a = '_';
				break;
			case 45:  // -
			case 46:  // .
			case 95:  // _
				break;
			case 192: 
			case 193:
			case 194:
			case 195:
			case 196:
			case 197:
				$a = 'A';
				break;
			case 199:
				$a = 'C';
			case 200:
			case 201:
			case 202:
			case 203:
				$a = 'E';
				break;
			case 204:
			case 205:
			case 206:
			case 207:
				$a = 'I';
				break;
			case 209:
				$a = 'N';
				break;
			case 210:
			case 211:
			case 212:
			case 213:
			case 214:
				$a = 'O';
				break;
			case 217:
			case 218:
			case 219:
			case 220:
				$a = 'U';
				break;
			case 224:
			case 225:
			case 226:
			case 227:
			case 228:
			case 229:
				$a = 'a';
				break;
			case 231:
				$a = 'c';
				break;
			case 232:
			case 233:
			case 234:
			case 235:
				$a = 'e';
				break;
			case 236:
			case 237:
			case 238:
			case 239:
				$a = 'i';
				break;
			case 241:
				$a = 'n';
				break;
			case 242:
			case 243:
			case 244:
			case 245:
			case 246:
				$a = 'o';
				break;
			case 249:
			case 250:
			case 251:
			case 252:
				$a = 'u';
				break;
			default:
				$a = '';
			}
		}
		$ns .= $a;
	}
	return $ns;
}

function nom_fitxer_informe($id) {
	$al = sql_fetsel("*", "alumnes", "id = ".$id);

	$nom = to_ansi($al['nom']);
	$c1 = to_ansi($al['cognom1']);
	$c2 = to_ansi($al['cognom2']);

	$f = substr($c1.'_'.$c2.'_'.$nom, 0, 30);
	
	return $f.$id.".pdf";
}

function nom_canonic_classe($id) {
	$row = sql_fetsel("nom", "classes", "id = ".$id);
	return to_ansi($row['nom']);
}

function get_mots_auteur($id) {
	$mots = array();
	$res = sql_select("id_mot", "spip_mots_auteurs", "id_auteur = ".$id);
	while ($m = sql_fetch($res)) {
		$mots[] = $m['id_mot'];
	}
	return $mots;
}

function check_access($id_alumne, $id_area, $id_curs, $id_auteur) {
	$auto = false;
	$permisos = get_mots_auteur($id_auteur);
	if ($id_alumne != -1) {
		$tut = sql_fetsel(array("tutor", "tutor2"), "alumnes", "id = ".$id_alumne);
		if ($assig === false)
			$auto = false;
		else {
			$auto = ($tut['tutor'] == $id_auteur) || ($tut['tutor2'] == $id_auteur);
			if (!$auto && $id_area != -1) {
				$auto = true;
				$al = sql_fetsel("classe", "alumnes", "id = ".$id_alumne);
				if ($al !== false) {
					$classe = sql_fetsel("id_mot", "classes", "id = ".$al['classe']);
				} else {
					$auto = false;
				}
				if ($auto) {
					$area = sql_fetsel(array("id_mot"), "arees", "id = ".$id_area);
					if ($area === false)
						$auto = false;
					else
						$auto = in_array($classe['id_mot'], $permisos) &&
							in_array($area['id_mot'], $permisos);
				}
			}
		}
	} else if ($id_classe != -1) {
		$assig = sql_fetsel(array("id_mot"), "classes", "id = ".$id_classe);
		if ($assig === false)
			$auto = false;
		else
			$auto = in_array($assig['id_mot'], $permisos);
	}
	return $auto;
}

?>
