document.addEventListener('DOMContentLoaded', () => {
  const addButton = document.getElementById('add-ingredient');
  const ingredientsContainer = document.getElementById('ingredients-container');

  if (!addButton || !ingredientsContainer) {
    console.error("Elements not found. Make sure 'add-ingredient' and 'ingredients-container' exist in the DOM.");
    return;
  }

  let ingredientCount = 1;

  addButton.addEventListener('click', (event) => {
    event.preventDefault();

    ingredientCount++;

    const newField = document.createElement('div');
    newField.className = 'mb-3';
    newField.innerHTML = `
      <input type="text" name="ingredients[]" class="form-control form-control-lg" placeholder="Ex: Lemon juice">
      <button type="button" class="btn btn-danger mt-2 remove-ingredient">Remove</button>
    `;

    ingredientsContainer.appendChild(newField);

    newField.querySelector('.remove-ingredient').addEventListener('click', () => {
      ingredientsContainer.removeChild(newField);
    });
  });
});