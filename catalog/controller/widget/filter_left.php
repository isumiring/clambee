<?php

class ControllerWidgetFilterLeft extends Controller {

    public function index() {
        if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
            $server = $this->config->get('config_ssl');
        } else {
            $server = $this->config->get('config_url');
        }
        $this->data['brand_title'] = 'Brand';
        $this->data['category_title'] = 'Category';
        $this->data['base'] = $server;
        $this->data['server_base'] = $server;
        $this->load->model('catalog/category');
        $this->load->model('catalog/manufacturer');

        $this->data['categories'] = array();

        $categories = $this->model_catalog_category->getCategories(0);

        foreach ($categories as $category) {
            if ($category['top']) {
                $this->data['categories'][] = array(
                    'name' => $category['name'],
                    'id' => $category['category_id'],
                    'image' => $category['image'],
                    'column' => $category['column'] ? $category['column'] : 1,
                    'href' => $this->url->link('product/category', 'path=' . $category['category_id'])
                );
            }
        }

        $this->data['manufacturers'] = array();

        $manufacturers = $this->model_catalog_manufacturer->getManufacturers();

        foreach ($manufacturers as $manufacturer) {
            $this->data['manufacturers'][] = array(
                'name' => $manufacturer['name'],
                'id' => $manufacturer['manufacturer_id'],
                'image' => $manufacturer['image'],
                'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $manufacturer['manufacturer_id'])
            );
        }

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/widget/filter_left.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/widget/filter_left.tpl';
        } else {
            $this->template = 'default/template/common/column_left.tpl';
        }

        $this->render();
    }

}
