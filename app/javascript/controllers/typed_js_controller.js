import { Controller } from "@hotwired/stimulus"
// Don't forget to import the NPM package
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["WELCOME TO MY MOVIE LISTS"],
      typeSpeed: 75,
      loop: true,
      loopCount:Infinity,
      showCursor: false
    });
  }
}
