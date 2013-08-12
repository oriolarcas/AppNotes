<?php
/*
 * Data: 9:58:56  15-feb-06
 */

function crea_taula($area)
{
	$aps = apartats_informe($area);
	$vals = text_valoracions();
	
	//$aps[0] reservat per al titol i cicle
	$titol = $aps[0]['titol'];
	$subtitol = $aps[0]['text'];
	
	//Definicions:
	$taula = array('nfil'=>7,'ncol'=>6,'x'=>0,'minh'=>1,'marges'=>0.1);
	$sense_marca = array(array(),array('justificacio'=>'center','vora'=>array(1,'molttrencada','dreta')));
	$sense_marca_nosep = '';
	$amb_marca = array(array(array('X',14)),array('justificacio'=>'center','aliniaciov'=>'center','vora'=>array(1,'molttrencada','dreta')));
	
	$num_notes = count($aps) - 1;
	
	//Encap�alament:
	//T�tol:
	$taula['rows'][0] = array('h'=>3.5,'w'=>array(8,1.6,1.6,1.6,1.6,1.6,1.6),
		'col'=>array(
			0=>array(array(array($titol,16),array($subtitol,14)),array('justificacio'=>'left','vertical'=>false,'vora'=>array(1)))
		));
	
	//Valoracions:
	foreach($vals as $i => $val)
	{
		$taula['rows'][0]['col'][$i] = array(array(array($val,10)),array('justificacio'=>'left','aliniaciov'=>'center','vertical'=>true,'vora'=>array(1)));
	}
	
	//Cos:
	//Apartats:
	
	foreach($aps as $i => $ap)
	{
		if($i == 0) continue;

		$taula['rows'][$i] = array('w'=>array(8,1.6,1.6,1.6,1.6,1.6,1.6),'vora'=>array(1));
				
		$text = array(array($ap['titol'],12));
		$lins = explode("\n",$ap['text']);
		foreach($lins as $lin) $text[] = array($lin,10);
		
		$taula['rows'][$i]['col'] =
			//Columnes de la fila $i 
			array(
				//Columna 0
				0=>array(
					//Text columna 0
					0=>$text,
					//Propietats columna 0
					1=>array('justificacio'=>'full','vora'=>array(1,'solida','dreta'))
				),
				//Columnes 1 -> 5 (predefinides)
				1=>$sense_marca,2=>$sense_marca,3=>$sense_marca,4=>$sense_marca,5=>$sense_marca_nosep
			);	
	}
	
	return array($taula,$amb_marca,$num_notes);
}

