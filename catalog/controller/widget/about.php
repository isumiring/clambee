<?php

class ControllerWidgetAbout extends Controller {

    public function index() {
        $this->language->load('information/information');

        $this->load->model('catalog/information');

        $this->data['heading_title'] = $this->language->get('heading_title');
        
        $information_id = 4;

        $information_info = $this->model_catalog_information->getInformation($information_id);

        if ($information_info) {
            $this->data['heading_title'] = $information_info['title'];
            
            $this->data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/widget/about.tpl')) {
                $this->template = $this->config->get('config_template') . '/template/widget/about.tpl';
            } else {
                $this->template = 'default/template/information/information.tpl';
            }

            $this->render();
        }
    }

}
