<?php
	class ControllerInformationFaq extends Controller {
		
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
       		'text'      => $this->language->get('text_faq'),
			'href'      => $this->url->link('catalog/transporter', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);

			$faqs = $this->model_catalog_faq->getFaq();
			
			$this->data['faqs'] = array();
		
			foreach ($faqs as $faq) {
				$this->data['faqs'][] = array(
					'faq_subject' => $faq['faq_title'],
					'faq_description' => $faq['faq_description'],
					'faq_id' => $faq['id']
				);
			}
			
			$this->data['text_faq'] = $this->language->get('text_faq');
			$this->template = 'default/template/information/faq.tpl';
			$this->children = array(
				'common/header',
				'common/footer'
			);
			$this->response->setOutput($this->render());
		}
		
}

?>