function escriu()
{
	global $arees,$pdf,$dades,$NOHIDE,$taula_actitud,$cm2i,$i2cm,$molttrencada,$pH,$marginB,$marginT,$BOUNDS,$pW,$numpagina,$about,$INFO;
	
	if(!isset($arees))
	{
		$GLOBALS['ERRORS'] = true;
		return "<p><b>#PDF ERROR:</b> MISSING PARAMETER<br>\nMissing critical argument <i>arees</i>.</p>";
	}

	foreach($arees as $area)
	{
	
		echo "<p><b>INFO:</b> writing page <i><strong>" . $area[0] . "</strong></i>.</p>"; 
	
		$t_ini = microtime_float();
	
		$taules = array();
	
		//Carrega dades
		$taula_inf = crea_taula($area[1]);
		
		echo "<p>PRE</p>";

		list($taula,$amb_marca,$num_notes) = $taula_inf;
		
		$pdf->newPage();
		
		$notes_posades = true;
		$notes = explode(',',$area[2]);
		
///////////////////////////////
		if (($area[1] == "cascm3" || $area[1] == "cascm4")) {
			$notes[3] = 5;
		}
///////////////////////////////
		
		
		for($i = 0;$i < $num_notes;$i++)
		{
			if($notes[$i] == 5)
			{
				if(!$NOHIDE)
					unset($taula['rows'][$i+1]);
				echo "<p><b>#PDF WARNING:</b> UNSPECIFIED PARAMETER<br>\n<i>'notes[<strong>" . ($i+1) . "</strong>]'</i> is missing on page <i><strong>" . $area[0] . "</strong></i>.</p>";
				$GLOBALS['WARNINGS'] = true;
			}
			else
			{
				if(!isset($notes[$i]) || strlen($notes[$i]) == 0)
					$notes[$i] = -1;
				
				if($notes[$i] >= 0 && $notes[$i] <= 4)
				{
					$taula['rows'][$i+1]['col'][$notes[$i]+1] = $amb_marca;
				}
				else
				{
					echo "<p><b>#PDF WARNING:</b> WRONG PARAMETER<br>\n<i>Wrong or missing value in 'notes[<strong>" . ($i+1) . "</strong>]'</i> on page <i><strong>" . $area[0] . "</strong></i>.</p>";
					$GLOBALS['WARNINGS'] = true;
				}
			}
		}
		
		$taules[] = $taula;
		
		$w = 16;
		$taula_actitud_tmp = $taula_actitud;
		
		$actitud_posada = false;
	
		$actitud = explode(',',$area[4]);
		
		for($i = 0;$i < 6;$i++)
		{
			if(isset($actitud[$i]))
			{
				if($actitud[$i] > 0)
				{
					$taula_actitud_tmp['rows'][0]['col'][$i+1][1]['vora'] = array(1);
					$actitud_posada = true;
				}
			}
		}
		
		if(!$actitud_posada)
		{
			echo "<p><b>#PDF WARNING:</b> UNSPECIFIED OR WRONG PARAMETER<br>\n<i>'actitud'</i> value is either wrong or missing.</p>";
			$GLOBALS['WARNINGS'] = true;
		}
		else
		{
			$taules[] = $taula_actitud_tmp;
		}
		
		$y = 0;
		
		foreach($taules as $taula)
		{	
			if(isset($taula['espaiat'])) $y += $taula['espaiat'];
			foreach($taula['rows'] as $numfil => $fila)
			{
				$x = 0;
				$h = $taula['minh'];
				$fila['wtotal'] = 0;
				foreach($fila['col'] as $numcol => $col)
				{
					$w = $fila['w'][$numcol];
					
					if($col !== '')
					{
						if(isset($fila['h']))
						{
							$h = $fila['h'];
							$pdf->quadreText($col[0],g2lX($x),g2lY($y),$w*$cm2i,$h*$cm2i,$col[1]['justificacio'],$col[1]['vertical'],$taula['marges']*$cm2i,$col[1]['vora'],$col[1]['aliniaciov']);
						}
						else
						{
							if(!isset($col[1]['aliniaciov']))
							{
								$hq = $pdf->filaTextVariable($col[0],g2lX($x),g2lY($y),$w*$cm2i,$col[1]['justificacio'],$taula['marges']*$cm2i);
								if($hq > $h*$cm2i) $h = $hq*$i2cm;
							}
						}
					}
					
					$x += $w;
					$fila['wtotal'] += $w;
				}
				if(!isset($fila['h']))
				{
					$x = 0;
					$pdf->setStrokeColor(0,0,0);
					foreach($fila['col'] as $numcol => $col)
					{
						$w = $fila['w'][$numcol];
						if($col !== '')
						{
							if(isset($col[1]['aliniaciov']))
							{
								$pdf->quadreText($col[0],g2lX($x),g2lY($y),$w*$cm2i,$h*$cm2i,$col[1]['justificacio'],false,$taula['marges']*$cm2i,$col[1]['vora'],$col[1]['aliniaciov']);
							}
							elseif($col[1]['vora'][0] > 0)
							{
								switch($col[1]['vora'][1])
								{
								case 'trencada': $pdf->liniaTrencada($col[1]['vora'][0]); break;
								case 'molttrencada': $pdf->liniaTrencada($col[1]['vora'][0],$molttrencada); break;						
								default: $pdf->liniaSolida($col[1]['vora'][0]);
								}
								switch($col[1]['vora'][2])
								{
								case 'esquerra': $pdf->line(g2lX($x),g2lY($y),g2lX($x),g2lY($y)-$h*$cm2i); break;
								case 'dreta': $pdf->line(g2lX($x)+$w*$cm2i,g2lY($y),g2lX($x)+$w*$cm2i,g2lY($y)-$h*$cm2i); break;
								default: $pdf->rectangle(g2lX($x),g2lY($y),$w*$cm2i,-$h*$cm2i);
								}
							}
						}
						$x += $w;
					}
				}
				if(isset($fila['vora']))
				{
					if($fila['vora'][0] > 0)
					{
						$x = 0;
						switch($fila['vora'][1])
						{
						case 'trencada': $pdf->liniaTrencada($fila['vora'][0]); break;
						default: $pdf->liniaSolida($fila['vora'][0]);
						}
						$pdf->rectangle(g2lX($x),g2lY($y),$fila['wtotal']*$cm2i,-$h*$cm2i);
					}
				}
				$y += $h;
			}
		}
		
		if(strlen(trim($area[3])) > 0)
		{
	
			//Observacions
			$y += 0.2;
	
			$fh = $pdf->getFontHeight(12);
			$pdf->addText(g2lX(0),g2lY($y)-$fh-$pdf->getFontDecender(12),12,'Observacions:');
			
			$y += $fh*$i2cm + 0.25;
			
			$h = $pH - $y - $marginB - $marginT;
			
			if($BOUNDS)
			{
				$pdf->liniaTrencada(1);
				$pdf->rectangle(g2lX(0),g2lY($y),16*$cm2i,-$h*$cm2i);
			}
		
			$pdf->quadreText(array(array($area[3],10)),g2lX(0),g2lY($y),16*$cm2i,$h*$cm2i,'full',false,0,0);
	
		}
	
		$t_fi = microtime_float();
		
		$pdf->addTextWrap(0,($marginB)*$cm2i - $pdf->getFontHeight(10) - $pdf->getFontDecender(10),$pW*$cm2i,10,$dades[0] . ' ' . $dades[1] . ' ' . $dades[2] . ' - ' . $dades[4] . ' de Prim�ria','center');
	
		$fh = $pdf->getFontHeight(10);
	
		$pdf->addTextWrap(0,($marginB)*$cm2i - $fh - $pdf->getFontHeight(10) - $pdf->getFontDecender(10),$pW*$cm2i,10,'P�gina ' . $numpagina,'center');
	
		if($INFO)
		{
			$pdf->addTextWrap(0,($marginB - 0.25)*$cm2i - $pdf->getFontHeight(10) - $pdf->getFontDecender(10),$pW*$cm2i,10,$about . ' Runtime: '. round($t_fi - $t_ini,4) .' s','center');
		}
	
		$numpagina++;
	
		echo "<p>POST</p>";
	}
}
?>
