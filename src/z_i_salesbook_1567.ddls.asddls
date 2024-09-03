@AbapCatalog.sqlViewName: 'ZV_SALES_1567'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ventas Libros'
@Metadata.allowExtensions: true
define view Z_I_SALESBOOK_1567
  as select from Z_B_LIBROS_1567 as _Libros
  association [1]    to Z_B_CATEGORIA_1567 as _Categoria on _Libros.Categoria = _Categoria.Categoria
  association [1..*] to Z_B_VENTAS_1567    as _Ventas    on _Libros.Id = _Ventas.IdLibro
  association [1]    to Z_B_TVENTAS_1567   as _Total     on _Libros.Id = _Total.IdLibro
{
  key _Libros.Id,
  key _Libros.Categoria,
      _Libros.Titulo,
      _Libros.Autor,
      _Libros.Editorial,
      _Libros.Formato,
      _Libros.Idioma,
      _Libros.Paginas,
      _Libros.Precio,
      _Libros.Moneda,
      _Libros.Portada,
      _Categoria.Descripcion,
      _Ventas,
      case
        when _Total.Ventas_Totales < 0 then 1
        when _Total.Ventas_Totales = 0 then 0
        when _Total.Ventas_Totales between 1 and 9 then 2
        when _Total.Ventas_Totales > 10 then 3
        else 0
      end as Vendidos,
      ''  as Estado
}
