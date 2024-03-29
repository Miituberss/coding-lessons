/**** IDENTIFICACION DE ELEMENTOS ****/
  //document = Documento HTML
  document.getElementById('idDemo');
  document.getElementByTagName('div'); //Selecciona etiquetas HTML
  document.getElementByName('nombre') ;
  document.getElementByClassName('colores');
  element.lastChild
  element.firstChild
  element.innerHTML // Corresponde al texto entre dos etiquetas HTML
  element.children // Recoge todos los hijos del elemento

/**** CAMBIAR CONTENIDO DE LOS ELEMENTOS ****/
  //element = elemento seleccionado
  element.innerHTML + ' tenemos agua'; //Añade el texto tras el + 
  element.src = 'fondo.png'; //Modifica un atributo
  element.setAttribute(placeholder, "Ingrese sus datos: "); //Añade un atributo y su valor
  element.style.color = green; // Cambia el style (css)
  document.write();

/**** AÑADIR Y QUITAR ELEMENTOS ****/
//Añadir
  element.createElement('div')
  element.createTextNode("Añade texto")
  element.appendChild('p') //Añade un <p> al final del document
  element.insertBefore('p', 'div') //Añade un <p> antes de un <div>
  element.addEventListener('onclick', function(event){}); //event ~ this
event.target.tagName // para ubucar un elemento por el nombre de la etiqueta

//Eliminar
  element.removeChild('p') 
//Sustituir
  element.replaceChild('p')
