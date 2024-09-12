import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bar-chart"
export default class extends Controller {
  static targets = ["input", "bar"]

  update() {
    const value = parseInt(this.inputTarget.value, 10) || 0;
    this.barTarget.style.width = `${value}%`;
  }
}