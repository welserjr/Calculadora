<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Calculadora</title>
	<link rel="stylesheet" href="estilo.css">
</head>
<body>
	<form name="Calc" method="post" action="calc">
		<table>
			<thead>
				<tr>
					<th>
						Calculadora - Python
					</th>
				</tr>
			</thead>
			<tbody align= "center">
				<tr>
					<td>
						<input type="text" name="LCD" size="16" value="{{result}}" readonly><br>
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" name="btn" value="R">
						<input type="submit" name="btn" value="P">
						<input type="button" name="resto" value="%" OnClick="Calc.LCD.value += ' % '">
						<input type="button" name="div" value="÷" OnClick="Calc.LCD.value += ' / '">
					</td>
				</tr>
				<tr>
					<td>
						<input type="button" name="siete" value="7" OnClick="Calc.LCD.value += '7'">
						<input type="button" name="ocho" value="8" OnClick="Calc.LCD.value += '8'">
						<input type="button" name="nueve" value="9" OnClick="Calc.LCD.value += '9'">
						<input type="button" name="mult" value="x" OnClick="Calc.LCD.value += ' * '">
					</td>
				</tr>
				<tr>
					<td>
						<input type="button" name="cuatro" value="4" OnClick="Calc.LCD.value += '4'">
						<input type="button" name="cinco" value="5" OnClick="Calc.LCD.value += '5'">
						<input type="button" name="seis" value="6" OnClick="Calc.LCD.value += '6'">
						<input type="button" name="rest" value="-" OnClick="Calc.LCD.value += ' - '">
					</td>
				</tr>
				<tr>
					<td>
						<input type="button" name="uno" value="1" OnClick="Calc.LCD.value += '1'">
						<input type="button" name="dos" value="2" OnClick="Calc.LCD.value += '2'">
						<input type="button" name="tres" value="3" OnClick="Calc.LCD.value += '3'">
						<input type="button" name="sum" value="+" OnClick="Calc.LCD.value += ' + '">
					</td>
				</tr>
				<tr>
					<td>
						<input type="button" name="cero" value="0" OnClick="Calc.LCD.value += '0'">
						<input type="button" name="punto" value="." OnClick="Calc.LCD.value += '.'">
						<input type="submit" name="btn" value="C">
						<input type="button" name="igual" value="=" OnClick="Calc.LCD.value = eval(Calc.LCD.value)">
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td>
						&#169; Copyright - Welser Muñoz
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
</body>
</html>