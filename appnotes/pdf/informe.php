<?php

require_once("ecrire/inc/autoriser.php");
require_once('appnotes/util.php');
require_once('appnotes/pdf/pdf/class.ezpdf.php');

function microtime_float()
{
   list($useg, $seg) = explode(" ", microtime());
   return ((float)$useg + (float)$seg);
}

function valorParametre($nom, $defecte, $boolea=false)
{
	if(isset($_POST[$nom]))
	{
		if($boolea)
			return true;
		return $_POST[$nom];
	}
	elseif(isset($_GET[$nom]))
	{
		if($boolea)
			return true;
		return $_GET[$nom];
	}
	else
	{
		return $defecte;
	}
}

function retorna()
{
	global $RETURN;
	ob_end_clean();
	header('Location: ' . $RETURN);
	exit();
}

function desaLog($logf)
{
	$f = fopen($logf,'a');
	$log = ob_get_contents()."\n";
	fwrite($f,$log);
	fclose($f);
	return;
}

class informe extends Cezpdf {

	function informe($paper='a4',$orientation='portrait'){
		// Assuming that people don't want to specify the paper size using the absolute coordinates
		// allow a couple of options:
		// orientation can be 'portrait' or 'landscape'
		// or, to actually set the coordinates, then pass an array in as the first parameter.
		// the defaults are as shown.
		// 
		// -------------------------
		// 2002-07-24 - Nicola Asuni (info@tecnick.com):
		// Added new page formats (45 standard ISO paper formats and 4 american common formats)
		// paper cordinates are calculated in this way: (inches * 72) where 1 inch = 2.54 cm
		// 
		// Now you may also pass a 2 values array containing the page width and height in centimeters
		// -------------------------
	
		if (!is_array($paper)){
			switch (strtoupper($paper)){
				case '4A0': {$size = array(0,0,4767.87,6740.79); break;}
				case '2A0': {$size = array(0,0,3370.39,4767.87); break;}
				case 'A0': {$size = array(0,0,2383.94,3370.39); break;}
				case 'A1': {$size = array(0,0,1683.78,2383.94); break;}
				case 'A2': {$size = array(0,0,1190.55,1683.78); break;}
				case 'A3': {$size = array(0,0,841.89,1190.55); break;}
				case 'A4': default: {$size = array(0,0,595.28,841.89); break;}
				case 'A5': {$size = array(0,0,419.53,595.28); break;}
				case 'A6': {$size = array(0,0,297.64,419.53); break;}
				case 'A7': {$size = array(0,0,209.76,297.64); break;}
				case 'A8': {$size = array(0,0,147.40,209.76); break;}
				case 'A9': {$size = array(0,0,104.88,147.40); break;}
				case 'A10': {$size = array(0,0,73.70,104.88); break;}
				case 'B0': {$size = array(0,0,2834.65,4008.19); break;}
				case 'B1': {$size = array(0,0,2004.09,2834.65); break;}
				case 'B2': {$size = array(0,0,1417.32,2004.09); break;}
				case 'B3': {$size = array(0,0,1000.63,1417.32); break;}
				case 'B4': {$size = array(0,0,708.66,1000.63); break;}
				case 'B5': {$size = array(0,0,498.90,708.66); break;}
				case 'B6': {$size = array(0,0,354.33,498.90); break;}
				case 'B7': {$size = array(0,0,249.45,354.33); break;}
				case 'B8': {$size = array(0,0,175.75,249.45); break;}
				case 'B9': {$size = array(0,0,124.72,175.75); break;}
				case 'B10': {$size = array(0,0,87.87,124.72); break;}
				case 'C0': {$size = array(0,0,2599.37,3676.54); break;}
				case 'C1': {$size = array(0,0,1836.85,2599.37); break;}
				case 'C2': {$size = array(0,0,1298.27,1836.85); break;}
				case 'C3': {$size = array(0,0,918.43,1298.27); break;}
				case 'C4': {$size = array(0,0,649.13,918.43); break;}
				case 'C5': {$size = array(0,0,459.21,649.13); break;}
				case 'C6': {$size = array(0,0,323.15,459.21); break;}
				case 'C7': {$size = array(0,0,229.61,323.15); break;}
				case 'C8': {$size = array(0,0,161.57,229.61); break;}
				case 'C9': {$size = array(0,0,113.39,161.57); break;}
				case 'C10': {$size = array(0,0,79.37,113.39); break;}
				case 'RA0': {$size = array(0,0,2437.80,3458.27); break;}
				case 'RA1': {$size = array(0,0,1729.13,2437.80); break;}
				case 'RA2': {$size = array(0,0,1218.90,1729.13); break;}
				case 'RA3': {$size = array(0,0,864.57,1218.90); break;}
				case 'RA4': {$size = array(0,0,609.45,864.57); break;}
				case 'SRA0': {$size = array(0,0,2551.18,3628.35); break;}
				case 'SRA1': {$size = array(0,0,1814.17,2551.18); break;}
				case 'SRA2': {$size = array(0,0,1275.59,1814.17); break;}
				case 'SRA3': {$size = array(0,0,907.09,1275.59); break;}
				case 'SRA4': {$size = array(0,0,637.80,907.09); break;}
				case 'LETTER': {$size = array(0,0,612.00,792.00); break;}
				case 'LEGAL': {$size = array(0,0,612.00,1008.00); break;}
				case 'EXECUTIVE': {$size = array(0,0,521.86,756.00); break;}
				case 'FOLIO': {$size = array(0,0,612.00,936.00); break;}
			}
			switch (strtolower($orientation)){
				case 'landscape':
					$a=$size[3];
					$size[3]=$size[2];
					$size[2]=$a;
					break;
			}
		} else {
			if (count($paper)>2) {
				// then an array was sent it to set the size
				$size = $paper;
			}
			else { //size in centimeters has been passed
				$size[0] = 0;
				$size[1] = 0;
				$size[2] = ( $paper[0] / 2.54 ) * 72;
				$size[3] = ( $paper[1] / 2.54 ) * 72;
			}
		}
		$this->Cpdf($size);
		$this->ez['pageWidth']=$size[2];
		$this->ez['pageHeight']=$size[3];
		
		// also set the margins to some reasonable defaults
		$this->ez['topMargin']=30;
		$this->ez['bottomMargin']=30;
		$this->ez['leftMargin']=30;
		$this->ez['rightMargin']=30;
		
		// set the current writing position to the top of the first page
		$this->y = $this->ez['pageHeight']-$this->ez['topMargin'];
		// and get the ID of the page that was created during the instancing process.
		$this->ezPages[1]=$this->getFirstPageId();
		$this->ezPageCount=1;
	}
	
