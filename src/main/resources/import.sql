
--Tabla Categoria--
INSERT INTO categoria (nombre) VALUES ('Accesorios');
INSERT INTO categoria (nombre) VALUES ('Pantalones');
INSERT INTO categoria (nombre) VALUES ('Abrigos');
INSERT INTO categoria (nombre) VALUES ('Gorros');
INSERT INTO categoria (nombre) VALUES ('Ropa de Mujer');
INSERT INTO categoria (nombre) VALUES ('Ropa de Hombre');
INSERT INTO categoria (nombre) VALUES ('Zapatillas');

INSERT INTO Usuarios (username, password, rol) VALUES ('admin', '123', 'admin');

-- Agregar accesorios --
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Reloj Deportivo', 'Reloj resistente al agua con cronómetro y alarma.', 24999, 15, 1);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Gorra Urbana', 'Gorra ajustable de algodón con diseño moderno.', 8999, 30, 1);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Mochila Casual', 'Mochila liviana con múltiples compartimentos.', 34999, 12, 1);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Lentes de Sol Classic', 'Lentes de sol con protección UV400.', 15999, 20, 1);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Cinturón de Cuero', 'Cinturón de cuero sintético con hebilla metálica.', 11999, 25, 1);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Billetera Compacta', 'Billetera plegable con espacio para tarjetas y efectivo.', 13999, 18, 1);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Pulsera de Acero', 'Pulsera de acero inoxidable de estilo minimalista.', 7999, 40, 1);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Bufanda Tejida', 'Bufanda suave ideal para temporadas frías.', 10999, 22, 1);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Riñonera Sport', 'Riñonera deportiva con cierre reforzado.', 12999, 17, 1);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Paraguas Plegable', 'Paraguas compacto resistente al viento.', 9999, 28, 1);

-- Agregar pantalones --
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Jean Slim Fit Azul', 'Pantalón de jean ajustado de corte moderno.', 45999, 20, 2);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Jean Regular Negro', 'Jean clásico de color negro para uso diario.', 42999, 15, 2);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Pantalón Chino Beige', 'Pantalón chino de algodón cómodo y elegante.', 38999, 18, 2);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Jogger Deportivo Gris', 'Pantalón jogger ideal para actividades deportivas.', 34999, 25, 2);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Pantalón Cargo Verde', 'Cargo con múltiples bolsillos y diseño urbano.', 47999, 12, 2);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Jean Skinny Celeste', 'Jean skinny elastizado de color celeste.', 44999, 16, 2);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Pantalón Formal Negro', 'Pantalón de vestir para ocasiones formales.', 55999, 10, 2);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Jogger Oversize Negro', 'Jogger amplio con cintura ajustable.', 36999, 22, 2);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Pantalón Cargo Negro', 'Cargo resistente con bolsillos laterales.', 48999, 14, 2);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Jean Mom Fit Azul Claro', 'Jean de tiro alto con estilo vintage.', 46999, 17, 2);

-- Agregar Abrigos --
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Campera Inflable Negra', 'Campera inflable térmica color negro, resistente al agua. Talla M.', 89999, 12, 3);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Abrigo Largo Beige', 'Abrigo largo de paño color beige, ideal para invierno. Talla L.', 124999, 8, 3);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Campera Denim Azul', 'Campera de jean azul clásico con bolsillos frontales. Talla S.', 65999, 15, 3);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Parka Verde Militar', 'Parka impermeable con capucha desmontable. Talla XL.', 109999, 10, 3);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Campera Bomber Negra', 'Campera bomber urbana con cierre metálico. Talla M.', 74999, 18, 3);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Abrigo de Lana Gris', 'Abrigo confeccionado en mezcla de lana, diseño elegante. Talla L.', 134999, 6, 3);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Campera Rompevientos Roja', 'Campera liviana rompevientos para actividades al aire libre. Talla M.', 54999, 20, 3);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Parka Acolchada Azul Marino', 'Parka acolchada con interior térmico y bolsillos profundos. Talla XXL.', 119999, 9, 3);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Campera de Cuero Marrón', 'Campera de cuero ecológico estilo biker. Talla L.', 149999, 7, 3);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Abrigo Oversize Negro', 'Abrigo oversize moderno confeccionado en tela premium. Talla XL.', 139999, 5, 3);

-- Agregar Gorros --
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Gorro Beanie Negro', 'Gorro tejido de lana sintética color negro, ideal para invierno. Talla Única.', 12999, 25, 4);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Gorro Beanie Gris', 'Gorro tejido suave color gris con ajuste cómodo. Talla Única.', 11999, 20, 4);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Gorro de Lana Azul Marino', 'Gorro de lana térmica para climas fríos, diseño clásico. Talla Única.', 14999, 18, 4);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Gorro con Pompón Beige', 'Gorro tejido color beige con pompón decorativo y forro interior. Talla Única.', 16999, 12, 4);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Gorro Urbano Verde Oliva', 'Gorro estilo urbano confeccionado en tejido elástico premium. Talla Única.', 13999, 16, 4);

