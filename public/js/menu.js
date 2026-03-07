const btn = document.getElementById('menuBtn');
const drawer = document.getElementById('navDrawer');
const overlay = document.getElementById('overlay');

function openMenu() {
  btn.classList.add('open');
  drawer.classList.add('open');
  overlay.classList.add('open');
  btn.setAttribute('aria-expanded', 'true');
  drawer.setAttribute('aria-hidden', 'false');
}
function closeMenu() {
  btn.classList.remove('open');
  drawer.classList.remove('open');
  overlay.classList.remove('open');
  btn.setAttribute('aria-expanded', 'false');
  drawer.setAttribute('aria-hidden', 'true');
}

btn.addEventListener('click', () => drawer.classList.contains('open') ? closeMenu() : openMenu());
overlay.addEventListener('click', closeMenu);
