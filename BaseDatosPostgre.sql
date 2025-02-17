PGDMP     .                
    z            g6_19    14.5    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16435    g6_19    DATABASE     �   CREATE DATABASE g6_19 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE g6_19;
                postgres    false                       0    0    DATABASE g6_19    ACL     i   REVOKE CONNECT,TEMPORARY ON DATABASE g6_19 FROM PUBLIC;
GRANT CREATE,CONNECT ON DATABASE g6_19 TO g6_19;
                   postgres    false    3343                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false                       0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1255    18119    sp_avion_delete(text) 	   PROCEDURE     �   CREATE PROCEDURE public.sp_avion_delete(IN p_numero_avion text)
    LANGUAGE plpgsql
    AS $$BEGIN
DELETE FROM avion
	WHERE numero_avion = p_numero_avion;
	END;$$;
 ?   DROP PROCEDURE public.sp_avion_delete(IN p_numero_avion text);
       public          g6_19    false    4            �            1255    18164 h   sp_avion_insert(text, text, time without time zone, integer, timestamp without time zone, text, integer) 	   PROCEDURE     v  CREATE PROCEDURE public.sp_avion_insert(IN p_numero_avion text, IN p_tipo_avion text, IN p_horas_de_vuelo time without time zone, IN p_capacidad_de_pasajeros integer, IN p_fecha_primer_vuelo timestamp without time zone, IN p_pais_de_construccion text, IN p_cantidad_de_vuelos integer)
    LANGUAGE plpgsql
    AS $$BEGIN
INSERT INTO avion (numero_avion, tipo_avion, horas_de_vuelo, capacidad_de_pasajeros, fecha_primer_vuelo, pais_de_construccion, cantidad_de_vuelos)
	VALUES (p_numero_avion, p_tipo_avion, p_horas_de_vuelo, p_capacidad_de_pasajeros, p_fecha_primer_vuelo, p_pais_de_construccion, p_cantidad_de_vuelos);
	END;
$$;
   DROP PROCEDURE public.sp_avion_insert(IN p_numero_avion text, IN p_tipo_avion text, IN p_horas_de_vuelo time without time zone, IN p_capacidad_de_pasajeros integer, IN p_fecha_primer_vuelo timestamp without time zone, IN p_pais_de_construccion text, IN p_cantidad_de_vuelos integer);
       public          g6_19    false    4            �            1255    18165 h   sp_avion_update(text, text, time without time zone, integer, timestamp without time zone, text, integer) 	   PROCEDURE     �  CREATE PROCEDURE public.sp_avion_update(IN p_numero_avion text, IN p_tipo_avion text, IN p_horas_de_vuelo time without time zone, IN p_capacidad_de_pasajeros integer, IN p_fecha_primer_vuelo timestamp without time zone, IN p_pais_de_construccion text, IN p_cantidad_de_vuelos integer)
    LANGUAGE plpgsql
    AS $$BEGIN 
UPDATE avion
	SET numero_avion = p_numero_avion, tipo_avion = p_tipo_avion, horas_de_vuelo = p_horas_de_vuelo, capacidad_de_pasajeros = p_capacidad_de_pasajeros, fecha_primer_vuelo = p_fecha_primer_vuelo, pais_de_construccion = p_pais_de_construccion, cantidad_de_vuelos = p_cantidad_de_vuelos
	WHERE numero_avion = p_numero_avion;
	END;
$$;
   DROP PROCEDURE public.sp_avion_update(IN p_numero_avion text, IN p_tipo_avion text, IN p_horas_de_vuelo time without time zone, IN p_capacidad_de_pasajeros integer, IN p_fecha_primer_vuelo timestamp without time zone, IN p_pais_de_construccion text, IN p_cantidad_de_vuelos integer);
       public          g6_19    false    4            �            1255    18059    sp_pasajero_delete(text) 	   PROCEDURE     �   CREATE PROCEDURE public.sp_pasajero_delete(IN p_codigo_pasajero text)
    LANGUAGE plpgsql
    AS $$BEGIN
DELETE FROM pasajero
	WHERE codigo_pasajero = p_codigo_pasajero;
	END;$$;
 E   DROP PROCEDURE public.sp_pasajero_delete(IN p_codigo_pasajero text);
       public          g6_19    false    4            �            1255    18058 S   sp_pasajero_insert(text, text, text, timestamp with time zone, text, integer, text) 	   PROCEDURE       CREATE PROCEDURE public.sp_pasajero_insert(IN p_codigo_pasajero text, IN p_nombres text, IN p_apellidos text, IN p_fecha_de_registro timestamp with time zone, IN p_nacionalidad text, IN p_numero_telefonico integer, IN p_email text)
    LANGUAGE plpgsql
    AS $$BEGIN
