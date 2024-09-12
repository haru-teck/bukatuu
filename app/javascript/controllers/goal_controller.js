import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="goal"
export default class extends Controller {
  static targets = ["bar", "input"]

  connect() {
    this.updateBar()
  }

  updateBar() {
    const value = this.inputTarget.value
    this.barTarget.style.width = `${value}%`
  }
}
