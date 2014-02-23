<?php 
	class ControllerCatalogTransporter extends Controller {
  	public function index() {
		$this->document->setTitle($this->language->get('text_transporter'));
		 
		$this->load->model('transporter/transporter');
		
    	$this->getTransporter();
  	}

		protected function getTransporter() {
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_transporter'),
			'href'      => $this->url->link('catalog/transporter', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
				
			$this->data['transporters'] = array();
			$transporters = $this->model_transporter_transporter->getTransporter();
			foreach ($transporters as $result) {
				$this->data['transporters'][] = array(
					'transporter_name' => $result['transporter_name'],
					'transporter_address' => $result['transporter_address'],
					'transporter_information' => $result['transporter_information'],
					'price_local' => $result['price_local'],
					'price_abroad' => $result['price_abroad']
				);
			}	
			$this->data['update_transporter'] = $this->url->link('catalog/transporter/update', 'token=' . $this->session->data['token'], 'SSL');
			$this->data['text_transporter'] = $this->language->get('text_transporter');
			$this->template = 'catalog/transporter.tpl';
			$this->children = array(
				'common/header',
				'common/footer'
			);
			$this->response->setOutput($this->render());
		}

		public function update() {
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_transporter'),
			'href'      => $this->url->link('catalog/transporter', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
				
			$this->data['transporters'] = array();
			$this->load->model('transporter/transporter');
			$transporters = $this->model_transporter_transporter->getTransporter();
			$this->data['tab_general'] = $this->language->get('tab_general');
			foreach ($transporters as $result) {
				$this->data['transporters'][] = array(
					'transporter_name' => $result['transporter_name'],
					'transporter_address' => $result['transporter_address'],
					'transporter_information' => $result['transporter_information'],
					'price_local' => $result['price_local'],
					'price_abroad' => $result['price_abroad']
				);
			}	
			$url = '';
			$this->data['update_transporter'] = $this->url->link('catalog/transporter/update', 'token=' . $this->session->data['token'] . $url, 'SSL');
			$this->data['text_transporter'] = $this->language->get('text_transporter');
    	$this->data['button_save'] = $this->language->get('button_save');
    	$this->data['button_cancel'] = $this->language->get('button_cancel');
			$this->data['cancel'] = $this->url->link('catalog/transporter', 'token=' . $this->session->data['token'] . $url, 'SSL');
			$this->data['action'] = $this->url->link('catalog/transporter/save', 'token=' . $this->session->data['token'] . $url, 'SSL');
			$this->template = 'catalog/transporter_form.tpl';
			$this->children = array(
				'common/header',
				'common/footer'
			);
			$this->response->setOutput($this->render());
		}

		public function save() {
			$this->load->model('transporter/transporter');
			$transporters = $this->model_transporter_transporter->saveTransporter($this->request->post);
    	$this->getTransporter();
		}
	}
?>
