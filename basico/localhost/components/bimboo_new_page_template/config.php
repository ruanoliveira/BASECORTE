<?

class bimboo_new_page_template
{
	protected static $version = '1.0';
	function path() {
		return dirname(__FILE__);
	}
	
	function is_dumb_template($content_section) {
		$content_section->raw_add_component('addthis',1);
		return true;
	}
}
component::set_default_permission('bimboo_new_page_template','public');
component::register('bimboo_new_page_template', new bimboo_new_page_template);

?>
