<?php 
	class ModelCatalogFaq extends Model {

		public function getFaq() {
			$result = $this->db->query("SELECT * FROM " . DB_PREFIX . "faq");
			return $result->rows;
		}
	}
?>

