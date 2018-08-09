<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Carro</title>
</head>
<body>	
	<form method="post">
		<div>
			<label for="id-modelo">Modelo:</label>
			<input type="text" name="modelo" id="id-modelo" />
		</div>
		<div>
			<label for="id-marca">Marca:</label>
			<input type="text" name="marca" id="id-marca" />
		</div>
		<div>
			<label for="id-novo">Novo:</label>
			<input type="checkbox" name="novo" id="id-novo" />
		</div>
		<div>
			<label for="id-tipo">Tipo:</label>
			
			<label for="id-automatico">Automático:</label>
			<input type="radio" name="tipoCarro" id="id-automatico" value="AUTOMATICO" />
			
			<label for="id-manual">Manual:</label>
			<input type="radio" name="tipoCarro" id="id-manual" value="MANUAL" />
		</div>
		<div>
			<label for="id-ano">Ano:</label>
			<input type="number" name="ano" id="id-ano" />
		</div>
		<div>
			<input type="submit" value="Cadastrar Veiculo" />
		</div>
	</form>
</body>
</html>