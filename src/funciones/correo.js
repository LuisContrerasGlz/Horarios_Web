const correoInput = document.getElementById('correo_electronico');
const correoError = document.getElementById('correoError');
const correoPattern = /^[A-Za-z0-9._%+-]+@(gmail\.com|yahoo\.com|outlook\.com)$/; // Patrón de correos válidos

correoInput.addEventListener('input', function () {
    const correoValue = correoInput.value.trim();
    if (!correoPattern.test(correoValue) || correoValue.length < 6 || correoValue.length > 50) {
        correoError.textContent = 'Ingrese un correo válido (ej. usuario@gmail.com) de 6 a 50 caracteres';
    } else {
        correoError.textContent = '';
    }
});

function correoValid() {
    const correoInput = document.getElementById('correo_electronico');
    const correoError = document.getElementById('correoError');
    const correoValue = correoInput.value.trim();

    if (!correoPattern.test(correoValue) || correoValue.length <6 || correoValue.length > 50) {
        correoError.textContent = 'Error al mandar: Ingrese un correo válido (ej. usuario@gmail.com) de 6 a 50 caracteres';
        return false;
    } else {
        correoError.textContent = '';
        return true;
    }
}
