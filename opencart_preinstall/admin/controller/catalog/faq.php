<?php
	class ControllerCatalogFaq extends Controller {
		public function index() {
		$this->document->setTitle($this->language->get('text_faq'));
		 
		$this->load->model('catalog/faq');
		
    $this->getFaq();
		}

		protected function getFaq() {
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

			$faqs = $this->model_catalog_faq->getFaq();
			$this->data['faqs'] = array();
		
			foreach ($faqs as $faq) {
				$this->data['faqs'][] = array(
					'faq_subject' => $faq['faq_title'],
					'faq_description' => $faq['faq_description'],
					'faq_id' => $faq['id'],
					'load_url' => $this->url->link('catalog/faq/load', 'id=' . $faq['id'] . '&token=' . $this->session->data['token'], 'SSL')
				);
			}
			
			$this->data['action'] = $this->url->link('catalog/faq/delete', 'token=' . $this->session->data['token'], 'SSL');
			$this->data['insert'] = $this->url->link('catalog/faq/insert', 'token=' . $this->session->data['token'], 'SSL');
    	$this->data['button_delete'] = $this->language->get('button_delete');
    	$this->data['button_insert'] = $this->language->get('button_insert');
			$this->data['text_faq'] = $this->language->get('text_faq');
			$this->template = 'catalog/faq.tpl';
			$this->children = array(
				'common/header',
				'common/footer'
			);
			$this->response->setOutput($this->render());
		}


		public function insert() {
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
    	$this->data['button_save'] = $this->language->get('button_save');
    	$this->data['button_cancel'] = $this->language->get('button_cancel');
			$this->data['cancel'] = $this->url->link('catalog/faq', 'token=' . $this->session->data['token'], 'SSL');
			$this->data['text_faq'] = $this->language->get('text_faq');
			$this->data['action'] = $this->url->link('catalog/faq/save', 'token=' . $this->session->data['token'], 'SSL');
			$this->data['faq_id'] = ""; 
			$this->data['faq_title'] = ""; 
			$this->data['faq_description'] = "";
			$this->template = 'catalog/faq_form.tpl';
			$this->children = array(
				'common/header',
				'common/footer'
			);
			$this->response->setOutput($this->render());
		}


		public function save() {
			$this->load->model('catalog/faq');
			$result = $this->model_catalog_faq->saveFaq($this->request->post);
    	$this->getFaq();
		}

		public function update() {
			$this->load->model('catalog/faq');
			$result = $this->model_catalog_faq->updateFaq($this->request->post);
			$this->getFaq();
		}

		public function load() {
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

    	$this->data['button_save'] = $this->language->get('button_save');
    	$this->data['button_cancel'] = $this->language->get('button_cancel');
			$this->data['cancel'] = $this->url->link('catalog/faq', 'token=' . $this->session->data['token'], 'SSL');
			$this->data['text_faq'] = $this->language->get('text_faq');

			$this->load->model('catalog/faq');
			$loadFaq = $this->model_catalog_faq->loadFaq($this->request->get);

			$this->data['action'] = $this->url->link('catalog/faq/update', 'id=' .$loadFaq[0]['id']. '&token=' . $this->session->data['token'], 'SSL');
			$this->data['faq_description'] = $loadFaq[0]['faq_description'];
			$this->data['faq_title'] = $loadFaq[0]['faq_title'];
			$this->data['faq_id'] = $loadFaq[0]['id'];
			$this->template = 'catalog/faq_form.tpl';
			$this->children = array(
				'common/header',
				'common/footer'
			);
			$this->response->setOutput($this->render());
		}

		public function delete() {
			
			$this->load->model('catalog/faq');
			
			if (isset($this->request->post['id'])) {
				foreach ($this->request->post['id'] as $product_id) {
					$this->model_catalog_faq->deleteFaq($product_id);
	  			}
			}

    	$this->getFaq();
		}
	}
?>
