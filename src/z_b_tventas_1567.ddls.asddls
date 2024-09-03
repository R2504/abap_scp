@AbapCatalog.sqlViewName: 'ZV_TVENTAS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Total Ventas'
define view Z_B_TVENTAS_1567
  as select from Z_B_VENTAS_1567
{
  key IdLibro,
      count(*) as Ventas_Totales
}
group by
  IdLibro
