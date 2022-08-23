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
    const editButtonId = e.params["edit"];

    const form = document.getElementById(formID);
    const commentBody = document.getElementById(commentBodyID);
    const editButton = document.getElementById(editButtonId);

    form.classList.toggle("d-none");
    form.classList.toggle("mt-5");
    commentBody.classList.toggle("d-none");
    this.toggleEditButton(editButton);
  }

  toggleEditButton(editButton) {
    if (editButton.innerText === "Edit") {
      editButton.innerText = "Cancel";
      this.toggleEditButtonClass(editButton);
    } else {
      editButton.innerText = "Edit";
      this.toggleEditButtonClass(editButton);
    }
  }

  toggleEditButtonClass(editButton) {
    editButton.classList.toggle("btn-secondary");
    editButton.classList.toggle("btn-warning");    
  }
}
