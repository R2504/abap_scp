@AbapCatalog.sqlViewName: 'ZV_VENTAS_1567'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ventas'
@Metadata.allowExtensions: true
/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ]  } */
define view Z_B_VENTAS_1567
  as select from ztb_cln_lib_1567 as Ventas
  association to Z_B_CLIENTES_1567 as _Clientes on Ventas.id_cliente = _Clientes.Id
{
  key id_venta            as IdVenta,
  key id_cliente          as IdCliente,
  key id_libro            as IdLibro,
      _Clientes.Id        as Cliente,
      _Clientes.TipoAcceso,
      _Clientes.Nombre    as Nombre,
      _Clientes.Apellidos as Apellidos,
      _Clientes.Email     as Email,
      _Clientes.URL       as URL
}
