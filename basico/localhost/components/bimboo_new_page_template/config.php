<?

class bimboo_new_page_template
{
	protected static $version = '1.0';
	function path() {
		return dirname(__FILE__);
	}
	
	function is_dumb_template($content_section) {
		$data_insercao = core::format_date(core::time(),$formato='%d/%m/%Y %Hh%M',1);
		$texto = '######' . $data_insercao . ' - Atualizado em ' . $data_insercao . "\r\n\r\n" . '# Título Interno' . "\r\n" . '#### Sub-Título';
		
		$content_section->raw_add_component('text',1,$texto);
		$content_section->raw_add_component('addthis',2);
		
		$author_name = '';
		if (call('authentication_manager')->is_logged()) { $author_name = call('authentication_manager')->logged_contact()->name; }
		$texto2 = '######Por: ' . $author_name  . "\r\n";
		$content_section->raw_add_component('text',3,$texto2);
		$content_section->raw_add_component('padding',4);
		
		$content_section->raw_add_component('section_image',5);
		$texto3 = "Edite este campo e insira a matéria **AQUI**";
		$content_section->raw_add_component('text',6,$texto3);
		
		/*
		$tab_id = $content_section->raw_add_component('tab',7);
		$tab = orm::search_one('content_tab_data', 'ROWID='.$tab_id);
		$parametros = array ( 'component_id' => $tab->component_id );
		//core::debug("tab->ROWID : " . $tab->ROWID);
		//core::debug("parametros[component_id] : " . $parametros['component_id']);
		content_tab::insert_tab2($tab->component_id);
		*/
		return true;
	}
}
component::set_default_permission('bimboo_new_page_template','public');
component::register('bimboo_new_page_template', new bimboo_new_page_template);

?>
