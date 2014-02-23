<?php 
	class ModelTransporterTransporter extends Model {
		public function getTransporter() {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "transporter WHERE transporter_id = 1 LIMIT 1");
			return $query->rows;
		}

		public function saveTransporter($data) {
		$this->db->query("UPDATE " . DB_PREFIX . "transporter SET transporter_name = '" . $this->db->escape($data['name']) . "', transporter_address = '" . $this->db->escape($data['address']) . "', price_local= '" . (int)$data['p_local']. "', price_abroad = '" . (int)$data['p_abroad'] . "', transporter_information = '" . $this->db->escape($data['information']) . "' WHERE transporter_id = '1'");
		}
	}
?>