INSERT INTO pasajero (codigo_pasajero, nombres, apellidos, fecha_de_registro, nacionalidad, numero_telefonico, email)
	VALUES (p_codigo_pasajero, p_nombres, p_apellidos, p_fecha_de_registro, p_nacionalidad, p_numero_telefonico, p_email);
	END;
	$$;
 �   DROP PROCEDURE public.sp_pasajero_insert(IN p_codigo_pasajero text, IN p_nombres text, IN p_apellidos text, IN p_fecha_de_registro timestamp with time zone, IN p_nacionalidad text, IN p_numero_telefonico integer, IN p_email text);
       public          g6_19    false    4            �            1255    18060 S   sp_pasajero_update(text, text, text, timestamp with time zone, text, integer, text) 	   PROCEDURE       CREATE PROCEDURE public.sp_pasajero_update(IN p_codigo_pasajero text, IN p_nombres text, IN p_apellidos text, IN p_fecha_de_registro timestamp with time zone, IN p_nacionalidad text, IN p_numero_telefonico integer, IN p_email text)
    LANGUAGE plpgsql
    AS $$BEGIN
UPDATE pasajero
	SET nombres = p_nombres, apellidos = p_apellidos, fecha_de_registro = p_fecha_de_registro, nacionalidad = p_nacionalidad, numero_telefonico = p_numero_telefonico, email = p_email
	WHERE codigo_pasajero = p_codigo_pasajero; 
	END;
	$$;
 �   DROP PROCEDURE public.sp_pasajero_update(IN p_codigo_pasajero text, IN p_nombres text, IN p_apellidos text, IN p_fecha_de_registro timestamp with time zone, IN p_nacionalidad text, IN p_numero_telefonico integer, IN p_email text);
       public          g6_19    false    4            �            1255    18168    sp_reserva_delete(text) 	   PROCEDURE     �   CREATE PROCEDURE public.sp_reserva_delete(IN p_no_reserva text)
    LANGUAGE plpgsql
    AS $$
BEGIN
DELETE FROM reserva
	WHERE no_reserva = p_no_reserva;
END;
$$;
 ?   DROP PROCEDURE public.sp_reserva_delete(IN p_no_reserva text);
       public          g6_19    false    4            �            1255    18262 ^   sp_reserva_insert(text, text, text, text, text, timestamp without time zone, double precision) 	   PROCEDURE     !  CREATE PROCEDURE public.sp_reserva_insert(IN p_no_reserva text, IN p_codigo_vuelo text, IN p_codigo_pasajero text, IN p_nombre_pasajero text, IN p_ciudad_destino text, IN p_fecha_vuelo timestamp without time zone, IN p_precio_vuelo double precision)
    LANGUAGE plpgsql
    AS $$BEGIN
