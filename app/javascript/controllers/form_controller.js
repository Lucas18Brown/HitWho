import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  connect() {
    console.log("Hello from form");
  }

  submit(event) {
    console.dir(this.element);
    console.dir(this.element.childNodes[1]);
    console.log(this.element.childNodes[1].children[0].value);
  }
}
