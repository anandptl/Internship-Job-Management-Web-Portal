// Switch between sign-in and sign-up forms
const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const container = document.querySelector(".container");

if (sign_up_btn && sign_in_btn) {
  sign_up_btn.addEventListener("click", () => {
    container.classList.add("sign-up-mode");
  });

  sign_in_btn.addEventListener("click", () => {
    container.classList.remove("sign-up-mode");
  });
}

// Toggle password visibility
document.querySelectorAll(".fa-eye").forEach((icon) => {
  const input = icon.previousElementSibling;

  icon.addEventListener("mouseenter", () => {
    input.type = "text";
    icon.classList.replace("fa-eye", "fa-eye-slash");
  });

  icon.addEventListener("mouseleave", () => {
    input.type = "password";
    icon.classList.replace("fa-eye-slash", "fa-eye");
  });
});
