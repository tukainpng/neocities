if (screen.width >= 600) {
  document.getElementById('about').style.display = "inline"
}

function showPosts() {
  document.getElementById('main').style.display = "inline"
  document.getElementById('about').style.display = "none"
  document.getElementById('blog').style.color = "var(--color-purple)"
  document.getElementById('sobre').style.color = "var(--color-green)"
}

function showAbout() {
  document.getElementById('main').style.display = "none"
  document.getElementById('about').style.display = "inline"
  document.getElementById('blog').style.color = "var(--color-green)"
  document.getElementById('sobre').style.color = "var(--color-purple)"
}

