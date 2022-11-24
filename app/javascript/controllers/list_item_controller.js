import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="list-item"
export default class extends Controller {
  static targets = ["container", "form"]

  connect() {

  }

  search() {
    this.formTarget.preventDefault()
    console.log('i am working')
  }

  gunFilter() {
    console.log("Hello from Gun li target");
  }

  punchFilter() {
    console.log("Hello from Punch li target");
  }

  carFilter() {
    console.log("Hello from Car li target");
  }
}
