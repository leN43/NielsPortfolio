// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery3
//= require popper
//= require bootstrap-sprockets
import "@hotwired/turbo-rails"
import "controllers"

const button = document.getElementById("lecv");

button.addEventListener("click", () => {
  const pdfPath = "/pdfs/test.pdf";
  window.open(pdfPath, "_blank");
});
