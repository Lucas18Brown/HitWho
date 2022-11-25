import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["navbar"]
  connect() {
    console.log("Hello from navbar")
    console.log(window.scrollY);
  }

  scroll(){
    console.log("HIT");
    window.scrollTo(0, 800)

  }
}