	function liniaTrencada($mida,$dash='')
	{
		if(!is_array($dash))
		{
			$dash = array(4,4);
		}
		$this->setStrokeColor(0,0,0);
		$this->setLineStyle($mida,'square','',$dash);	
	}
	
	function liniaSolida($mida)
	{
		$this->setStrokeColor(0,0,0);
		$this->setLineStyle($mida,'','',array(50,0));
	}
	
	function trencaLinia($text,$mida,$w)
	{
		$i = 0;
		$ww = -1;
		$wi = -1;
		$wraps = array(" ","\t");
		$rets = array("\n","\r");
		$linies = array();
		while(strlen(trim($text)) > 0)
		{
			if(in_array(substr($text,$i,1),$rets))
			{
				$linies[] = substr($text,0,$i);
				$text = substr($text,$i+1);
				$i = 0;
				$wi = 0;
				$ww = -1;
			}
			if($i >= strlen($text))
			{
				$linies[] = $text;
				$text = '';
				break;
			}
			if($ww < $w)
			{
				$i++;
				if(in_array(substr($text,$i,1),$wraps))
					$wi = $i;
				$ww = $this->getTextWidth($mida,substr($text,0,$i));
			}
			else
			{
				if($wi <= -1 || $this->getTextWidth($mida,substr($text,0,$wi-1)) > $w)
				{
					//trenca per l'últim caràcter que hi cap
					$wi = $i;
					while($this->getTextWidth($mida,substr($text,0,$wi+1)) > $w)
						$wi--;
					$linies[] = substr($text,0,$wi+1);
					$text = substr($text,$wi+1);
				}
				else
				{
					$linies[] = substr($text,0,$wi);
					$text = substr($text,$wi+1);
				}

				$i = 0;
				$wi = 0;
				$ww = -1;
			}
		}
		return $linies;
	}
	
