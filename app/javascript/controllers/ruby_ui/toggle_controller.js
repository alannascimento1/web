import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["button"];

  changeState() {
    const currentState = this.buttonTarget.dataset.state;
    const newState = currentState === "on" ? "off" : "on";

    this.buttonTarget.dataset.state = newState;

    this.buttonTarget.setAttribute("aria-pressed", newState === "on" ? "true" : "false");
  }
}
