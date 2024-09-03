CLASS zcl_libros_data_1567 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_libros_data_1567 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lt_acc_cat_1567 TYPE TABLE OF ztb_acc_cat_1567,
          lt_catego_1567  TYPE TABLE OF ztb_catego_1567,
          lt_cliente_1567 TYPE TABLE OF ztb_cliente_1567,
          lt_cln_lib_1567 TYPE TABLE OF ztb_cln_lib_1567,
          lt_libros_1567  TYPE TABLE OF ztb_libros_1567.

    lt_libros_1567 = VALUE #( ( autor = 'Patrick Rothfuss' bi_categ = '5' editorial = 'Plaza & Janés' formato = 'I' idioma = 'ES'
                                id_libro = '0000000005' moneda = 'MXN' paginas = '662' precio = '499.00'
                                titulo = 'EL NOMBRE DEL VIENTO' url = 'https://m.media-amazon.com/images/I/81OpOXoOsCL._AC_UF894,1000_QL80_.jpg' )
                              ( autor = 'Frank Herbert' bi_categ = '6' editorial = 'Ediciones Minotauro' formato = 'I' idioma = 'ES'
                                id_libro = '0000000006' moneda = 'MXN' paginas = '896' precio = '699.00'
                                titulo = 'DUNE' url = 'https://m.media-amazon.com/images/I/71aFIonwOTL._AC_UF894,1000_QL80_.jpg' )
                              ( autor = 'Ildefonso Falcones' bi_categ = '8' editorial = 'Grijalbo' formato = 'I' idioma = 'ES'
                                id_libro = '0000000011' moneda = 'MXN' paginas = '704' precio = '450.00'
                                titulo = 'LA CATEDRAL DEL MAR' url = 'https://m.media-amazon.com/images/I/71JhOQ65XpL._AC_UF894,1000_QL80_.jpg' )

                              ( autor = 'Carlos Ruiz Zafón' bi_categ = '3' editorial = 'Planeta' formato = 'I' idioma = 'ES'
                                id_libro = '0000000007' moneda = 'MXN' paginas = '560' precio = '399.00'
                                titulo = 'LA SOMBRA DEL VIENTO' url = 'https://m.media-amazon.com/images/I/71O+1D8ut6L._AC_UF894,1000_QL80_.jpg' ) ).

    DELETE FROM ztb_libros_1567.
    INSERT ztb_libros_1567 FROM TABLE @lt_libros_1567.

    SELECT * FROM ztb_libros_1567 INTO TABLE @lt_libros_1567.

    out->write( sy-dbcnt ).
    out->write( 'ZTB_LIBROS_1567 Data Inserted Succesfully!' ).

    lt_cliente_1567 = VALUE #( ( id_cliente = '0000001001' nombre = 'ISAEL' apellidos = 'TORRES ORTEGA' email = 'isaeltorres@email.com' tipo_acceso = '1' url = 'https://www.libreriafuentes.com/0000001001-TORRES' )
                               ( id_cliente = '0000001002' nombre = 'NAYELI' apellidos = 'GARCIA BELTRAN' email = 'nayeligarcia@email.com' tipo_acceso = '2' url = 'https://www.libreriafuentes.com/0000001002-GARCIA' )
                               ( id_cliente = '0000001003' nombre = 'MARIO' apellidos = 'GONZÁLEZ REYES' email = 'mariogonzalez@email.com' tipo_acceso = '1' url = 'https://www.libreriafuentes.com/0000001003-GONZALEZ' )
                               ( id_cliente = '0000001004' nombre = 'LUISA' apellidos = 'MORALES CASTAÑO' email = 'luisamora@email.com' tipo_acceso = '2' url = 'https://www.libreriafuentes.com/0000001004-MORALES' ) ).

    DELETE FROM ztb_cliente_1567.
    INSERT ztb_cliente_1567 FROM TABLE @lt_cliente_1567.

    SELECT * FROM ztb_cliente_1567 INTO TABLE @lt_cliente_1567.

    out->write(  sy-dbcnt ).
    out->write( 'ZTB_CLIENTE_1567 Data Inserted Successfully!' ).

    lt_cln_lib_1567 = VALUE #( ( id_venta = '2024000001' id_cliente = '0000001001' id_libro = '0000000001' )
                               ( id_venta = '2024000002' id_cliente = '0000001002' id_libro = '0000000002' )
                               ( id_venta = '2024000003' id_cliente = '0000001003' id_libro = '0000000003' )
                               ( id_venta = '2024000004' id_cliente = '0000001004' id_libro = '0000000004' )
                               ( id_venta = '2024000005' id_cliente = '0000001005' id_libro = '0000000005' )
                               ( id_venta = '2024000006' id_cliente = '0000001006' id_libro = '0000000006' )
                               ( id_venta = '2024000007' id_cliente = '0000001007' id_libro = '0000000007' )
                               ( id_venta = '2024000008' id_cliente = '0000001008' id_libro = '0000000008' )
                               ( id_venta = '2024000009' id_cliente = '0000001009' id_libro = '0000000009' )
                               ( id_venta = '2024000010' id_cliente = '0000001010' id_libro = '0000000010' )
                               ( id_venta = '2024000011' id_cliente = '0000001011' id_libro = '0000000011' )
                               ( id_venta = '2024000012' id_cliente = '0000001012' id_libro = '0000000012' )
                               ( id_venta = '2024000013' id_cliente = '0000001013' id_libro = '0000000013' )
                               ( id_venta = '2024000014' id_cliente = '0000001014' id_libro = '0000000014' ) ).

    DELETE FROM ztb_cln_lib_1567.
    INSERT ztb_cln_lib_1567 FROM TABLE @lt_cln_lib_1567.

    out->write( sy-dbcnt ).
    out->write( 'ZTB_CLN_LIB_1567 Data Insterted Succesfully!' ).

    lt_catego_1567 = VALUE #( ( bi_categ = '1' descripcion = 'Ciencia Ficcion' )
                              ( bi_categ = '2' descripcion = 'Educación' )
                              ( bi_categ = '3' descripcion = 'Literatura Moderna' )
                              ( bi_categ = '4' descripcion = 'Novela Juvenil' )
                              ( bi_categ = '5' descripcion = 'Historia' )
                              ( bi_categ = '6' descripcion = 'Comics' )
                              ( bi_categ = '7' descripcion = 'Horror / Suspenso' )  ).

    DELETE FROM ztb_catego_1567.
    INSERT ztb_catego_1567 FROM TABLE @lt_catego_1567.

    out->write( sy-dbcnt ).
    out->write( 'ZTB_CATEGO_1567 Data Insterted Succesfully!' ).


    lt_acc_cat_1567 = VALUE #( ( bi_categ = '1' tipo_acceso = 'A' )
                               ( bi_categ = '1' tipo_acceso = 'B' )
                               ( bi_categ = '2' tipo_acceso = 'A' )
                               ( bi_categ = '2' tipo_acceso = 'B' ) ).

    DELETE FROM ztb_acc_cat_1567.
    INSERT ztb_acc_cat_1567 FROM TABLE @lt_acc_cat_1567.

    out->write(  sy-dbcnt ).
    out->write( 'ZTB_ACC_CAT_1567 Data Inserted Successfully!' ).





  ENDMETHOD.
ENDCLASS.
