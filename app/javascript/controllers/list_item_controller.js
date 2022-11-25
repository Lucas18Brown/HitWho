import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="list-item"
export default class extends Controller {
  static targets = ["container", "form"]

  connect() {
    // let scrolpos = localStorage.getItem('scrolpos');
    // window.scrollTo(0, scrolpos);
    console.log("Hello from list item");
    localStorage.setItem('scrolpos', window.scrollY);
  }

  disconnect() {
    console.log("Goodbye from list item");
  }

  search() {
    // this.formTarget.preventDefault()
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


  filterWindow(event) {
    console.log(window.scrollY);
    // if ('scrollRestoration' in window.history) {
    //    window.history.scrollRestoration = 'manual';
    // }
    // window.scrollTo(0, 476)
    // console.log(localStorage.getItem('scrolpos'));
    // event.preventDefault();
    // event.preventDefault();
    // window.location.href += '?query=car'
    // console.log(window.scrollY);
    // window.sessionStorage = position
    // console.log(window.sessionStorage.getItem('scrollPosition'));
    // window.location.reload();
    // event.target.scrollIntoView();
    // console.log(event.target);
    // event.target.scrollIntoView({block: "start"});
    // const boundArea = event.target.getBoundingClientRect();
    // window.scrollTo(0, boundArea - 70);
    // console.log("Im scrolling");

  }
}
