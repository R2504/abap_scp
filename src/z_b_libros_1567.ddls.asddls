@AbapCatalog.sqlViewName: 'ZV_LIBROS_1567'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista Libros'
define view Z_B_LIBROS_1567
  as select from ztb_libros_1567
{
  key id_libro  as Id,
  key bi_categ  as Categoria,
      titulo    as Titulo,
      autor     as Autor,
      editorial as Editorial,
      case
        when formato = 'I' then 'Impreso'
        when formato = 'D' then 'Digital'
        else ''
      end       as Formato,
      case
        when idioma = 'I' then 'Inglés'
        when idioma = 'E' then 'Español'
        else ''
      end       as Idioma,
      paginas   as Paginas,
      precio    as Precio,
      moneda    as Moneda,
      url       as Portada
}
