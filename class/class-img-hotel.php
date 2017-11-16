<?php

	class ImagenHotel{

		private $cod_img;
		private $cod_hotel;
		private $url_img_hotel;

		public function __construct($cod_img,
					$cod_hotel,
					$url_img_hotel){
			$this->cod_img = $cod_img;
			$this->cod_hotel = $cod_hotel;
			$this->url_img_hotel = $url_img_hotel;
		}
		public function getCod_img(){
			return $this->cod_img;
		}
		public function setCod_img($cod_img){
			$this->cod_img = $cod_img;
		}
		public function getCod_hotel(){
			return $this->cod_hotel;
		}
		public function setCod_hotel($cod_hotel){
			$this->cod_hotel = $cod_hotel;
		}
		public function getUrl_img_hotel(){
			return $this->url_img_hotel;
		}
		public function setUrl_img_hotel($url_img_hotel){
			$this->url_img_hotel = $url_img_hotel;
		}
		public function toString(){
			return "Cod_img: " . $this->cod_img .
				" Cod_hotel: " . $this->cod_hotel .
				" Url_img_hotel: " . $this->url_img_hotel;
		}
	}
?>
