import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  initialize() {}
  connect() {}
  toggleForm(e) {
    console.log("Edit button clicked"); 
    e.preventDefault();
    e.stopPropagation();
    const formID = e.params["form"];
    const commentBodyID = e.params["body"];
    const form = document.getElementById(formID);
    form.classList.toggle("d-none");
    form.classList.toggle("mt-5");
    const commentBody = document.getElementById(commentBodyID);
    commentBody.classList.toggle("d-none");
  }
}
