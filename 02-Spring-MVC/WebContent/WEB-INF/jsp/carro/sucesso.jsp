<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Carro Cadastrado!</title>
</head>
<body>

	<h2>${msg}</h2>
	
	<ul>
		<li>Modelo: ${carro.modelo}</li>
		<li>Marca: ${carro.marca}</li>
		<li>� novo: ${carro.novo ? "Sim" : "N�o"}</li>
		<li>Tipo: ${carro.tipoCarro}</li>
		<li>Ano: ${carro.ano}</li>
	</ul>

</body>
</html>