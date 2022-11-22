import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    console.log("Hello from navbar")
  }

  background(event) {
    if (window.scrollY >= (window.innerHeight - 150)) {
      this.element.setAttribute('style', 'background-color: black;')
    } else  {
      this.element.removeAttribute('style')
    }
  }
}
