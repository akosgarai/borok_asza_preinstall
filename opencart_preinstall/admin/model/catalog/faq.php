<?php 
	class ModelCatalogFaq extends Model {

		public function saveFaq($data) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "faq (faq_title , faq_description, hidden) VALUES ('" . $this->db->escape($data['faq_title']) ."', '" . $this->db->escape($data['faq_description']) ."', 'false')");
		}
	}
?>

