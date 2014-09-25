<?php

class ControllerWidgetFeatured extends Controller {

    protected function index() {
        $this->language->load('module/featured');

        $this->data['heading_title'] = $this->language->get('heading_title');

        $this->data['button_cart'] = $this->language->get('button_cart');

        $this->load->model('catalog/product');

        $this->load->model('tool/image');

        $this->data['products'] = array();

        $products = explode(',', $this->config->get('featured_product'));

        $products = array_slice($products, 0, 8);

        foreach ($products as $product_id) {
            $product_info = $this->model_catalog_product->getProduct($product_id);

            if ($product_info) {
                if ($product_info['image']) {
                    $image = $this->model_tool_image->resize($product_info['image'], 270, 200);
                } else {
                    $image = false;
                }

                if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                    $price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
                } else {
                    $price = false;
                }

                if ((float) $product_info['special']) {
                    $special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
                } else {
                    $special = false;
                }

                if ($this->config->get('config_review_status')) {
                    $rating = $product_info['rating'];
                } else {
                    $rating = false;
                }

                $this->data['products'][] = array(
                    'product_id' => $product_info['product_id'],
                    'thumb' => $image,
                    'name' => $product_info['name'],
                    'price' => $price,
                    'special' => $special,
                    'rating' => $rating,
                    'reviews' => sprintf($this->language->get('text_reviews'), (int) $product_info['reviews']),
                    'href' => $this->url->link('product/product', 'product_id=' . $product_info['product_id'])
                );
            }
        }

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/widget/featured.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/widget/featured.tpl';
        } else {
            $this->template = 'default/template/module/featured.tpl';
        }

        $this->render();
    }

}
