<?php 
	class ModelCatalogFaq extends Model {

		public function getFaq() {
			$result = $this->db->query("SELECT * FROM " . DB_PREFIX . "faq");
			return $result->rows;
		}

		public function loadFaq($data) {
			$result = $this->db->query("SELECT * FROM " . DB_PREFIX . "faq WHERE id = '" . $data['id'] ."'");
			return $result->rows;
		}

		public function saveFaq($data) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "faq (faq_title , faq_description, hidden) VALUES ('" . $this->db->escape($data['faq_title']) ."', '" . $this->db->escape($data['faq_description']) ."', 'false')");
		}

		public function updateFaq($data) {
			$this->db->query("UPDATE " . DB_PREFIX . "faq SET faq_title='" . $data['faq_title'] . "', faq_description= '" . $data['faq_description'] . "' WHERE id='" . $data['id'] . "'");
		}

		public function deleteFaq($data) {
			$this->db->query("DELETE FROM " . DB_PREFIX . "faq WHERE id='" . $data ."'");
		}
	}
?>