INSERT INTO reserva (no_reserva, codigo_vuelo, codigo_pasajero,nombre_pasajero, ciudad_destino, fecha_vuelo, precio_vuelo)
	VALUES (p_no_reserva, p_codigo_vuelo, p_codigo_pasajero, p_nombre_pasajero, p_ciudad_destino, p_fecha_vuelo, p_precio_vuelo);
	END;$$;
 �   DROP PROCEDURE public.sp_reserva_insert(IN p_no_reserva text, IN p_codigo_vuelo text, IN p_codigo_pasajero text, IN p_nombre_pasajero text, IN p_ciudad_destino text, IN p_fecha_vuelo timestamp without time zone, IN p_precio_vuelo double precision);
       public          g6_19    false    4            �            1255    18281 [   sp_reserva_update(text, text, text, text, text, timestamp with time zone, double precision) 	   PROCEDURE     -  CREATE PROCEDURE public.sp_reserva_update(IN p_no_reserva text, IN p_codigo_vuelo text, IN p_codigo_pasajero text, IN p_nombre_pasajero text, IN p_ciudad_destino text, IN p_fecha_vuelo timestamp with time zone, IN p_precio_vuelo double precision)
    LANGUAGE plpgsql
    AS $$
BEGIN
UPDATE reserva
SET no_reserva=p_no_reserva, codigo_vuelo=p_codigo_vuelo,codigo_pasajero =p_codigo_pasajero, nombre_pasajero=p_nombre_pasajero,ciudad_destino=p_ciudad_destino,fecha_vuelo=p_fecha_vuelo,precio_vuelo=p_precio_vuelo
WHERE no_reserva = p_no_reserva;
	END;
	
$$;
 �   DROP PROCEDURE public.sp_reserva_update(IN p_no_reserva text, IN p_codigo_vuelo text, IN p_codigo_pasajero text, IN p_nombre_pasajero text, IN p_ciudad_destino text, IN p_fecha_vuelo timestamp with time zone, IN p_precio_vuelo double precision);
       public          g6_19    false    4            �            1255    18145    sp_vuelo_delete(text) 	   PROCEDURE     �   CREATE PROCEDURE public.sp_vuelo_delete(IN p_codigo_vuelo text)
    LANGUAGE plpgsql
    AS $$
BEGIN
DELETE FROM vuelo
      WHERE codigo_vuelo = p_codigo_vuelo;
	  END;
$$;
 ?   DROP PROCEDURE public.sp_vuelo_delete(IN p_codigo_vuelo text);
       public          g6_19    false    4            �            1255    18142 _   sp_vuelo_insert(text, text, text, timestamp without time zone, integer, text, double precision) 	   PROCEDURE     +  CREATE PROCEDURE public.sp_vuelo_insert(IN p_codigo_vuelo text, IN p_ciudad_origen text, IN p_ciudad_destino text, IN p_fecha_vuelo timestamp without time zone, IN p_cantidad_pasajeros integer, IN p_tipo_avion text, IN p_distancia_km double precision)
    LANGUAGE plpgsql
    AS $$
BEGIN
INSERT INTO vuelo(codigo_vuelo, ciudad_origen, ciudad_destino, fecha_vuelo, cantidad_pasajeros, tipo_avion, distancia_km)
      VALUES(p_codigo_vuelo, p_ciudad_origen, p_ciudad_destino, p_fecha_vuelo, p_cantidad_pasajeros, p_tipo_avion, p_distancia_km);
	  END;
$$;
 �   DROP PROCEDURE public.sp_vuelo_insert(IN p_codigo_vuelo text, IN p_ciudad_origen text, IN p_ciudad_destino text, IN p_fecha_vuelo timestamp without time zone, IN p_cantidad_pasajeros integer, IN p_tipo_avion text, IN p_distancia_km double precision);
       public          g6_19    false    4            �            1255    18146 _   sp_vuelo_update(text, text, text, timestamp without time zone, integer, text, double precision) 	   PROCEDURE     4  CREATE PROCEDURE public.sp_vuelo_update(IN p_codigo_vuelo text, IN p_ciudad_origen text, IN p_ciudad_destino text, IN p_fecha_vuelo timestamp without time zone, IN p_cantidad_pasajeros integer, IN p_tipo_avion text, IN p_distancia_km double precision)
    LANGUAGE plpgsql
    AS $$BEGIN
UPDATE vuelo
     SET ciudad_origen = p_ciudad_origen, ciudad_destino = p_ciudad_destino, fecha_vuelo = p_fecha_vuelo,
	     cantidad_pasajeros = p_cantidad_pasajeros, tipo_avion = p_tipo_avion, distancia_km = p_distancia_km
	 WHERE codigo_vuelo = p_codigo_vuelo;
	 END;

$$;
 �   DROP PROCEDURE public.sp_vuelo_update(IN p_codigo_vuelo text, IN p_ciudad_origen text, IN p_ciudad_destino text, IN p_fecha_vuelo timestamp without time zone, IN p_cantidad_pasajeros integer, IN p_tipo_avion text, IN p_distancia_km double precision);
       public          g6_19    false    4            �            1259    17819    avion    TABLE       CREATE TABLE public.avion (
    numero_avion text NOT NULL,
    tipo_avion text,
    horas_de_vuelo time without time zone,
    capacidad_de_pasajeros integer,
    fecha_primer_vuelo timestamp without time zone,
    pais_de_construccion text,
    cantidad_de_vuelos integer
);
    DROP TABLE public.avion;
       public         heap    g6_19    false    4            �            1259    16988    pasajero    TABLE     �   CREATE TABLE public.pasajero (
    codigo_pasajero text NOT NULL,
    nombres text,
    apellidos text,
    fecha_de_registro timestamp without time zone,
    nacionalidad text,
    numero_telefonico integer,
    email text
);
    DROP TABLE public.pasajero;
       public         heap    g6_19    false    4            �            1259    17572    reserva    TABLE     �   CREATE TABLE public.reserva (
    no_reserva text NOT NULL,
    codigo_vuelo text,
    codigo_pasajero text,
    nombre_pasajero text,
    ciudad_destino text,
    fecha_vuelo timestamp without time zone,
    precio_vuelo double precision
);
    DROP TABLE public.reserva;
       public         heap    g6_19    false    4            �            1259    17515    vuelo    TABLE     �   CREATE TABLE public.vuelo (
    codigo_vuelo text NOT NULL,
    ciudad_origen text,
    ciudad_destino text,
    fecha_vuelo timestamp without time zone,
    cantidad_pasajeros integer,
    tipo_avion text,
    distancia_km double precision
);
    DROP TABLE public.vuelo;
       public         heap    g6_19    false    4            	          0    17819    avion 
   TABLE DATA           �   COPY public.avion (numero_avion, tipo_avion, horas_de_vuelo, capacidad_de_pasajeros, fecha_primer_vuelo, pais_de_construccion, cantidad_de_vuelos) FROM stdin;
    public          g6_19    false    212   �;                 0    16988    pasajero 
   TABLE DATA           �   COPY public.pasajero (codigo_pasajero, nombres, apellidos, fecha_de_registro, nacionalidad, numero_telefonico, email) FROM stdin;
    public          g6_19    false    209   M=                 0    17572    reserva 
   TABLE DATA           �   COPY public.reserva (no_reserva, codigo_vuelo, codigo_pasajero, nombre_pasajero, ciudad_destino, fecha_vuelo, precio_vuelo) FROM stdin;
    public          g6_19    false    211   �>                 0    17515    vuelo 
   TABLE DATA           �   COPY public.vuelo (codigo_vuelo, ciudad_origen, ciudad_destino, fecha_vuelo, cantidad_pasajeros, tipo_avion, distancia_km) FROM stdin;
    public          g6_19    false    210   @       z           2606    17825    avion avion_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.avion
    ADD CONSTRAINT avion_pkey PRIMARY KEY (numero_avion);
 :   ALTER TABLE ONLY public.avion DROP CONSTRAINT avion_pkey;
       public            g6_19    false    212            t           2606    16994    pasajero pasajero_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.pasajero
    ADD CONSTRAINT pasajero_pkey PRIMARY KEY (codigo_pasajero);
 @   ALTER TABLE ONLY public.pasajero DROP CONSTRAINT pasajero_pkey;
       public            g6_19    false    209            x           2606    17578    reserva reserva_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (no_reserva);
 >   ALTER TABLE ONLY public.reserva DROP CONSTRAINT reserva_pkey;
       public            g6_19    false    211            v           2606    17521    vuelo vuelo_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT vuelo_pkey PRIMARY KEY (codigo_vuelo);
 :   ALTER TABLE ONLY public.vuelo DROP CONSTRAINT vuelo_pkey;
       public            g6_19    false    210            	   P  x�}�_n�0���)� ������j#Q��1i�.�3�bsRZ�TM
