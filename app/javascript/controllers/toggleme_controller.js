import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["togglemebaby"];

  toggle() {
    console.log("hallla");
    this.togglemebabyTarget.classList.toggle("hidden");
  }
}