-- Agregar ropa de mujer --
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Vestido Floral Primavera', 'Vestido estampado floral confeccionado en tela liviana y fresca. Talla M.', 45999, 12, 5);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Blusa Elegante Blanca', 'Blusa de manga larga con detalles de encaje y corte moderno. Talla S.', 32999, 18, 5);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Falda Plisada Negra', 'Falda plisada de largo medio ideal para ocasiones formales. Talla M.', 38999, 15, 5);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Top Casual Rosa', 'Top casual de algodón suave con diseño cómodo para uso diario. Talla S.', 24999, 22, 5);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Vestido Largo Beige', 'Vestido largo elegante con cintura ajustada y tela premium. Talla L.', 59999, 10, 5);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Blazer Femenino Negro', 'Blazer entallado para oficina o eventos formales. Talla M.', 74999, 8, 5);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Pantalón Palazzo Azul', 'Pantalón palazzo de corte amplio y tela ligera. Talla L.', 42999, 14, 5);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Camisa Oversize Celeste', 'Camisa oversize confeccionada en algodón premium. Talla XL.', 37999, 16, 5);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Mono Elegante Bordó', 'Mono de una pieza con diseño sofisticado para eventos especiales. Talla M.', 68999, 7, 5);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Sweater Tejido Crema', 'Sweater tejido suave ideal para temporadas frescas. Talla L.', 34999, 20, 5);

-- Agregar ropa hombre --
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Remera Básica Negra', 'Remera de algodón premium color negro, cómoda para uso diario. Talla M.', 21999, 25, 6);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Camisa Oxford Blanca', 'Camisa Oxford de manga larga confeccionada en algodón. Talla L.', 44999, 15, 6);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Buzo Canguro Gris', 'Buzo con capucha y bolsillo frontal, interior afelpado. Talla XL.', 52999, 18, 6);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Polo Azul Marino', 'Chomba tipo polo de corte clásico y tejido transpirable. Talla M.', 31999, 20, 6);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Camisa Cuadros Roja', 'Camisa casual a cuadros con botones frontales. Talla L.', 39999, 12, 6);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Remera Estampada Blanca', 'Remera de algodón con estampado moderno y cuello redondo. Talla S.', 24999, 22, 6);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Buzo Oversize Negro', 'Buzo oversize confeccionado en algodón pesado. Talla XXL.', 57999, 10, 6);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Chaleco Acolchado Azul', 'Chaleco acolchado liviano ideal para media estación. Talla XL.', 68999, 8, 6);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Camisa Denim Celeste', 'Camisa de jean celeste con bolsillo frontal y corte regular. Talla M.', 47999, 14, 6);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Sweater Tejido Marrón', 'Sweater tejido de cuello redondo para temporadas frías. Talla L.', 41999, 16, 6);

-- Agregar Zapatillas --
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Zapatillas Running Pro Black', 'Zapatillas deportivas para running con amortiguación reforzada y suela antideslizante. Talla 42.', 89999, 12, 7);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Zapatillas Urban White', 'Zapatillas urbanas color blanco con diseño minimalista y plantilla acolchada. Talla 41.', 74999, 18, 7);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Zapatillas Sport Blue', 'Calzado deportivo ligero ideal para entrenamiento y uso diario. Talla 43.', 82999, 15, 7);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Zapatillas Classic Retro', 'Zapatillas estilo retro con detalles vintage y gran comodidad. Talla 40.', 69999, 20, 7);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Zapatillas Trekking Adventure', 'Zapatillas resistentes para senderismo con suela de alto agarre. Talla 44.', 109999, 8, 7);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Zapatillas Street Gray', 'Zapatillas casuales color gris para looks urbanos modernos. Talla 42.', 77999, 14, 7);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Zapatillas Running Flex', 'Zapatillas flexibles con tecnología de absorción de impacto. Talla 41.', 94999, 10, 7);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Zapatillas Court White', 'Zapatillas inspiradas en tenis de cancha con diseño elegante. Talla 43.', 71999, 16, 7);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Zapatillas Outdoor Ranger', 'Calzado outdoor impermeable para actividades al aire libre. Talla 45.', 119999, 7, 7);
INSERT INTO Products (nombre, descripcion, precio, stock, categoria_id) VALUES ('Zapatillas Comfort Knit', 'Zapatillas confeccionadas en tejido transpirable para máxima comodidad. Talla 42.', 85999, 13, 7);