/��|��0"�n>�<*���@�|�!�@W�%�ʹ�x��uš���8Y�k�K�:c�� +��,ᓕuP���_�]"�Ҳh#y�<�))�]Y�J���ܨ6ׇ��;V�U��jZ�as��*-1�F���Q�ΒX뻕�m��i6p��2H�!/Rz�ڬ5>K�<$�I�&'ݝ�u����&7�w���\���ʢKa�^��aZ�i 7�4O����Ԍ���F&/$����~(O�!�Kۦ~v����+�|_��wa���Zɔ)�yR��$u�W��;�sTT|�E�}���         2  x���Mn�0����@# �cQ7Ɠz��z�^�n*/ZY2hf�f!�_͂��e<��nۧ:�fS����+����'A)uV'Uc��~ 붚�JASp,X�i��@�̍�h��%0R���
N�g��$���HM��h�"M�����{��$y�����c���w&��G��cA; ���f��MV��Ĝ
�n����� �#-y�>Y�u���b�L�SHebT�9�s�tS������d�;����S{u��h��.��=�jf�7=u��4�t�7��͝m�r��>c?�UU}���         {  x����n� ������!�[�C֌1M O2־D������Vڕ������U��S)�B�o��D�P ��8r~d�����@*ٷ}�cV�`��B���;c���B�~ z&kuӕ�@� �D�hWHt���a�G�$���V5F�/U=̚u�/�{���!����;@<�]+�L �А�+A�'��U�`?WJ�b�<Z숞��(�|Ճ8Pv�hƴ51cpxW?�LjSO�!�����d��a��䂭KL�V ;v�\�ȍ�F����9���O6�" �=�}��\A���7 �(���1s-n�`Ɓ���x��]p#����nE_�*��X�������y�Om��%u=���b���M��.��         V  x�U��J�0@ϓ��l�I�4�6[C�l�,i�*xD�((��Qt����{y���D�Bw:�#��� 
���$����_?��>��jmU�j���Fد>�Y��)N�)��P]�|����ݽS1�����7���/`mH몦�f��oS��:rN���{PaѦ�h��&�&ܯ�+�y��ۘ.�*x{u	$�\��*'N����CL�?��P���ϯo/��0���z�	��:?�����9_���U��[�2��`���=�'�3χ!��.q�Z�v���P��ʪ�qm	��q�pM�׋�O�VM^�U�B��ʞK�������[�X	!�@�1     