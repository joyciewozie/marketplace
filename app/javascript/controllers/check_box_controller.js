import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="check-box"
export default class extends Controller {
  static targets = ["status-box"]

  check () {
    this.element.innerText = "Accepted"
    this.element.setAttribute("disabled", "")

  }

  connect() {
    console.log(targets)
  }
}
