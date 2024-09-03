@AbapCatalog.sqlViewName: 'ZV_CATEGO_1567'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista Categorias'
define view Z_B_CATEGORIA_1567
  as select from ztb_catego_1567
{
      @UI.hidden: true
  key bi_categ    as Categoria,
      descripcion as Descripcion
}
