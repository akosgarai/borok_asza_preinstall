<?php
	class ControllerCatalogFaq extends Controller {
		public function index() {
		$this->document->setTitle($this->language->get('text_faq'));
		 
		//$this->load->model('transporter/faq');
		
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

			$this->data['action'] = $this->url->link('catalog/faq/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');
			$this->data['insert'] = $this->url->link('catalog/faq/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
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
			$this->data['cancel'] = $this->url->link('catalog/faq', 'token=' . $this->session->data['token'] . $url, 'SSL');
			$this->data['text_faq'] = $this->language->get('text_faq');
			$this->data['action'] = $this->url->link('catalog/faq/save', 'token=' . $this->session->data['token'] . $url, 'SSL');
			$this->template = 'catalog/faq_form.tpl';
			$this->children = array(
				'common/header',
				'common/footer'
			);
			$this->response->setOutput($this->render());
		}


		public function save() {
			$this->load->model('catalog/faq');
			$transporters = $this->model_catalog_faq->saveFaq($this->request->post);
    	$this->getFaq();
		}
	}
?>
