package ehr.clinical_documents

/**
 * Definicion de indice para realizar busquedas a nivel de datos (nivel 2).
 * El indice se deriva de la definicion de la estructura de cada arquetipo.
 * A partir de estas definiciones se cren los indices sobre instancias de
 * datos de tipos concretos (DvDate, DvText, DvQuantity, etc).
 * 
 * @author Pablo Pazos Gutierrez <pablo@openehr.org.es>
 */
class IndexDefinition {

   // Indexes are created by template
	String templateId
   String path // absolute to the template
   
   // Queries use archetype ids and paths to be generic (not specific to a template)
   // See issue #49 
   String archetypeId   // archetype that defines the data point
   String archetypePath // absolute to the archetype
   
   String rmTypeName
   
   // nombre del nodo segun el idioma por defecto del arquetipo
   // si es un atributo no arquetipable como uid, es un texto vacio
   // sino tiene definicion dentro del arquetipo, tambien es vacio
   String name
   
   static constraints = {
      name(nullable:true)
		archetypeId(nullable:true) // FIXME: no usar mas porque la path es absoluta al temaplte.
		path(size:1..1023)
   }
}