	function quadreText($text,$x,$y,$w,$h,$justificacio,$vertical=false,$marge=0,$vora=0,$aliniacio='top')
	{
		global $molttrencada;
		if($vora[0] > 0)
		{
			switch($vora[1])
			{
			case 'trencada': $this->liniaTrencada($vora[0]); break;
			case 'molttrencada': $this->liniaTrencada($vora[0],$molttrencada); break;							
			default: $this->liniaSolida($vora[0]);
			}
			switch($vora[2])
			{
			case 'esquerra': $this->line($x,$y,$x,$y-$h); break;
			case 'dreta': $this->line($x+$w,$y,$x+$w,$y-$h); break;
			default: $this->rectangle($x,$y,$w,-$h);
			}
		}
		
		$w -= $marge * 2;
		$h -= $marge * 2;
			
		$x += $marge;
		$y -= $marge;
		
		$x2 = $x + $w;
		$y2 = $y - $h;
		
		if($vertical)
		{
			$y -= $h;
			foreach($text as $paragraf)
			{
				$fh = $this->getFontHeight($paragraf[1]);
				$fd = $this->getFontDecender($paragraf[1]);
				$lins = $this->trencaLinia($paragraf[0],$paragraf[1],$h-4);
				$maxlins = count($lins);
				while($x + $maxlins*$fh > $x2)
				{
					$maxlins--;
					printError("<p style=\"color:red\"><b>#PDF ERROR:</b> UNCAUGHT VERTICAL WRAP<br>".$x."+".$fh." exceeds ".$x2.". Rejected line <i>'".$lins[$maxlins]."'</i>.");
				}					
				if($aliniacio == 'center')
					$x += ($w - $fh*$maxlins) / 2;
				elseif($aliniacio == 'bottom')
					$x += $w - $fh*$maxlins;
				for($i = 0; $i < $maxlins; $i++)
				{
					$linia = $lins[$i];
					$r = $this->addTextWrap($x+$fh+$fd,$y,$h,$paragraf[1],$linia,$justificacio,270);
					if(strlen($r) > 0)
					{
						printError("<p style=\"color:red\"><b>#PDF ERROR:</b> UNCAUGHT HORIZONTAL WRAP<br>\nRejected <i>'".$r."'</i> from <i>'".$linia."'</i></p>");
					}
					$x += $fh;
				}
			}
		}
		else
		{
			foreach($text as $paragraf)
			{
				$fh = $this->getFontHeight($paragraf[1]);
				$fd = $this->getFontDecender($paragraf[1]);
				$lins = $this->trencaLinia($paragraf[0],$paragraf[1],$w-7);
				/*
				echo "<p>";
				foreach ($lins as $lin) {
					echo $lin."<br />";
				}
				echo "</p>";
				*/
				$maxlins = count($lins);
				while($y - $maxlins*$fh < $y2)
				{
					$maxlins--;
					printError("<p style=\"color:red\"><b>#PDF ERROR:</b> UNCAUGHT VERTICAL WRAP<br>".$y."+".$fh." exceeds ".$y2.". Rejected line <i>'".$lins[$maxlins]."'</i>.");
				}	
				if($aliniacio == 'center')
					$y -= ($h - $fh*$maxlins) / 2;
				elseif($aliniacio == 'bottom')
					$y -= $h - $fh*$maxlins;
				for($i = 0; $i < $maxlins; $i++)
				{
					$linia = $lins[$i];
					$r = $this->addTextWrap($x,$y-$fh-$fd,$w+1,$paragraf[1],$linia,$justificacio);
					if(strlen($r) > 0)
					{
						printError("<p style=\"color:red\"><b>#PDF ERROR:</b> UNCAUGHT HORIZONTAL WRAP<br>\nRejected <i>'".$r."'</i> from <i>'".$linia."'</i></p>");
					}
					$y -= $fh;
				}
			}
		}
	}

	function filaTextVariable($text,$x,$y,$w,$justificacio,$marge=0)
	{
		$w -= $marge * 2;
		$h = $marge * 2;
	
		$x += $marge;
		$y -= $marge;
		
		foreach($text as $paragraf)
		{
			$fh = $this->getFontHeight($paragraf[1]);
			$fd = $this->getFontDecender($paragraf[1]);
			do
			{
				$paragraf[0] = $this->addTextWrap($x,$y-$fh-$fd,$w*0.995,$paragraf[1],$paragraf[0],$justificacio);
				$y -= $fh;
				$h += $fh;
			}
			while(strlen(trim($paragraf[0])) > 0);
		}
		return $h;
	}

}

function g2lX($x)
{
	global $pW,$marginL,$cm2i;
	return ($x + $marginL) * $cm2i;
}

function g2lY($y)
{
	global $pH,$marginT,$cm2i;
	return ($pH - $y - $marginT) * $cm2i;
}

function afegeixFormat (&$item, $key, $mida) {
	$item = array($item,$mida);
}

function printInfo($text) {
	echo '<message type="info">'.$text."</message>\n";
}

function printWarning($text) {
	$GLOBALS['WARNINGS'] = true;
	echo '<message type="warning">'.$text."</message>\n";
}

function printError($text) {
	$GLOBALS['ERRORS'] = true;
	echo '<message type="error">'.$text."</message>\n";
}

?>
