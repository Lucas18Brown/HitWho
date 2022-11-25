import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["navbar"]
  connect() {
    console.log("Hello from navbar")
  }

  background() {
    // if (window.scrollY >= (window.innerHeight - 150)) {
    //   this.element.setAttribute('style', 'background-color: black;')
    // } else  {
    //   this.element.removeAttribute('style')
    // }

    // if (window.scrollY > 554) {
    //   this.navbarTarget.setAttribute('style', 'background-color: black;')
    // }
  }

  filterWindow() {
    // this.navbarTarget.setAttribute('style', 'background-color: black;')
  }

}
