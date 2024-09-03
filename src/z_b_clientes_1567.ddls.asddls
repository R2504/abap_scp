@AbapCatalog.sqlViewName: 'ZV_CLIENTES_1567'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view Z_B_CLIENTES_1567
  as select from ztb_cliente_1567
{
  key id_cliente  as Id,
  key tipo_acceso as TipoAcceso,
      nombre      as Nombre,
      apellidos   as Apellidos,
      email       as Email,
      url         as URL
}
